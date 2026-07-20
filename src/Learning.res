open State
open Constants
open Runtime

type learnMode =
  | KanjiToKana
  | KanjiToMeaning
  | KanaToMeaning
  | MeaningToKanji
  | MeaningToKana

type termTone =
  | KanjiTone
  | KanaTone
  | MeaningTone

let modeLabel = mode =>
  switch mode {
  | KanjiToKana => "漢字・カナ"
  | KanjiToMeaning => "漢字・意味"
  | KanaToMeaning => "カナ・意味"
  | MeaningToKanji => "意味・漢字"
  | MeaningToKana => "意味・カナ"
  }

let learnModes = [KanjiToKana, KanjiToMeaning, KanaToMeaning, MeaningToKanji, MeaningToKana]

let readingIsPending = reading => reading == "Dictionary reading pending" || reading == "reading pending"

let displayReading: string => string = %raw(`reading =>
  String(reading || "").replace(/\./g, "")
`)

let modeNeedsReading = mode =>
  switch mode {
  | KanjiToKana | KanaToMeaning | MeaningToKana => true
  | KanjiToMeaning | MeaningToKanji => false
  }

let learnModesForItem = (item: KanjiData.item) =>
  if readingIsPending(item.reading) {
    [KanjiToMeaning, MeaningToKanji]
  } else {
    learnModes
  }

let validModeForItem = (mode, item: KanjiData.item) =>
  if readingIsPending(item.reading) && modeNeedsReading(mode) {
    KanjiToMeaning
  } else {
    mode
  }

let itemAt = index => {
  let length = Array.length(KanjiData.items)
  let normalizedIndex = Int.mod(index, length)
  KanjiData.items[normalizedIndex]->Option.getExn
}

let itemForKanji: string => KanjiData.item = %raw(`kanji =>
  KanjiData.items.find(item => item.kanji === kanji) || KanjiData.items[0]
`)

let indexForKanji: string => int = %raw(`kanji => {
  const index = KanjiData.items.findIndex(item => item.kanji === kanji);
  return index < 0 ? 0 : index;
}`)

let exampleAt = (item: KanjiData.item, index) => {
  let length = Array.length(item.examples)
  let normalizedIndex = Int.mod(index, length)
  item.examples[normalizedIndex]->Option.getExn
}

let fillHeightSince = startedAt => {
  let elapsed = nowMs() -. startedAt
  let activeRange = 100.0 -. waterBaselinePercent
  let percent =
    waterBaselinePercent +. elapsed /. (float_of_int(secondsPerQuestion) *. 1000.0) *. activeRange
  let clamped = if percent < waterBaselinePercent {
    waterBaselinePercent
  } else if percent > 100.0 {
    100.0
  } else {
    percent
  }
  Float.toString(clamped) ++ "%"
}

let srsKindLabel = kind =>
  switch kind {
  | "kanji_to_kana" => "Kanji -> kana"
  | "kanji_to_meaning" => "Kanji -> meaning"
  | "kana_to_meaning" => "Kana -> meaning"
  | "meaning_to_kanji" => "Meaning -> kanji"
  | "meaning_to_kana" => "Meaning -> kana"
  | _ => "Kanji -> meaning"
  }

let srsPromptLabel = kind =>
  switch kind {
  | "kana_to_meaning" => "Kana"
  | "meaning_to_kanji" | "meaning_to_kana" => "Meaning"
  | _ => "Kanji"
  }

let srsPromptTone = kind =>
  switch kind {
  | "kana_to_meaning" => KanaTone
  | "meaning_to_kanji" | "meaning_to_kana" => MeaningTone
  | _ => KanjiTone
  }

let srsAnswerLabel = kind =>
  switch kind {
  | "kanji_to_kana" | "meaning_to_kana" => "Kana"
  | "meaning_to_kanji" => "Kanji"
  | _ => "Meaning"
  }

let srsAnswerTone = kind =>
  switch kind {
  | "kanji_to_kana" | "meaning_to_kana" => KanaTone
  | "meaning_to_kanji" => KanjiTone
  | _ => MeaningTone
  }

let srsPromptValue = (kind, item: KanjiData.item) =>
  switch kind {
  | "kana_to_meaning" => displayReading(item.reading)
  | "meaning_to_kanji" | "meaning_to_kana" => item.keyword
  | _ => item.kanji
  }

let srsAnswerValue = (kind, item: KanjiData.item) =>
  switch kind {
  | "kanji_to_kana" | "meaning_to_kana" => displayReading(item.reading)
  | "meaning_to_kanji" => item.kanji
  | _ => item.keyword
  }

let srsOptionValue = (kind, item: KanjiData.item) => srsAnswerValue(kind, item)

let srsOptionsForCardWithSalt: (string, string, string) => array<string> = %raw(`(kind, kanji, salt) => {
  const seededRandom = seedText => {
    let seed = 2166136261;
    for (let i = 0; i < seedText.length; i++) {
      seed ^= seedText.charCodeAt(i);
      seed = Math.imul(seed, 16777619);
    }
    return () => {
      seed = Math.imul(seed ^ (seed >>> 15), 2246822507);
      seed = Math.imul(seed ^ (seed >>> 13), 3266489909);
      return ((seed ^= seed >>> 16) >>> 0) / 4294967296;
    };
  };
  const index = KanjiData.items.findIndex(item => item.kanji === kanji);
  const safeIndex = index < 0 ? 0 : index;
  const offsets = [0, 5, 11, 17, 29, 43, 67, 89];
  const valueFor = item => {
    switch (kind) {
      case "kanji_to_kana":
      case "meaning_to_kana":
        return String(item.reading || "").replace(/\./g, "");
      case "meaning_to_kanji":
        return item.kanji;
      default:
        return item.keyword;
    }
  };
  const seen = new Set();
  const choices = [];
  for (const offset of offsets) {
    const item = KanjiData.items[(safeIndex + offset) % KanjiData.items.length];
    const value = valueFor(item);
    if (!seen.has(value)) {
      seen.add(value);
      choices.push(value);
    }
    if (choices.length >= 4) break;
  }
  const random = seededRandom(kind + ":" + kanji + ":" + (salt || "first"));
  for (let i = choices.length - 1; i > 0; i--) {
    const j = Math.floor(random() * (i + 1));
    [choices[i], choices[j]] = [choices[j], choices[i]];
  }
  return choices;
}`)

let srsOptionsForCard = (kind, kanji) => srsOptionsForCardWithSalt(kind, kanji, "first")

let percentString = (part, total) =>
  if total <= 0 {
    "0%"
  } else {
    Int.toString(part * 100 / total) ++ "%"
  }

let clampedPercentStyle = (part, total) =>
  if total <= 0 {
    "0%"
  } else {
    let percent = part * 100 / total
    Int.toString(if percent > 100 {100} else {percent}) ++ "%"
  }

let shuffleItemsWithSeed: (array<KanjiData.item>, string) => array<KanjiData.item> = %raw(`(items, seedText) => {
  let seed = 2166136261;
  for (let i = 0; i < seedText.length; i++) {
    seed ^= seedText.charCodeAt(i);
    seed = Math.imul(seed, 16777619);
  }
  const random = () => {
    seed = Math.imul(seed ^ (seed >>> 15), 2246822507);
    seed = Math.imul(seed ^ (seed >>> 13), 3266489909);
    return ((seed ^= seed >>> 16) >>> 0) / 4294967296;
  };
  const shuffled = items.slice();
  for (let i = shuffled.length - 1; i > 0; i--) {
    const j = Math.floor(random() * (i + 1));
    [shuffled[i], shuffled[j]] = [shuffled[j], shuffled[i]];
  }
  return shuffled;
}`)

let optionsFor = index => {
  let answer = itemAt(index)
  shuffleItemsWithSeed([answer, itemAt(index + 5), itemAt(index + 11), itemAt(index + 17)], Int.toString(index))
}

let labelForScreen = screen =>
  switch screen {
  | Learn => "Learn"
  | Review => "Review"
  | QuickReview => "Quick Review"
  | Stats => "Stats"
  | Studied => "Studied"
  }

let screens = [Learn, Review, QuickReview]
