import {execFileSync} from "node:child_process"
import {readFileSync, writeFileSync} from "node:fs"
import {dirname, resolve} from "node:path"
import {fileURLToPath} from "node:url"

const root = resolve(dirname(fileURLToPath(import.meta.url)), "..")
const kanjiDataPath = resolve(root, "src/KanjiData.res")
const dbPath = resolve(root, "../sakubi-reader-app/src-tauri/src/jitendex.comp.db")
const kanjidicPath = resolve(root, "../Houhou-SRS/Kanji.DatabaseMaker/Resources/kanjidic2.xml")

const source = readFileSync(kanjiDataPath, "utf8")
const itemKanjiPattern = /^\s+kanji: "([^"]+)",$/gm
const missing = []

let match
while ((match = itemKanjiPattern.exec(source)) !== null) {
  const blockStart = match.index
  const blockEnd = source.indexOf("\n  },", blockStart)
  const block = source.slice(blockStart, blockEnd)
  if (block.includes('reading: "Dictionary reading pending"')) {
    missing.push(match[1])
  }
}

const quoteSql = value => `'${value.replaceAll("'", "''")}'`
const values = missing.map(kanji => `(${quoteSql(kanji)})`).join(",")
const sql = `
WITH wanted(kanji) AS (VALUES ${values})
SELECT w.kanji, t2.term, count(*) AS score
FROM wanted w
JOIN terms t1 ON t1.term = w.kanji
JOIN terms t2 ON t2.definition = t1.definition
GROUP BY w.kanji, t2.term
ORDER BY w.kanji, score DESC, length(t2.term), t2.term;
`

const output = execFileSync("sqlite3", ["-separator", "\t", dbPath, sql], {
  encoding: "utf8",
  maxBuffer: 64 * 1024 * 1024,
})

const kanaOnly = /^[ぁ-ゖァ-ヺー]+$/
const hasHiragana = /[ぁ-ゖ]/
const readingsByKanji = new Map()

const addCandidate = (kanji, reading, score, priority) => {
  if (!kanaOnly.test(reading)) {
    return
  }
  const candidates = readingsByKanji.get(kanji) ?? []
  if (!candidates.some(candidate => candidate.reading === reading)) {
    candidates.push({reading, score, priority})
    readingsByKanji.set(kanji, candidates)
  }
}

for (const line of output.trim().split("\n")) {
  if (line.length === 0) {
    continue
  }
  const [kanji, term, rawScore] = line.split("\t")
  const score = Number(rawScore || 0)
  const bracketStart = term.indexOf("【")
  const bracketEnd = term.lastIndexOf("】")

  if (bracketStart > 0 && bracketEnd === term.length - 1) {
    const reading = term.slice(0, bracketStart)
    const written = term.slice(bracketStart + 1, bracketEnd)
    if (written === kanji) {
      addCandidate(kanji, reading, score, 0)
    }
  } else {
    addCandidate(kanji, term, score, 1)
  }
}

const readingForKanji = new Map()
for (const [kanji, candidates] of readingsByKanji.entries()) {
  const hasNativeKana = candidates.some(candidate => hasHiragana.test(candidate.reading))
  const filtered = hasNativeKana
    ? candidates.filter(candidate => hasHiragana.test(candidate.reading))
    : candidates
  const readings = filtered
    .sort((a, b) => {
      if (a.priority !== b.priority) {
        return a.priority - b.priority
      }
      if (a.score !== b.score) {
        return b.score - a.score
      }
      return a.reading.length - b.reading.length
    })
    .slice(0, 6)
    .map(candidate => candidate.reading)
  if (readings.length > 0) {
    readingForKanji.set(kanji, readings.join(" / "))
  }
}

const kanjidic = readFileSync(kanjidicPath, "utf8")
const kanjidicReadings = new Map()
for (const characterBlock of kanjidic.matchAll(/<character>[\s\S]*?<\/character>/g)) {
  const literal = characterBlock[0].match(/<literal>([^<]+)<\/literal>/)?.[1]
  if (!literal) {
    continue
  }
  const kun = []
  const on = []
  for (const readingMatch of characterBlock[0].matchAll(/<reading r_type="([^"]+)">([^<]+)<\/reading>/g)) {
    const type = readingMatch[1]
    const reading = readingMatch[2]
    if (type === "ja_kun") {
      kun.push(reading)
    } else if (type === "ja_on") {
      on.push(reading)
    }
  }
  const readings = [...kun.slice(0, 4), ...on.slice(0, 3)]
  if (readings.length > 0) {
    kanjidicReadings.set(literal, readings.join(" / "))
  }
}

let filled = 0
let jitendexFilled = 0
let kanjidicFilled = 0
let next = source.replace(
  /(\n  \{\n    kanji: "([^"]+)",[\s\S]*?\n  \},?)/g,
  (block, fullBlock, kanji) => {
    const jitendexReading = readingForKanji.get(kanji)
    const reading = jitendexReading ?? kanjidicReadings.get(kanji)
    if (!reading || !fullBlock.includes('reading: "Dictionary reading pending"')) {
      return fullBlock
    }
    filled += 1
    if (jitendexReading) {
      jitendexFilled += 1
    } else {
      kanjidicFilled += 1
    }
    return fullBlock
      .replace('reading: "Dictionary reading pending"', `reading: "${reading}"`)
      .replaceAll('reading: "reading pending"', `reading: "${reading}"`)
  },
)

writeFileSync(kanjiDataPath, next)

console.log(`Filled ${filled} of ${missing.length} pending kanji readings.`)
console.log(`Jitendex terms: ${jitendexFilled}`)
console.log(`KANJIDIC fallback: ${kanjidicFilled}`)
if (missing.length - filled > 0) {
  console.log(`Still pending: ${missing.length - filled}`)
}
