import childProcess from "child_process";
import fs from "fs";
import os from "os";
import path from "path";

const [inputPath, outputPath, ...flags] = process.argv.slice(2);

const flagValue = name => {
  const prefix = `--${name}=`;
  const flag = flags.find(value => value.startsWith(prefix));
  return flag ? flag.slice(prefix.length) : null;
};

const kanjiFieldName = flagValue("kanji-field") || "Kanji";
const storyFieldName = flagValue("story-field") || "Mnemonic";

if (!inputPath || !outputPath) {
  console.error(
    "Usage: node tools/convert-kanjidamage-stories.mjs INPUT.apkg OUTPUT.json [--kanji-field=Kanji] [--story-field=Mnemonic]",
  );
  process.exit(1);
}

const run = (command, args, options = {}) =>
  childProcess.execFileSync(command, args, {
    encoding: "utf8",
    maxBuffer: 128 * 1024 * 1024,
    stdio: ["ignore", "pipe", "pipe"],
    ...options,
  });

const tableNames = databasePath =>
  JSON.parse(run("sqlite3", ["-json", databasePath, "SELECT name FROM sqlite_master WHERE type = 'table'"])).map(
    row => row.name,
  );

const findCollectionEntry = archivePath => {
  const entries = run("unzip", ["-Z1", archivePath]).split("\n").filter(Boolean);
  return entries.find(entry => entry === "collection.anki21") || entries.find(entry => entry === "collection.anki2");
};

const databaseForInput = temporaryDirectory => {
  if (path.extname(inputPath).toLowerCase() !== ".apkg") return inputPath;

  const entry = findCollectionEntry(inputPath);
  if (!entry) throw new Error("The Anki package does not contain collection.anki21 or collection.anki2");

  run("unzip", ["-qq", inputPath, entry, "-d", temporaryDirectory]);
  return path.join(temporaryDirectory, entry);
};

const normalizeFieldName = value => value.trim().toLocaleLowerCase();

const findFieldIndex = (fields, requestedName) => {
  const index = fields.findIndex(field => normalizeFieldName(field.name) === normalizeFieldName(requestedName));
  if (index < 0) {
    throw new Error(`Could not find the \"${requestedName}\" field. Available fields: ${fields.map(field => field.name).join(", ")}`);
  }
  return index;
};

const decodeEntities = value =>
  value
    .replace(/&#x([0-9a-f]+);/gi, (_, code) => String.fromCodePoint(Number.parseInt(code, 16)))
    .replace(/&#(\d+);/g, (_, code) => String.fromCodePoint(Number.parseInt(code, 10)))
    .replace(/&(nbsp|amp|lt|gt|quot|apos);/gi, (_, name) => ({
      nbsp: " ",
      amp: "&",
      lt: "<",
      gt: ">",
      quot: '"',
      apos: "'",
    })[name.toLowerCase()]);

const plainText = value =>
  decodeEntities(
    value
      .replace(/<\s*br\s*\/?>/gi, "\n")
      .replace(/<\s*\/(?:div|p|li|tr|h[1-6])\s*>/gi, "\n")
      .replace(/<[^>]*>/g, ""),
  )
    .replace(/\r/g, "")
    .replace(/\n[ \t]*\n+/g, "\n\n")
    .trim();

const kanjiFromField = value => value.match(/\p{Script=Han}/u)?.[0] || null;

const legacyModelsAndNotes = databasePath => {
  const models = JSON.parse(run("sqlite3", ["-json", databasePath, "SELECT models FROM col LIMIT 1"]))[0]?.models;
  if (!models) throw new Error("The Anki collection does not contain note type metadata");
  return {
    modelsById: new Map(Object.entries(JSON.parse(models))),
    notes: JSON.parse(run("sqlite3", ["-json", databasePath, "SELECT id, mid, flds FROM notes"])),
  };
};

const temporaryDirectory = fs.mkdtempSync(path.join(os.tmpdir(), "kanji-learn-anki-"));

try {
  const databasePath = databaseForInput(temporaryDirectory);
  const tables = tableNames(databasePath);
  if (!tables.includes("col") || !tables.includes("notes")) {
    throw new Error("This converter currently supports classic Anki collections with col and notes tables");
  }

  const {modelsById, notes} = legacyModelsAndNotes(databasePath);
  const storiesByKanji = {};
  let matchedNotes = 0;

  for (const note of notes) {
    const model = modelsById.get(String(note.mid));
    if (!model?.flds) continue;

    let kanjiIndex;
    let storyIndex;
    try {
      kanjiIndex = findFieldIndex(model.flds, kanjiFieldName);
      storyIndex = findFieldIndex(model.flds, storyFieldName);
    } catch (_) {
      continue;
    }

    const fields = note.flds.split("\u001f");
    const kanji = kanjiFromField(plainText(fields[kanjiIndex] || ""));
    const text = plainText(fields[storyIndex] || "");
    if (!kanji || !text) continue;

    (storiesByKanji[kanji] ||= []).push({id: `anki-${note.id}`, text});
    matchedNotes += 1;
  }

  if (matchedNotes === 0) {
    throw new Error(
      `No stories found with fields \"${kanjiFieldName}\" and \"${storyFieldName}\". Use --kanji-field and --story-field to select the deck fields.`,
    );
  }

  const storyCount = Object.values(storiesByKanji).reduce((total, stories) => total + stories.length, 0);
  const payload = {
    format: "kanji-learn-story-collection",
    version: 1,
    id: "kanjidamage",
    collectionName: "KanjiDamage",
    attribution: "KanjiDamage Mnemonic field, imported locally by the user from the AnkiWeb shared deck.",
    license: {
      name: "Anki Shared Deck License",
      url: "https://ankiweb.net/account/terms",
    },
    sourceUrl: "https://ankiweb.net/shared/info/748570187",
    selection: `Imported ${storyCount} non-empty ${storyFieldName} fields from the ${kanjiFieldName} field.`,
    storiesByKanji,
    storyCount,
  };

  fs.mkdirSync(path.dirname(outputPath), {recursive: true});
  fs.writeFileSync(outputPath, JSON.stringify(payload));
  console.log(`Wrote ${storyCount} stories for ${Object.keys(storiesByKanji).length} kanji to ${outputPath}`);
} finally {
  fs.rmSync(temporaryDirectory, {recursive: true, force: true});
}
