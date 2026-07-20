type reviewStats = {
  total: int,
  correct: int,
  wrong: int,
  last100Total: int,
  last100Correct: int,
  kanjiToKanaCorrect: int,
  kanjiToKanaWrong: int,
  kanjiToMeaningCorrect: int,
  kanjiToMeaningWrong: int,
  kanaToMeaningCorrect: int,
  kanaToMeaningWrong: int,
  meaningToKanjiCorrect: int,
  meaningToKanjiWrong: int,
  meaningToKanaCorrect: int,
  meaningToKanaWrong: int,
}

type reviewSettings = {
  requiredCorrectStreak: int,
  quickReviewKinds: array<string>,
}

type learnProgress = {
  lessonStart: int,
  learnOffset: int,
}

type srsCard = {
  id: string,
  kanji: string,
  kind: string,
  due: float,
  stability: float,
  difficulty: float,
  reps: int,
  lapses: int,
  state: string,
  correctStreak: int,
}

type srsDashboard = {
  dueCount: int,
  seenKanji: int,
  learningKanji: int,
  learnedKanji: int,
  masteredKanji: int,
  totalCards: int,
  dueCards: int,
  learningCards: int,
  reviewCards: int,
  learnedCards: int,
  kanjiToKanaDue: int,
  kanjiToMeaningDue: int,
  kanaToMeaningDue: int,
  meaningToKanjiDue: int,
  meaningToKanaDue: int,
}

type studiedKanji = {
  kanji: string,
  keyword: string,
  reading: string,
  index: int,
  status: string,
  learnedCards: int,
  totalCards: int,
  dueCards: int,
  reps: int,
  lapses: int,
  lastReview: float,
  lastReviewed: string,
}

type lessonScheduleItem = {
  kanji: string,
  keyword: string,
  dueLabel: string,
  fill: string,
}

type cardScheduleItem = {
  kind: string,
  label: string,
  dueLabel: string,
  fill: string,
  state: string,
}

type studyPreview = {
  kanji: string,
  keyword: string,
  index: int,
}

type chartBucket = {
  label: string,
  learned: int,
  total: int,
  percent: string,
  fill: string,
}

type coverageEstimate = {
  label: string,
  percent: string,
  fill: string,
}

type kanjiChartStats = {
  jlptBuckets: array<chartBucket>,
  coverageEstimates: array<coverageEstimate>,
}

let loadReviewSettings: unit => reviewSettings = %raw(`() => {
  const defaultQuickReviewKinds = ["kanji_to_kana", "kanji_to_meaning", "kana_to_meaning", "meaning_to_kanji", "meaning_to_kana"];
  const defaults = { requiredCorrectStreak: 2, quickReviewKinds: defaultQuickReviewKinds };
  try {
    const stored = JSON.parse(window.localStorage.getItem("kanji-learn-review-settings-v1") || "{}");
    const requiredCorrectStreak = Math.min(4, Math.max(1, Number(stored.requiredCorrectStreak || defaults.requiredCorrectStreak)));
    const storedKinds = Array.isArray(stored.quickReviewKinds) ? stored.quickReviewKinds : defaultQuickReviewKinds;
    const quickReviewKinds = storedKinds.filter(kind => defaultQuickReviewKinds.includes(kind));
    return { requiredCorrectStreak, quickReviewKinds: quickReviewKinds.length ? quickReviewKinds : defaultQuickReviewKinds };
  } catch (_) {
    return defaults;
  }
}`)

let saveReviewSettings: reviewSettings => unit = %raw(`settings => {
  const defaultQuickReviewKinds = ["kanji_to_kana", "kanji_to_meaning", "kana_to_meaning", "meaning_to_kanji", "meaning_to_kana"];
  const requiredCorrectStreak = Math.min(4, Math.max(1, Number(settings.requiredCorrectStreak || 2)));
  const storedKinds = Array.isArray(settings.quickReviewKinds) ? settings.quickReviewKinds : defaultQuickReviewKinds;
  const quickReviewKinds = storedKinds.filter(kind => defaultQuickReviewKinds.includes(kind));
  window.localStorage.setItem(
    "kanji-learn-review-settings-v1",
    JSON.stringify({ requiredCorrectStreak, quickReviewKinds: quickReviewKinds.length ? quickReviewKinds : defaultQuickReviewKinds })
  );
}`)

let loadLearnProgress: int => learnProgress = %raw(`batchSize => {
  const progressKey = "kanji-learn-learn-progress-v1";
  const cardsKey = "kanji-learn-srs-cards-v1";
  const total = KanjiData.items.length;
  const clampStart = value => Math.max(0, Math.min(total - 1, Number(value || 0)));
  const clampOffset = value => Math.max(0, Math.min(Math.max(0, Number(batchSize || 1) - 1), Number(value || 0)));
  try {
    const stored = JSON.parse(window.localStorage.getItem(progressKey) || "{}");
    if (Number.isFinite(Number(stored.lessonStart))) {
      return {
        lessonStart: clampStart(stored.lessonStart),
        learnOffset: clampOffset(stored.learnOffset)
      };
    }
  } catch (_) {}
  try {
    const cards = JSON.parse(window.localStorage.getItem(cardsKey) || "{}");
    const seen = new Set(Object.values(cards).map(card => card.kanji).filter(Boolean));
    return {
      lessonStart: clampStart(seen.size),
      learnOffset: 0
    };
  } catch (_) {
    return { lessonStart: 0, learnOffset: 0 };
  }
}`)

let saveLearnProgress: learnProgress => unit = %raw(`progress => {
  const key = "kanji-learn-learn-progress-v1";
  const total = KanjiData.items.length;
  const lessonStart = Math.max(0, Math.min(total - 1, Number(progress.lessonStart || 0)));
  const learnOffset = Math.max(0, Number(progress.learnOffset || 0));
  window.localStorage.setItem(key, JSON.stringify({ lessonStart, learnOffset }));
}`)

let lessonScheduleWithItems: (array<KanjiData.item>, int, int) => array<lessonScheduleItem> = %raw(`(items, start, count) => {
  const key = "kanji-learn-srs-cards-v1";
  const activeKinds = new Set(["kanji_to_kana", "kanji_to_meaning", "kana_to_meaning", "meaning_to_kanji", "meaning_to_kana"]);
  let cards = {};
  try {
    cards = JSON.parse(window.localStorage.getItem(key) || "{}");
  } catch (_) {}
  const now = Date.now();
  const minute = 60 * 1000;
  const hour = 60 * minute;
  const day = 24 * hour;
  const labelFor = due => {
    if (!due) return "after batch";
    const remaining = Number(due) - now;
    if (remaining <= minute) return "now";
    if (remaining < hour) return Math.ceil(remaining / minute) + "m";
    if (remaining < day) return Math.ceil(remaining / hour) + "h";
    return Math.ceil(remaining / day) + "d";
  };
  const fillFor = due => {
    if (!due) return "18%";
    const remaining = Math.max(0, Number(due) - now);
    const percent = 100 - Math.min(92, remaining / (14 * day) * 92);
    return Math.max(8, Math.round(percent)) + "%";
  };
  return items.slice(start, start + count).map(item => {
    const siblings = Object.values(cards).filter(card => card.kanji === item.kanji && activeKinds.has(card.kind));
    const nextDue = siblings.reduce((soonest, card) => {
      const due = Number(card.due || 0);
      if (!due) return soonest;
      return soonest === 0 ? due : Math.min(soonest, due);
    }, 0);
    return {
      kanji: item.kanji,
      keyword: item.keyword,
      dueLabel: labelFor(nextDue),
      fill: fillFor(nextDue)
    };
  });
}`)

let lessonSchedule = (start, count) => lessonScheduleWithItems(KanjiData.items, start, count)

let nextStudyKanjiWithItems: (array<KanjiData.item>, int, int) => array<studyPreview> = %raw(`(items, start, count) => {
  const total = items.length;
  if (!total) return [];
  const safeStart = Math.max(0, Math.min(total - 1, Number(start || 0)));
  const safeCount = Math.max(0, Number(count || 0));
  return Array.from({ length: safeCount }, (_, offset) => {
    const index = Math.min(total - 1, safeStart + offset);
    const item = items[index];
    return {
      kanji: item.kanji,
      keyword: item.keyword,
      index: index + 1
    };
  });
}`)

let nextStudyKanji = (start, count) => nextStudyKanjiWithItems(KanjiData.items, start, count)

let loadKanjiChartStatsWithData: (
  array<KanjiData.item>,
  array<KanjiStatsData.jlptLevel>,
  array<KanjiStatsData.usageCount>,
  array<KanjiFrequencyData.corpusUsage>,
) => kanjiChartStats = %raw(`(items, jlptLevels, houhouUsageCounts, corpora) => {
  const key = "kanji-learn-srs-cards-v1";
  const requiredCorrectStreak = () => {
    try {
      const stored = JSON.parse(window.localStorage.getItem("kanji-learn-review-settings-v1") || "{}");
      return Math.min(4, Math.max(1, Number(stored.requiredCorrectStreak || 2)));
    } catch (_) {
      return 2;
    }
  };
  let cards = {};
  try {
    cards = JSON.parse(window.localStorage.getItem(key) || "{}");
  } catch (_) {}
  const byKanji = new Map();
  for (const card of Object.values(cards)) {
    const list = byKanji.get(card.kanji) || [];
    list.push(card);
    byKanji.set(card.kanji, list);
  }
  const cardLearned = card => Number(card.correctStreak || 0) >= requiredCorrectStreak() || Number(card.learnedAt || 0) > 0;
  const learnedKanji = new Set();
  for (const [kanji, list] of byKanji.entries()) {
    if (list.filter(cardLearned).length >= 2) learnedKanji.add(kanji);
  }
  const levelByKanji = new Map(jlptLevels.map(row => [row.kanji, Number(row.level || 0)]));
  const n5UpdatedKanji = "安一飲右雨駅円火花下何会外学間気九休魚金空月見言古五後午語校口行高国今左三山四子耳時七車社手週十出書女小少上食新人水生西川千先前足多大男中長天店電土東道読南二日入年買白八半百父分聞母北木本毎万名目友来立六話";
  for (const kanji of Array.from(n5UpdatedKanji)) {
    levelByKanji.set(kanji, 5);
  }
  const bucketOrder = [
    { label: "N5", level: 5, learned: 0, total: 0 },
    { label: "N4", level: 4, learned: 0, total: 0 },
    { label: "N3", level: 3, learned: 0, total: 0 },
    { label: "N2", level: 2, learned: 0, total: 0 },
    { label: "N1", level: 1, learned: 0, total: 0 },
    { label: "Other", level: 0, learned: 0, total: 0 }
  ];
  const bucketByLevel = new Map(bucketOrder.map(bucket => [bucket.level, bucket]));
  for (const item of items) {
    const bucket = bucketByLevel.get(levelByKanji.get(item.kanji) || 0) || bucketByLevel.get(0);
    bucket.total += 1;
    if (learnedKanji.has(item.kanji)) bucket.learned += 1;
  }
  const formatPercent = (part, total) => total > 0 ? Math.round(part * 100 / total) + "%" : "0%";
  const jlptBuckets = bucketOrder.map(bucket => {
    const percent = formatPercent(bucket.learned, bucket.total);
    return {
      label: bucket.label,
      learned: bucket.learned,
      total: bucket.total,
      percent,
      fill: percent
    };
  });
  const coverageFor = (label, usageCounts) => {
    let totalUsage = 0;
    let knownUsage = 0;
    for (const row of usageCounts || []) {
      const count = Number(row.count || 0);
      totalUsage += count;
      if (learnedKanji.has(row.kanji)) knownUsage += count;
    }
    const value = totalUsage > 0 ? knownUsage * 100 / totalUsage : 0;
    return {
      label,
      value,
      percent: (Math.round(value * 10) / 10).toFixed(1) + "%",
      fill: Math.max(0, Math.min(100, value)).toFixed(1) + "%"
    };
  };
  const coverageEstimates = (corpora || []).map(corpus => coverageFor(corpus.label, corpus.usageCounts));
  const topokanjiAverage = coverageEstimates.length > 0
    ? coverageEstimates.reduce((sum, item) => sum + item.value, 0) / coverageEstimates.length
    : 0;
  const houhouCoverage = coverageFor("Houhou", houhouUsageCounts);
  if (Math.abs(houhouCoverage.value - topokanjiAverage) >= 2) {
    coverageEstimates.push(houhouCoverage);
  }
  return {
    jlptBuckets,
    coverageEstimates: coverageEstimates.map(({label, percent, fill}) => ({label, percent, fill}))
  };
}`)

let loadKanjiChartStats = () =>
  loadKanjiChartStatsWithData(
    KanjiData.items,
    KanjiStatsData.jlptLevels,
    KanjiStatsData.usageCounts,
    KanjiFrequencyData.corpora,
  )

let cardScheduleForKanji: string => array<cardScheduleItem> = %raw(`kanji => {
  const key = "kanji-learn-srs-cards-v1";
  const kinds = ["kanji_to_kana", "kanji_to_meaning", "kana_to_meaning", "meaning_to_kanji", "meaning_to_kana"];
  const labels = {
    kanji_to_kana: "Kanji -> kana",
    kanji_to_meaning: "Kanji -> meaning",
    kana_to_meaning: "Kana -> meaning",
    meaning_to_kanji: "Meaning -> kanji",
    meaning_to_kana: "Meaning -> kana"
  };
  let cards = {};
  try {
    cards = JSON.parse(window.localStorage.getItem(key) || "{}");
  } catch (_) {}
  const now = Date.now();
  const minute = 60 * 1000;
  const hour = 60 * minute;
  const day = 24 * hour;
  const dueLabel = due => {
    if (!due) return "not scheduled";
    const remaining = Number(due) - now;
    if (remaining <= 0) return "now";
    if (remaining < hour) return "in " + Math.ceil(remaining / minute) + "m";
    if (remaining < day) return "in " + Math.ceil(remaining / hour) + "h";
    return "in " + Math.ceil(remaining / day) + "d";
  };
  const fillFor = due => {
    if (!due) return "8%";
    const remaining = Math.max(0, Number(due) - now);
    const percent = 100 - Math.min(92, remaining / (30 * day) * 92);
    return Math.max(8, Math.round(percent)) + "%";
  };
  return Object.values(cards)
    .filter(card => card.kanji === kanji && kinds.includes(card.kind))
    .sort((a, b) => {
      const aDue = Number(a.due || 0);
      const bDue = Number(b.due || 0);
      if (aDue !== bDue) return aDue - bDue;
      return kinds.indexOf(a.kind) - kinds.indexOf(b.kind);
    })
    .map(card => ({
      kind: card.kind,
      label: labels[card.kind] || card.kind,
      dueLabel: dueLabel(Number(card.due || 0)),
      fill: fillFor(Number(card.due || 0)),
      state: card.state || "new"
    }));
}`)

let exportUserData: unit => unit = %raw(`() => {
  const keys = [
    "kanji-learn-review-settings-v1",
    "kanji-learn-review-stats",
    "kanji-learn-srs-cards-v1",
    "kanji-learn-srs-review-log-v1",
    "kanji-learn-srs-answer-times-v1",
    "kanji-learn-learn-progress-v1"
  ];
  const localStorageData = {};
  for (const key of keys) {
    const value = window.localStorage.getItem(key);
    if (value != null) localStorageData[key] = value;
  }
  const payload = {
    app: "kanji-learn",
    version: 1,
    exportedAt: new Date().toISOString(),
    localStorage: localStorageData
  };
  const blob = new Blob([JSON.stringify(payload, null, 2)], { type: "application/json" });
  const url = URL.createObjectURL(blob);
  const anchor = document.createElement("a");
  const stamp = new Date().toISOString().slice(0, 10);
  anchor.href = url;
  anchor.download = "kanji-learn-backup-" + stamp + ".json";
  document.body.appendChild(anchor);
  anchor.click();
  anchor.remove();
  URL.revokeObjectURL(url);
}`)

let importUserData: (unit => unit) => unit = %raw(`onDone => {
  const keys = [
    "kanji-learn-review-settings-v1",
    "kanji-learn-review-stats",
    "kanji-learn-srs-cards-v1",
    "kanji-learn-srs-review-log-v1",
    "kanji-learn-srs-answer-times-v1",
    "kanji-learn-learn-progress-v1"
  ];
  const input = document.createElement("input");
  input.type = "file";
  input.accept = "application/json,.json";
  input.addEventListener("change", () => {
    const file = input.files && input.files[0];
    if (!file) return;
    const reader = new FileReader();
    reader.onload = () => {
      try {
        const parsed = JSON.parse(String(reader.result || "{}"));
        const source = parsed && parsed.localStorage ? parsed.localStorage : parsed;
        if (!source || typeof source !== "object") throw new Error("Invalid backup file");
        let imported = 0;
        for (const key of keys) {
          const value = source[key];
          if (typeof value === "string") {
            JSON.parse(value);
            window.localStorage.setItem(key, value);
            imported += 1;
          } else if (value != null && typeof value === "object") {
            window.localStorage.setItem(key, JSON.stringify(value));
            imported += 1;
          }
        }
        if (!imported) throw new Error("No Kanji Learn data found");
        if (typeof onDone === "function") onDone();
      } catch (error) {
        window.alert(error && error.message ? error.message : "Could not import Kanji Learn backup");
      }
    };
    reader.readAsText(file);
  });
  input.click();
}`)

let ratingForQuizAnswer: (string, string, bool, float) => int = %raw(`(id, kind, wasCorrect, elapsedMs) => {
  const key = "kanji-learn-srs-answer-times-v1";
  let data = {};
  try {
    data = JSON.parse(window.localStorage.getItem(key) || "{}");
  } catch (_) {}
  const bucketKey = kind || "kanji_to_meaning";
  const bucket = data[bucketKey] || { correctTimes: [], attempts: 0, errors: 0 };
  bucket.attempts = Number(bucket.attempts || 0) + 1;
  if (!wasCorrect) {
    bucket.errors = Number(bucket.errors || 0) + 1;
    data[bucketKey] = bucket;
    window.localStorage.setItem(key, JSON.stringify(data));
    return 1;
  }
  const times = Array.isArray(bucket.correctTimes) ? bucket.correctTimes : [];
  const average = times.length
    ? times.reduce((sum, value) => sum + Number(value || 0), 0) / times.length
    : 4200;
  const easyCeil = 2200;
  const hardFloor = 6500;
  let rating = 3;
  if (elapsedMs <= Math.min(average * 0.62, easyCeil)) {
    rating = 4;
  } else if (elapsedMs >= Math.max(average * 1.25, hardFloor)) {
    rating = 2;
  }
  times.push(Math.max(0, Math.round(elapsedMs)));
  bucket.correctTimes = times.slice(-100);
  data[bucketKey] = bucket;
  data[id] = {
    lastMs: Math.max(0, Math.round(elapsedMs)),
    lastCorrect: true,
    reviewedAt: Date.now()
  };
  window.localStorage.setItem(key, JSON.stringify(data));
  return rating;
}`)

let nextReviewQueueAfterAnswer: (array<srsCard>, int, srsCard, bool, bool, int) => array<srsCard> = %raw(`(cards, offset, card, isLearned, wasCorrect, rating) => {
  const remaining = cards.filter((_, index) => index !== offset);
  if (isLearned) return remaining;
  const next = remaining.concat(Object.assign({}, card, {
    reps: Number(card.reps || 0) + 1,
    lapses: wasCorrect ? Number(card.lapses || 0) : Number(card.lapses || 0) + 1,
    state: rating === 1 ? "learning" : "review",
    correctStreak: wasCorrect ? Number(card.correctStreak || 0) + 1 : 0
  }));
  if (next.length > 1 && next[0].kanji === card.kanji) {
    const swapIndex = next.findIndex((candidate, index) => index > 0 && candidate.kanji !== card.kanji);
    if (swapIndex > 0) {
      const [swap] = next.splice(swapIndex, 1);
      next.unshift(swap);
    }
  }
  return next;
}`)

let loadReviewStats: unit => reviewStats = %raw(`() => {
  const defaults = {
    total: 0,
    correct: 0,
    wrong: 0,
    last100Total: 0,
    last100Correct: 0,
    kanjiToKanaCorrect: 0,
    kanjiToKanaWrong: 0,
    kanjiToMeaningCorrect: 0,
    kanjiToMeaningWrong: 0,
    kanaToMeaningCorrect: 0,
    kanaToMeaningWrong: 0,
    meaningToKanjiCorrect: 0,
    meaningToKanjiWrong: 0,
    meaningToKanaCorrect: 0,
    meaningToKanaWrong: 0,
    history: []
  };
  try {
    const stored = JSON.parse(window.localStorage.getItem("kanji-learn-review-stats") || "{}");
    const stats = Object.assign({}, defaults, stored);
    const history = Array.isArray(stats.history) ? stats.history.slice(-100) : [];
    stats.last100Total = history.length;
    stats.last100Correct = history.filter(Boolean).length;
    return stats;
  } catch (_) {
    return defaults;
  }
}`)

let recordReviewEvent: (string, bool) => unit = %raw(`(kind, wasCorrect) => {
  const key = "kanji-learn-review-stats";
  const defaults = {
    total: 0,
    correct: 0,
    wrong: 0,
    kanjiToKanaCorrect: 0,
    kanjiToKanaWrong: 0,
    kanjiToMeaningCorrect: 0,
    kanjiToMeaningWrong: 0,
    kanaToMeaningCorrect: 0,
    kanaToMeaningWrong: 0,
    meaningToKanjiCorrect: 0,
    meaningToKanjiWrong: 0,
    meaningToKanaCorrect: 0,
    meaningToKanaWrong: 0,
    history: []
  };
  let stats = defaults;
  try {
    stats = Object.assign({}, defaults, JSON.parse(window.localStorage.getItem(key) || "{}"));
  } catch (_) {}
  stats.total += 1;
  if (wasCorrect) {
    stats.correct += 1;
  } else {
    stats.wrong += 1;
  }
  const fieldMap = {
    kanji_to_kana: ["kanjiToKanaCorrect", "kanjiToKanaWrong"],
    kanji_to_meaning: ["kanjiToMeaningCorrect", "kanjiToMeaningWrong"],
    kana_to_meaning: ["kanaToMeaningCorrect", "kanaToMeaningWrong"],
    meaning_to_kanji: ["meaningToKanjiCorrect", "meaningToKanjiWrong"],
    meaning_to_kana: ["meaningToKanaCorrect", "meaningToKanaWrong"]
  };
  const fields = fieldMap[kind] || fieldMap.kanji_to_meaning;
  stats[wasCorrect ? fields[0] : fields[1]] += 1;
  const history = Array.isArray(stats.history) ? stats.history : [];
  history.push(wasCorrect ? 1 : 0);
  stats.history = history.slice(-100);
  window.localStorage.setItem(key, JSON.stringify(stats));
}`)

let ensureSrsCardsForLessonWithItems: (array<KanjiData.item>, int, int) => unit = %raw(`(items, start, count) => {
  const key = "kanji-learn-srs-cards-v1";
  const kinds = ["kanji_to_kana", "kanji_to_meaning", "kana_to_meaning", "meaning_to_kanji", "meaning_to_kana"];
  let cards = {};
  try {
    cards = JSON.parse(window.localStorage.getItem(key) || "{}");
  } catch (_) {}
  const now = Date.now();
  for (let i = start; i < Math.min(start + count, items.length); i++) {
    const item = items[i];
    if (!item) continue;
    for (const kind of kinds) {
      const id = item.kanji + ":" + kind;
      if (!cards[id]) {
        cards[id] = {
          id,
          kanji: item.kanji,
          kind,
          due: now,
          stability: 0,
          difficulty: 5,
          reps: 0,
          lapses: 0,
          state: "new",
          correctStreak: 0
        };
      }
    }
  }
  window.localStorage.setItem(key, JSON.stringify(cards));
}`)

let ensureSrsCardsForLesson = (start, count) =>
  ensureSrsCardsForLessonWithItems(KanjiData.items, start, count)

let dueSrsCardsForLessonWithItems: (array<KanjiData.item>, int, int) => array<srsCard> = %raw(`(items, start, count) => {
  const key = "kanji-learn-srs-cards-v1";
  const kinds = ["kanji_to_kana", "kanji_to_meaning", "kana_to_meaning", "meaning_to_kanji", "meaning_to_kana"];
  const activeKinds = new Set(["kanji_to_meaning", "meaning_to_kanji"]);
  const shuffle = list => {
    const next = list.slice();
    for (let i = next.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [next[i], next[j]] = [next[j], next[i]];
    }
    return next;
  };
  const spreadByKanji = list => {
    const buckets = new Map();
    for (const card of shuffle(list)) {
      const bucket = buckets.get(card.kanji) || [];
      bucket.push(card);
      buckets.set(card.kanji, bucket);
    }
    const result = [];
    let previousKanji = null;
    while (buckets.size) {
      const candidates = Array.from(buckets.entries())
        .filter(([kanji]) => kanji !== previousKanji || buckets.size === 1)
        .sort((a, b) => b[1].length - a[1].length || Math.random() - 0.5);
      const [kanji, bucket] = candidates[0];
      result.push(bucket.shift());
      if (!bucket.length) buckets.delete(kanji);
      previousKanji = kanji;
    }
    return result;
  };
  let cards = {};
  try {
    cards = JSON.parse(window.localStorage.getItem(key) || "{}");
  } catch (_) {}
  const kanji = new Set(items.slice(start, start + count).map(item => item.kanji));
  const now = Date.now();
  const lessonCards = Object.values(cards).filter(card => kanji.has(card.kanji) && activeKinds.has(card.kind));
  const due = lessonCards.filter(card => card.due <= now);
  const fallback = lessonCards;
  const ordered = (due.length ? due : fallback).sort((a, b) => {
    if (a.due !== b.due) return a.due - b.due;
    const ak = kinds.indexOf(a.kind);
    const bk = kinds.indexOf(b.kind);
    if (ak !== bk) return ak - bk;
    return a.kanji.localeCompare(b.kanji);
  });
  return spreadByKanji(ordered);
}`)

let dueSrsCardsForLesson = (start, count) =>
  dueSrsCardsForLessonWithItems(KanjiData.items, start, count)

let dueSrsCardsWithItems: array<KanjiData.item> => array<srsCard> = %raw(`items => {
  const key = "kanji-learn-srs-cards-v1";
  const activeKinds = new Set(["kanji_to_kana", "kanji_to_meaning", "kana_to_meaning", "meaning_to_kanji", "meaning_to_kana"]);
  const shuffle = list => {
    const next = list.slice();
    for (let i = next.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [next[i], next[j]] = [next[j], next[i]];
    }
    return next;
  };
  const spreadByKanji = list => {
    const buckets = new Map();
    for (const card of shuffle(list)) {
      const bucket = buckets.get(card.kanji) || [];
      bucket.push(card);
      buckets.set(card.kanji, bucket);
    }
    const result = [];
    let previousKanji = null;
    while (buckets.size) {
      const candidates = Array.from(buckets.entries())
        .filter(([kanji]) => kanji !== previousKanji || buckets.size === 1)
        .sort((a, b) => b[1].length - a[1].length || Math.random() - 0.5);
      const [kanji, bucket] = candidates[0];
      result.push(bucket.shift());
      if (!bucket.length) buckets.delete(kanji);
      previousKanji = kanji;
    }
    return result;
  };
  const requiredCorrectStreak = () => {
    try {
      const stored = JSON.parse(window.localStorage.getItem("kanji-learn-review-settings-v1") || "{}");
      return Math.min(4, Math.max(1, Number(stored.requiredCorrectStreak || 2)));
    } catch (_) {
      return 2;
    }
  };
  let cards = {};
  try {
    cards = JSON.parse(window.localStorage.getItem(key) || "{}");
  } catch (_) {}
  const now = Date.now();
  const rank = new Map(items.map((item, index) => [item.kanji, index]));
  const byKanji = new Map();
  for (const card of Object.values(cards)) {
    const list = byKanji.get(card.kanji) || [];
    list.push(card);
    byKanji.set(card.kanji, list);
  }
  const cardLearned = card => Number(card.correctStreak || 0) >= requiredCorrectStreak() || Number(card.learnedAt || 0) > 0;
  const kanjiCoreLearned = kanji => {
    const list = byKanji.get(kanji) || [];
    return list.filter(card => cardLearned(card)).length >= 2;
  };
  const due = Object.values(cards)
    .filter(card =>
      rank.has(card.kanji) &&
      activeKinds.has(card.kind) &&
      kanjiCoreLearned(card.kanji) &&
      Number(card.due || 0) <= now
    )
    .sort((a, b) => {
      if (Number(a.due || 0) !== Number(b.due || 0)) return Number(a.due || 0) - Number(b.due || 0);
      return rank.get(a.kanji) - rank.get(b.kanji);
    });
  return spreadByKanji(due);
}`)

let dueSrsCards = () => dueSrsCardsWithItems(KanjiData.items)

let dueSrsCount = () => Array.length(dueSrsCards())

let quickReviewCardsForLearnedWithItems: (array<KanjiData.item>, int, array<string>) => array<srsCard> = %raw(`(items, count, enabledKinds) => {
  const key = "kanji-learn-srs-cards-v1";
  const kinds = ["kanji_to_kana", "kanji_to_meaning", "kana_to_meaning", "meaning_to_kanji", "meaning_to_kana"];
  const selectedKinds = Array.isArray(enabledKinds) && enabledKinds.length
    ? enabledKinds.filter(kind => kinds.includes(kind))
    : kinds;
  const activeKinds = new Set(selectedKinds.length ? selectedKinds : kinds);
  const prioritySort = rank => (a, b) => {
    const aLapses = Number(a.lapses || 0);
    const bLapses = Number(b.lapses || 0);
    if (aLapses !== bLapses) {
      return bLapses - aLapses;
    }
    const aLastReview = Number(a.lastReview || 0);
    const bLastReview = Number(b.lastReview || 0);
    if (aLastReview !== bLastReview) {
      return aLastReview - bLastReview;
    }
    return rank.get(a.kanji) - rank.get(b.kanji);
  };
  const alternateKinds = (cards, rank) => {
    const buckets = new Map();
    for (const card of cards) {
      const bucket = buckets.get(card.kind) || [];
      bucket.push(card);
      buckets.set(card.kind, bucket);
    }
    const result = [];
    let previousKind = null;
    while (result.length < cards.length && buckets.size) {
      const availableKinds = kinds.filter(kind => activeKinds.has(kind) && buckets.has(kind));
      const candidates = availableKinds
        .filter(kind => kind !== previousKind || availableKinds.length === 1)
        .sort((a, b) => prioritySort(rank)(buckets.get(a)[0], buckets.get(b)[0]));
      const kind = candidates[0];
      const bucket = buckets.get(kind);
      result.push(bucket.shift());
      if (!bucket.length) buckets.delete(kind);
      previousKind = kind;
    }
    return result;
  };
  const requiredCorrectStreak = () => {
    try {
      const stored = JSON.parse(window.localStorage.getItem("kanji-learn-review-settings-v1") || "{}");
      return Math.min(4, Math.max(1, Number(stored.requiredCorrectStreak || 2)));
    } catch (_) {
      return 2;
    }
  };
  let cards = {};
  try {
    cards = JSON.parse(window.localStorage.getItem(key) || "{}");
  } catch (_) {}
  const limit = Math.max(0, Math.min(count, items.length));
  const rank = new Map(items.map((item, index) => [item.kanji, index]));
  const byKanji = new Map();
  for (const card of Object.values(cards)) {
    const list = byKanji.get(card.kanji) || [];
    list.push(card);
    byKanji.set(card.kanji, list);
  }
  const cardLearned = card => Number(card.correctStreak || 0) >= requiredCorrectStreak() || Number(card.learnedAt || 0) > 0;
  const kanjiCoreLearned = kanji => {
    const list = byKanji.get(kanji) || [];
    return list.filter(card => cardLearned(card)).length >= 2;
  };
  const batch = Object.values(cards)
    .filter(card =>
      rank.has(card.kanji) &&
      activeKinds.has(card.kind) &&
      kanjiCoreLearned(card.kanji)
    )
    .sort(prioritySort(rank))
    .slice(0, limit);
  return alternateKinds(batch, rank);
}`)

let quickReviewCardsForLearned = (count, enabledKinds) => {
  quickReviewCardsForLearnedWithItems(KanjiData.items, count, enabledKinds)
}

let gradeSrsCard: (string, int) => unit = %raw(`(id, rating) => {
  const key = "kanji-learn-srs-cards-v1";
  const logKey = "kanji-learn-srs-review-log-v1";
  const requiredCorrectStreak = () => {
    try {
      const stored = JSON.parse(window.localStorage.getItem("kanji-learn-review-settings-v1") || "{}");
      return Math.min(4, Math.max(1, Number(stored.requiredCorrectStreak || 2)));
    } catch (_) {
      return 2;
    }
  };
  const w = [
    // FSRS-7 dual-trace default parameters from open-spaced-repetition/fsrs-rs PR #426.
    0.1104, 2.2395, 3.9221, 11.7841,
    6.1686, 0.6457, 3.6807,
    1.9795, 0.0, 1.3826, 0.7024, 0.5999, 0.8146, 0.6398, 1.0,
    1.3207, 0.6707, 3.8668, 0.4416, 0.0934, 1.8631, 0.6162, 1.0869,
    0.1567, 0.0801, 0.2421, 0.9464, 0.1433, 0.7145, 0.0, 0.5667, 0.3734, 0.5333, 0.3048
  ];
  const requestRetention = 0.9;
  const day = 24 * 60 * 60 * 1000;
  const sMin = 0.001;
  const sMax = 36500;
  const clamp = (value, min, max) => Math.min(max, Math.max(min, value));
  const initD = grade => w[4] - Math.exp(w[5] * (grade - 1)) + 1;
  const meanReversion = (init, current) => 0.01 * init + 0.99 * current;
  const linearDamping = (deltaD, oldD) => deltaD * (10 - oldD) / 9;
  const nextD = (oldD, grade, retrievability) => {
    const baseDelta = -w[6] * (grade - 3);
    const deltaD = grade === 1 ? baseDelta * (retrievability + 0.1) : baseDelta;
    return clamp(meanReversion(initD(4), oldD + linearDamping(deltaD, oldD)), 1, 10);
  };
  const fastRecall = (elapsedDays, stabilityFast) => {
    const t = Math.max(0, elapsedDays);
    const sFast = clamp(stabilityFast, sMin, sMax);
    const decay1Mag = clamp(w[23] * Math.pow(sFast, w[33] - 0.3), 0.01, 0.95);
    const decay1 = -decay1Mag;
    const factor1 = Math.exp(Math.min(Math.log(w[25]) / decay1, 60)) - 1;
    return Math.pow(1 + factor1 * (t / sFast), decay1);
  };
  const forgettingCurve = (elapsedDays, stability, stabilityFast, difficulty) => {
    const t = Math.max(0, elapsedDays);
    const s = Math.max(sMin, stability);
    const sFast = Math.max(sMin, stabilityFast);
    const d = clamp(difficulty, 1, 10);
    const decay1Mag = clamp(w[23] * Math.pow(sFast, w[33] - 0.3), 0.01, 0.95);
    const decay1 = -decay1Mag;
    const factor1 = Math.exp(Math.min(Math.log(w[25]) / decay1, 60)) - 1;
    const r1 = Math.pow(1 + factor1 * (t / sFast), decay1);
    const decay2 = -clamp(w[24], 0.01, 0.95);
    const factor2 = Math.pow(w[26], 1 / decay2) - 1;
    const dTimescale = Math.exp((d - 5) * (w[32] - 0.3));
    const r2 = Math.pow(1 + factor2 * dTimescale * (t / s), decay2);
    const weight1 = w[27] * Math.pow(sFast, -w[29]);
    const weight2 = w[28] * Math.pow(s, w[30]) * Math.exp((d - 5) * (w[31] - 0.5));
    return clamp(((weight1 * r1 + weight2 * r2) / Math.max(1e-9, weight1 + weight2)) * (1 - 2e-5) + 1e-5, 0.0001, 0.9999);
  };
  const stabilityPair = (oldS, oldD, retrievability, grade, baseIndex) => {
    const hardPenalty = grade === 2 ? w[baseIndex + 6] : 1;
    const easyBonus = grade === 4 ? w[baseIndex + 7] : 1;
    const fail = (
      w[baseIndex + 3] *
      (Math.pow(oldS + 1, w[baseIndex + 4]) - 1) *
      Math.exp((1 - retrievability) * w[baseIndex + 5])
    );
    const pls = Math.min(oldS, fail);
    const sinc = (
      1 +
      Math.exp(w[baseIndex] - 1.5) *
      (11 - oldD) *
      Math.pow(oldS, -w[baseIndex + 1]) *
      (Math.exp((1 - retrievability) * w[baseIndex + 2]) - 1) *
      hardPenalty *
      easyBonus
    );
    return clamp(grade > 1 ? Math.max(pls, oldS * sinc) : pls, sMin, sMax);
  };
  const intervalFor = (stability, stabilityFast, difficulty) => {
    let lo = 0;
    let hi = Math.max(stability, stabilityFast, 1);
    while (forgettingCurve(hi, stability, stabilityFast, difficulty) > requestRetention && hi < sMax) {
      hi = Math.min(hi * 2, sMax);
    }
    for (let i = 0; i < 50; i++) {
      const mid = (lo + hi) / 2;
      if (forgettingCurve(mid, stability, stabilityFast, difficulty) > requestRetention) {
        lo = mid;
      } else {
        hi = mid;
      }
    }
    return clamp((lo + hi) / 2, 0, sMax);
  };
  let cards = {};
  try {
    cards = JSON.parse(window.localStorage.getItem(key) || "{}");
  } catch (_) {}
  const card = cards[id];
  if (!card) return;
  const now = Date.now();
  const oldStability = Math.max(0, Number(card.stability || 0));
  const oldStabilityFast = Math.max(0, Number(card.stabilityFast || card.stability || 0));
  const oldDifficulty = clamp(Number(card.difficulty || 0) || 5, 1, 10);
  const lastReview = Number(card.lastReview || 0);
  const elapsedDays = lastReview > 0 ? Math.max(0, (now - lastReview) / day) : 0;
  const reps = Number(card.reps || 0) + 1;
  let stability;
  let stabilityFast;
  let difficulty;
  let retrievability = 1;
  let state;
  if (!oldStability || card.state === "new" || reps === 1) {
    stability = w[clamp(rating, 1, 4) - 1];
    stabilityFast = stability;
    difficulty = clamp(initD(rating), 1, 10);
    state = rating === 1 ? "learning" : "review";
  } else {
    retrievability = forgettingCurve(elapsedDays, oldStability, oldStabilityFast, oldDifficulty);
    stability = stabilityPair(oldStability, oldDifficulty, retrievability, rating, 7);
    const fast = stabilityPair(oldStabilityFast, oldDifficulty, fastRecall(elapsedDays, oldStabilityFast), rating, 15);
    stabilityFast = rating === 1 ? Math.min(fast, stability * 0.8) : fast;
    difficulty = nextD(oldDifficulty, rating, retrievability);
    state = rating === 1 ? "learning" : "review";
  }
  const intervalDays = rating === 1 ? Math.min(intervalFor(stability, stabilityFast, difficulty), 10 / (24 * 60)) : intervalFor(stability, stabilityFast, difficulty);
  card.reps = reps;
  card.stability = Number(stability.toFixed(3));
  card.stabilityFast = Number(stabilityFast.toFixed(3));
  card.difficulty = Number(difficulty.toFixed(3));
  card.elapsedDays = Number(elapsedDays.toFixed(6));
  card.scheduledDays = Number(intervalDays.toFixed(6));
  card.retrievability = Number(retrievability.toFixed(4));
  card.lastReview = now;
  card.due = now + intervalDays * day;
  card.state = state;
  if (Number(card.correctStreak || 0) + (rating > 1 ? 1 : 0) >= requiredCorrectStreak()) {
    card.learnedAt = card.learnedAt || now;
  }
  card.algorithm = "FSRS-7 dual-trace";
  card.parameterSet = "FSRS-7 34-param defaults from fsrs-rs PR #426";
  card.correctStreak = rating > 1 ? Number(card.correctStreak || 0) + 1 : 0;
  if (rating <= 1) {
    card.lapses = Number(card.lapses || 0) + 1;
  } else {
    card.lapses = Number(card.lapses || 0);
  }
  cards[id] = card;
  window.localStorage.setItem(key, JSON.stringify(cards));
  let logs = [];
  try {
    logs = JSON.parse(window.localStorage.getItem(logKey) || "[]");
  } catch (_) {}
  logs.push({
    id,
    kanji: card.kanji,
    kind: card.kind,
    rating,
    reviewedAt: now,
    elapsedDays,
    stability: card.stability,
    difficulty: card.difficulty,
    scheduledDays: card.scheduledDays
  });
  window.localStorage.setItem(logKey, JSON.stringify(logs.slice(-5000)));
}`)

let demoteSrsCard: string => unit = %raw(`id => {
  const key = "kanji-learn-srs-cards-v1";
  let cards = {};
  try {
    cards = JSON.parse(window.localStorage.getItem(key) || "{}");
  } catch (_) {}
  const card = cards[id];
  if (!card) return;
  card.stability = Number(Math.max(0.001, Number(card.stability || 0.001) * 0.45).toFixed(3));
  card.stabilityFast = Number(Math.max(0.001, Number(card.stabilityFast || card.stability || 0.001) * 0.45).toFixed(3));
  card.difficulty = Number(Math.min(10, Number(card.difficulty || 5) + 1.2).toFixed(3));
  card.lapses = Number(card.lapses || 0) + 1;
  card.correctStreak = 0;
  delete card.learnedAt;
  card.state = "learning";
  card.due = Date.now();
  card.quickReviewDemotions = Number(card.quickReviewDemotions || 0) + 1;
  cards[id] = card;
  window.localStorage.setItem(key, JSON.stringify(cards));
}`)

let learnedKanjiCountFromSrs: unit => int = %raw(`() => {
  const key = "kanji-learn-srs-cards-v1";
  const requiredCorrectStreak = () => {
    try {
      const stored = JSON.parse(window.localStorage.getItem("kanji-learn-review-settings-v1") || "{}");
      return Math.min(4, Math.max(1, Number(stored.requiredCorrectStreak || 2)));
    } catch (_) {
      return 2;
    }
  };
  let cards = {};
  try {
    cards = JSON.parse(window.localStorage.getItem(key) || "{}");
  } catch (_) {}
  const byKanji = new Map();
  const cardLearned = card => Number(card.correctStreak || 0) >= requiredCorrectStreak() || Number(card.learnedAt || 0) > 0;
  for (const card of Object.values(cards)) {
    const list = byKanji.get(card.kanji) || [];
    list.push(card);
    byKanji.set(card.kanji, list);
  }
  let learned = 0;
  for (const list of byKanji.values()) {
    if (list.filter(card => cardLearned(card)).length >= 2) learned += 1;
  }
  return learned;
}`)

let loadSrsDashboard: unit => srsDashboard = %raw(`() => {
  const key = "kanji-learn-srs-cards-v1";
  const kinds = ["kanji_to_kana", "kanji_to_meaning", "kana_to_meaning", "meaning_to_kanji", "meaning_to_kana"];
  const requiredCorrectStreak = () => {
    try {
      const stored = JSON.parse(window.localStorage.getItem("kanji-learn-review-settings-v1") || "{}");
      return Math.min(4, Math.max(1, Number(stored.requiredCorrectStreak || 2)));
    } catch (_) {
      return 2;
    }
  };
  const empty = {
    dueCount: 0,
    seenKanji: 0,
    learningKanji: 0,
    learnedKanji: 0,
    masteredKanji: 0,
    totalCards: 0,
    dueCards: 0,
    learningCards: 0,
    reviewCards: 0,
    learnedCards: 0,
    kanjiToKanaDue: 0,
    kanjiToMeaningDue: 0,
    kanaToMeaningDue: 0,
    meaningToKanjiDue: 0,
    meaningToKanaDue: 0
  };
  let cards = {};
  try {
    cards = JSON.parse(window.localStorage.getItem(key) || "{}");
  } catch (_) {
    return empty;
  }
  const now = Date.now();
  const values = Object.values(cards);
  const bucketDue = dueSrsCardsWithItems(KanjiData.items);
  const bucketDueIds = new Set(bucketDue.map(card => card.id));
  const byKanji = new Map();
  const cardLearned = card => Number(card.correctStreak || 0) >= requiredCorrectStreak() || Number(card.learnedAt || 0) > 0;
  const dueField = {
    kanji_to_kana: "kanjiToKanaDue",
    kanji_to_meaning: "kanjiToMeaningDue",
    kana_to_meaning: "kanaToMeaningDue",
    meaning_to_kanji: "meaningToKanjiDue",
    meaning_to_kana: "meaningToKanaDue"
  };
  const dashboard = Object.assign({}, empty);
  dashboard.totalCards = values.length;
  for (const card of values) {
    const list = byKanji.get(card.kanji) || [];
    list.push(card);
    byKanji.set(card.kanji, list);
    if (cardLearned(card)) dashboard.learnedCards += 1;
    if (card.state === "learning" || card.state === "new") dashboard.learningCards += 1;
    if (card.state === "review") dashboard.reviewCards += 1;
    if (bucketDueIds.has(card.id)) {
      dashboard.dueCards += 1;
      const field = dueField[card.kind];
      if (field) dashboard[field] += 1;
    }
  }
  dashboard.seenKanji = byKanji.size;
  for (const list of byKanji.values()) {
    const learnedCards = list.filter(card => cardLearned(card)).length;
    if (learnedCards >= kinds.length) {
      dashboard.masteredKanji += 1;
    } else if (learnedCards >= 2) {
      dashboard.learnedKanji += 1;
    } else {
      dashboard.learningKanji += 1;
    }
  }
  dashboard.dueCount = bucketDue.length;
  return dashboard;
}`)

let growthStageForKanji: string => int = %raw(`kanji => {
  const key = "kanji-learn-srs-cards-v1";
  let cards = {};
  try {
    cards = JSON.parse(window.localStorage.getItem(key) || "{}");
  } catch (_) {}
  const siblings = Object.values(cards).filter(card => card.kanji === kanji);
  if (!siblings.length) return 0;
  const lit = siblings.filter(card => Number(card.correctStreak || 0) > 0 || Number(card.reps || 0) > Number(card.lapses || 0)).length;
  return Math.max(1, Math.min(5, lit));
}`)

let studiedKanjiList: unit => array<studiedKanji> = %raw(`() => {
  const key = "kanji-learn-srs-cards-v1";
  const kinds = ["kanji_to_kana", "kanji_to_meaning", "kana_to_meaning", "meaning_to_kanji", "meaning_to_kana"];
  const requiredCorrectStreak = () => {
    try {
      const stored = JSON.parse(window.localStorage.getItem("kanji-learn-review-settings-v1") || "{}");
      return Math.min(4, Math.max(1, Number(stored.requiredCorrectStreak || 2)));
    } catch (_) {
      return 2;
    }
  };
  let cards = {};
  try {
    cards = JSON.parse(window.localStorage.getItem(key) || "{}");
  } catch (_) {}
  const dueCards = new Set(dueSrsCardsWithItems(KanjiData.items).map(card => card.id));
  const byKanji = new Map();
  for (const card of Object.values(cards)) {
    const list = byKanji.get(card.kanji) || [];
    list.push(card);
    byKanji.set(card.kanji, list);
  }
  const cardLearned = card => Number(card.correctStreak || 0) >= requiredCorrectStreak() || Number(card.learnedAt || 0) > 0;
  const lastReviewedLabel = timestamp => {
    if (!timestamp) return "not reviewed yet";
    const elapsed = Math.max(0, Date.now() - timestamp);
    const minute = 60 * 1000;
    const hour = 60 * minute;
    const day = 24 * hour;
    if (elapsed < hour) return Math.max(1, Math.round(elapsed / minute)) + "m ago";
    if (elapsed < day) return Math.round(elapsed / hour) + "h ago";
    return Math.round(elapsed / day) + "d ago";
  };
  return KanjiData.items
    .map((item, index) => {
      const list = byKanji.get(item.kanji) || [];
      if (!list.length) return null;
      const learnedCards = list.filter(cardLearned).length;
      const reps = list.reduce((sum, card) => sum + Number(card.reps || 0), 0);
      const lapses = list.reduce((sum, card) => sum + Number(card.lapses || 0), 0);
      const lastReview = list.reduce((latest, card) => Math.max(latest, Number(card.lastReview || 0)), 0);
      const due = list.filter(card => dueCards.has(card.id)).length;
      let status = "Seen";
      if (learnedCards >= kinds.length) {
        status = "Mastered";
      } else if (learnedCards >= 2) {
        status = "Learned";
      } else if (reps > 0) {
        status = "Learning";
      }
      return {
        kanji: item.kanji,
        keyword: item.keyword,
        reading: item.reading,
        index: index + 1,
        status,
        learnedCards,
        totalCards: list.length,
        dueCards: due,
        reps,
        lapses,
        lastReview,
        lastReviewed: lastReviewedLabel(lastReview)
      };
    })
    .filter(Boolean)
    .sort((a, b) => {
      if (Number(b.lastReview || 0) !== Number(a.lastReview || 0)) {
        return Number(b.lastReview || 0) - Number(a.lastReview || 0);
      }
      return a.index - b.index;
    });
}`)
