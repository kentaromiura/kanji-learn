import fs from "node:fs";
import path from "node:path";
import {fileURLToPath, pathToFileURL} from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const root = path.resolve(__dirname, "..");
const sourcePath = process.argv[2] ?? "/private/tmp/jlptmatome-kanji-levels.json";
const outputPath = path.join(root, "src", "KanjiStatsData.res");
const kanjiDataPath = path.join(root, "src", "KanjiData.res.mjs");

const source = JSON.parse(fs.readFileSync(sourcePath, "utf8"));
const kanjiData = await import(pathToFileURL(kanjiDataPath).href);
const appKanji = new Set(kanjiData.items.map(item => item.kanji));

const rows = [];
const seen = new Set();

for (const level of [5, 4, 3, 2, 1]) {
  for (const kanji of source[String(level)] ?? source[level] ?? []) {
    if (!appKanji.has(kanji) || seen.has(kanji)) {
      continue;
    }

    seen.add(kanji);
    rows.push({kanji, level});
  }
}

const formattedRows = rows
  .map(({kanji, level}) => `  {kanji: ${JSON.stringify(kanji)}, level: ${level}},`)
  .join("\n");

const file = fs.readFileSync(outputPath, "utf8");
const next = file.replace(
  /let jlptLevels = \[[\s\S]*?\]\n\nlet usageCounts = \[/,
  `let jlptLevels = [\n${formattedRows}\n]\n\nlet usageCounts = [`,
);

if (next === file) {
  throw new Error("Could not find jlptLevels block in KanjiStatsData.res");
}

fs.writeFileSync(outputPath, next);

const counts = rows.reduce((acc, row) => {
  acc[row.level] = (acc[row.level] ?? 0) + 1;
  return acc;
}, {});

console.log(
  `Updated JLPTMatome levels: N5 ${counts[5] ?? 0}, N4 ${counts[4] ?? 0}, N3 ${counts[3] ??
    0}, N2 ${counts[2] ?? 0}, N1 ${counts[1] ?? 0}`,
);
