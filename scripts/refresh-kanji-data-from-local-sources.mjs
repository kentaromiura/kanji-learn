import {readFileSync, writeFileSync} from "node:fs"
import {dirname, resolve} from "node:path"
import {fileURLToPath} from "node:url"

const root = resolve(dirname(fileURLToPath(import.meta.url)), "..")
const resources = resolve(root, "../Houhou-SRS/Kanji.DatabaseMaker/Resources")
const kanjiDataPath = resolve(root, "src/KanjiData.res")
const kanjidicPath = resolve(resources, "kanjidic2.xml")
const jmdictPath = resolve(resources, "JMdict.xml")
const wordUsagePath = resolve(resources, "WordUsage.txt")

const xmlUnescape = value =>
  value
    .replaceAll("&amp;", "&")
    .replaceAll("&lt;", "<")
    .replaceAll("&gt;", ">")
    .replaceAll("&quot;", "\"")
    .replaceAll("&apos;", "'")

const resEscape = value =>
  value
    .replaceAll("\\", "\\\\")
    .replaceAll("\"", "\\\"")
    .replaceAll("\n", " ")
    .trim()

const hiragana = /[ぁ-ゖ]/
const kanaOnly = /^[ぁ-ゖァ-ヺー]+$/
const kanjiRegex = /[\u3400-\u9fff]/

const source = readFileSync(kanjiDataPath, "utf8")
const kanjiOrder = [...source.matchAll(/^\s+kanji: "([^"]+)",$/gm)].map(match => match[1])
const wantedKanji = new Set(kanjiOrder)
const specialEntries = new Map([
  [
    "○",
    {
      keyword: "zero",
      reading: "まる",
      componentHint: "symbol entry",
      examples: [
        {word: "○", reading: "まる", meaning: "zero", score: 1, hasTargetAlone: true},
        {word: "丸", reading: "まる", meaning: "circle; round", score: 1, hasTargetAlone: false},
        {word: "円", reading: "まる", meaning: "circle; round", score: 1, hasTargetAlone: false},
      ],
    },
  ],
])

const wordUsage = new Map()
for (const rawLine of readFileSync(wordUsagePath, "utf8").replace(/^\uFEFF/, "").split("\n")) {
  const line = rawLine.trim()
  if (!line) {
    continue
  }
  const [rawCount, word, reading] = line.split("|")
  if (!word) {
    continue
  }
  const count = Number(rawCount || 0)
  wordUsage.set(`${word}|${reading || ""}`, count)
  const previous = wordUsage.get(word) || 0
  if (count > previous) {
    wordUsage.set(word, count)
  }
}

const kanjidic = readFileSync(kanjidicPath, "utf8")
const readingsByKanji = new Map()
const meaningsByKanji = new Map()
const radicalsByKanji = new Map()
for (const characterBlock of kanjidic.matchAll(/<character>[\s\S]*?<\/character>/g)) {
  const block = characterBlock[0]
  const literal = block.match(/<literal>([^<]+)<\/literal>/)?.[1]
  if (!literal || !wantedKanji.has(literal)) {
    continue
  }
  const kun = []
  const on = []
  for (const readingMatch of block.matchAll(/<reading r_type="([^"]+)">([^<]+)<\/reading>/g)) {
    const type = readingMatch[1]
    const reading = xmlUnescape(readingMatch[2])
    if (type === "ja_kun" && !kun.includes(reading)) {
      kun.push(reading)
    } else if (type === "ja_on" && !on.includes(reading)) {
      on.push(reading)
    }
  }
  const readings = [...kun.slice(0, 4), ...on.slice(0, 3)]
  if (readings.length > 0) {
    readingsByKanji.set(literal, readings.join(" / "))
  }
  const meanings = [...block.matchAll(/<meaning>([^<]+)<\/meaning>/g)]
    .map(match => xmlUnescape(match[1]))
    .filter(meaning => !/[{}]/.test(meaning) && !/\bradical\b/i.test(meaning))
  if (meanings.length > 0) {
    meaningsByKanji.set(literal, meanings.slice(0, 2).join("/"))
  }
  const radical = block.match(/<rad_value rad_type="classical">([^<]+)<\/rad_value>/)?.[1]
  if (radical) {
    radicalsByKanji.set(literal, `classical radical ${radical}`)
  }
}

const examplesByKanji = new Map(kanjiOrder.map(kanji => [kanji, []]))
const addExample = (kanji, example) => {
  const list = examplesByKanji.get(kanji)
  if (!list || list.some(item => item.word === example.word)) {
    return
  }
  list.push(example)
}

for (const [kanji, entry] of specialEntries.entries()) {
  examplesByKanji.set(kanji, [...entry.examples])
}

const jmdict = readFileSync(jmdictPath, "utf8")
for (const entryMatch of jmdict.matchAll(/<entry>[\s\S]*?<\/entry>/g)) {
  const entry = entryMatch[0]
  const kebs = [...entry.matchAll(/<keb>([^<]+)<\/keb>/g)].map(match => xmlUnescape(match[1]))
  if (kebs.length === 0) {
    continue
  }
  const rebs = [...entry.matchAll(/<reb>([^<]+)<\/reb>/g)].map(match => xmlUnescape(match[1]))
  const glosses = [...entry.matchAll(/<gloss(?: [^>]*)?>([^<]+)<\/gloss>/g)]
    .map(match => xmlUnescape(match[1]))
    .filter(gloss => !/[{}]/.test(gloss))
  if (rebs.length === 0 || glosses.length === 0) {
    continue
  }
  for (const word of kebs) {
    if (!kanjiRegex.test(word) || word.length > 6) {
      continue
    }
    const chars = Array.from(new Set(Array.from(word).filter(char => wantedKanji.has(char))))
    if (chars.length === 0) {
      continue
    }
    const reading = rebs.find(candidate => wordUsage.has(`${word}|${candidate}`)) ?? rebs[0]
    if (!reading || !kanaOnly.test(reading)) {
      continue
    }
    const meaning = glosses.slice(0, 2).join("; ")
    const score = wordUsage.get(`${word}|${reading}`) ?? wordUsage.get(word) ?? 0
    const hasTargetAlone = word.length === 1
    for (const kanji of chars) {
      addExample(kanji, {word, reading, meaning, score, hasTargetAlone})
    }
  }
}

const fallbackExamples = kanjiOrder.map(kanji => {
  const special = specialEntries.get(kanji)
  const reading = special?.reading ?? readingsByKanji.get(kanji) ?? "Dictionary reading pending"
  return {
    word: kanji,
    reading: reading.split(" / ")[0] ?? reading,
    meaning: special?.keyword ?? "kanji entry",
    score: 0,
    hasTargetAlone: true,
  }
})

const formatExamples = kanji => {
  const examples = examplesByKanji.get(kanji) ?? []
  const ranked = examples
    .sort((a, b) => {
      if (a.hasTargetAlone !== b.hasTargetAlone) {
        return a.hasTargetAlone ? 1 : -1
      }
      if (a.score !== b.score) {
        return b.score - a.score
      }
      return a.word.length - b.word.length
    })
    .slice(0, 3)
  while (ranked.length < 3) {
    ranked.push(fallbackExamples[kanjiOrder.indexOf(kanji)])
  }
  return ranked
    .map(
      item =>
        `      {word: "${resEscape(item.word)}", reading: "${resEscape(item.reading)}", meaning: "${resEscape(item.meaning)}"}`,
    )
    .join(",\n")
}

let refreshed = 0
let next = source.replace(
  /(\n  \{\n    kanji: "([^"]+)",[\s\S]*?\n  \},?)/g,
  (fullBlock, _block, kanji) => {
    const reading = readingsByKanji.get(kanji)
    const meaning = meaningsByKanji.get(kanji)
    const radical = radicalsByKanji.get(kanji)
    const special = specialEntries.get(kanji)
    let updated = fullBlock
    if (special?.keyword || meaning) {
      updated = updated.replace(/keyword: "[^"]*"/, `keyword: "${resEscape(special?.keyword ?? meaning)}"`)
    }
    if (special?.reading || reading) {
      updated = updated.replace(/reading: "[^"]*"/, `reading: "${resEscape(special?.reading ?? reading)}"`)
    }
    if (special?.componentHint || radical) {
      updated = updated.replace(/componentHint: "[^"]*"/, `componentHint: "${resEscape(special?.componentHint ?? radical)}"`)
    }
    updated = updated.replace(
      /examples: \[[\s\S]*?\n    \]/,
      `examples: [\n${formatExamples(kanji)}\n    ]`,
    )
    refreshed += 1
    return updated
  },
)

writeFileSync(kanjiDataPath, next)

const placeholderCount = (next.match(/\.\.\.|word using|in context/g) || []).length
console.log(`Refreshed ${refreshed} kanji from KANJIDIC2/JMdict/WordUsage.`)
console.log(`Remaining placeholder markers: ${placeholderCount}`)
