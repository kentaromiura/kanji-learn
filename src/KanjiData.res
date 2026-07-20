type vocab = {
  word: string,
  reading: string,
  meaning: string,
}

type item = {
  kanji: string,
  keyword: string,
  reading: string,
  radical: string,
  componentHint: string,
  examples: array<vocab>,
}

let items = [
  {
    kanji: "日",
    keyword: "day/sun",
    reading: "ひ / -び / -か / ニチ / ジツ",
    radical: "日",
    componentHint: "classical radical 72",
    examples: [
      {word: "日本", reading: "にっぽん", meaning: "Japan"},
      {word: "今日", reading: "きょう", meaning: "today; this day"},
      {word: "明日", reading: "あした", meaning: "tomorrow; near future"}
    ],
  },
  {
    kanji: "一",
    keyword: "one",
    reading: "ひと- / ひと.つ / イチ / イツ",
    radical: "一",
    componentHint: "classical radical 1",
    examples: [
      {word: "一つ", reading: "ひとつ", meaning: "one; for one thing"},
      {word: "一緒", reading: "いっしょ", meaning: "together; at the same time"},
      {word: "一番", reading: "いちばん", meaning: "best; first"}
    ],
  },
  {
    kanji: "二",
    keyword: "two",
    reading: "ふた / ふた.つ / ふたたび / ニ / ジ",
    radical: "二",
    componentHint: "classical radical 7",
    examples: [
      {word: "二つ", reading: "ふたつ", meaning: "two"},
      {word: "二度と", reading: "にどと", meaning: "never again (with negative verb)"},
      {word: "二月", reading: "にがつ", meaning: "February; second month of the lunar calendar"}
    ],
  },
  {
    kanji: "三",
    keyword: "three",
    reading: "み / み.つ / みっ.つ / サン / ゾウ",
    radical: "一",
    componentHint: "classical radical 1",
    examples: [
      {word: "三つ", reading: "みっつ", meaning: "three"},
      {word: "三月", reading: "さんがつ", meaning: "March"},
      {word: "三郎", reading: "さぶろう", meaning: "third son; Occella iburia (species of poacher)"}
    ],
  },
  {
    kanji: "十",
    keyword: "ten",
    reading: "とお / と / ジュウ / ジッ / ジュッ",
    radical: "十",
    componentHint: "classical radical 24",
    examples: [
      {word: "十分", reading: "じっぷん", meaning: "10 minutes"},
      {word: "十月", reading: "じゅうがつ", meaning: "October"},
      {word: "十一月", reading: "じゅういちがつ", meaning: "November"}
    ],
  },
  {
    kanji: "四",
    keyword: "four",
    reading: "よ / よ.つ / よっ.つ / よん / シ",
    radical: "四",
    componentHint: "classical radical 31",
    examples: [
      {word: "四月", reading: "しがつ", meaning: "April"},
      {word: "四つ", reading: "よっつ", meaning: "four"},
      {word: "四方", reading: "しほう", meaning: "the four cardinal directions; north, east, south and west"}
    ],
  },
  {
    kanji: "五",
    keyword: "five",
    reading: "いつ / いつ.つ / ゴ",
    radical: "五",
    componentHint: "classical radical 7",
    examples: [
      {word: "五月", reading: "ごがつ", meaning: "May"},
      {word: "五つ", reading: "いつつ", meaning: "five"},
      {word: "五体", reading: "ごたい", meaning: "the whole body; limbs"}
    ],
  },
  {
    kanji: "六",
    keyword: "six",
    reading: "む / む.つ / むっ.つ / むい / ロク / リク",
    radical: "六",
    componentHint: "classical radical 12",
    examples: [
      {word: "六月", reading: "ろくがつ", meaning: "June"},
      {word: "六つ", reading: "むっつ", meaning: "six"},
      {word: "六尺", reading: "ろくしゃく", meaning: "six feet; traditional Japanese G-string for men"}
    ],
  },
  {
    kanji: "七",
    keyword: "seven",
    reading: "なな / なな.つ / なの / シチ",
    radical: "七",
    componentHint: "classical radical 1",
    examples: [
      {word: "七月", reading: "しちがつ", meaning: "July"},
      {word: "七つ", reading: "ななつ", meaning: "seven"},
      {word: "七色", reading: "なないろ", meaning: "the seven prismatic colors (colours)"}
    ],
  },
  {
    kanji: "八",
    keyword: "eight",
    reading: "や / や.つ / やっ.つ / よう / ハチ",
    radical: "八",
    componentHint: "classical radical 12",
    examples: [
      {word: "八月", reading: "はちがつ", meaning: "August"},
      {word: "八千代", reading: "やちよ", meaning: "eternity; thousands of years"},
      {word: "八つ", reading: "やっつ", meaning: "eight"}
    ],
  },
  {
    kanji: "九",
    keyword: "nine",
    reading: "ここの / ここの.つ / キュウ / ク",
    radical: "九",
    componentHint: "classical radical 5",
    examples: [
      {word: "九月", reading: "くがつ", meaning: "September"},
      {word: "九州", reading: "きゅうしゅう", meaning: "Kyushu (southernmost of the four main islands of Japan)"},
      {word: "九つ", reading: "ここのつ", meaning: "nine"}
    ],
  },
  {
    kanji: "丸",
    keyword: "round/full (month)",
    reading: "まる / まる.める / まる.い / ガン",
    radical: "丸",
    componentHint: "classical radical 3",
    examples: [
      {word: "丸い", reading: "まるい", meaning: "round; circular"},
      {word: "弾丸", reading: "だんがん", meaning: "bullet; shot"},
      {word: "丸める", reading: "まるめる", meaning: "to make round; to roll up"}
    ],
  },
  {
    kanji: "円",
    keyword: "circle/yen",
    reading: "まる.い / まる / まど / まど.か / エン",
    radical: "円",
    componentHint: "classical radical 13",
    examples: [
      {word: "円形", reading: "えんけい", meaning: "round shape; circle"},
      {word: "円盤", reading: "えんばん", meaning: "disk; discus"},
      {word: "円筒", reading: "えんとう", meaning: "cylinder"}
    ],
  },
  {
    kanji: "○",
    keyword: "zero",
    reading: "まる",
    radical: "○",
    componentHint: "symbol entry",
    examples: [
      {word: "丸", reading: "まる", meaning: "circle; round"},
      {word: "円", reading: "まる", meaning: "circle; round"},
      {word: "○", reading: "まる", meaning: "zero"}
    ],
  },
  {
    kanji: "人",
    keyword: "person",
    reading: "ひと / -り / -と / ジン / ニン",
    radical: "人",
    componentHint: "classical radical 9",
    examples: [
      {word: "人間", reading: "にんげん", meaning: "human being; person"},
      {word: "夫人", reading: "ふじん", meaning: "wife; Mrs"},
      {word: "人々", reading: "ひとびと", meaning: "each person; people"}
    ],
  },
  {
    kanji: "百",
    keyword: "hundred",
    reading: "もも / ヒャク / ビャク",
    radical: "百",
    componentHint: "classical radical 106",
    examples: [
      {word: "百姓", reading: "ひゃくしょう", meaning: "farmer; peasant"},
      {word: "百合", reading: "ゆり", meaning: "lily (Lilium spp.); comics and novels about female homosexuality"},
      {word: "小百合", reading: "さゆり", meaning: "lily"}
    ],
  },
  {
    kanji: "千",
    keyword: "thousand",
    reading: "ち / セン",
    radical: "千",
    componentHint: "classical radical 24",
    examples: [
      {word: "千葉", reading: "ちば", meaning: "Chiba (city)"},
      {word: "八千代", reading: "やちよ", meaning: "eternity; thousands of years"},
      {word: "千里", reading: "せんり", meaning: "1000 ri; (a) long distance"}
    ],
  },
  {
    kanji: "万",
    keyword: "ten thousand/10,000",
    reading: "よろず / マン / バン",
    radical: "万",
    componentHint: "classical radical 1",
    examples: [
      {word: "万事", reading: "ばんじ", meaning: "all; everything"},
      {word: "万里", reading: "ばんり", meaning: "thousands of miles"},
      {word: "万が一", reading: "まんがいち", meaning: "if by any chance; just in case"}
    ],
  },
  {
    kanji: "口",
    keyword: "mouth",
    reading: "くち / コウ / ク",
    radical: "口",
    componentHint: "classical radical 30",
    examples: [
      {word: "口調", reading: "くちょう", meaning: "tone (e.g. of voice, etc.); (verbal) expression"},
      {word: "入口", reading: "いりくち", meaning: "entrance; entry"},
      {word: "戸口", reading: "とぐち", meaning: "door; doorway"}
    ],
  },
  {
    kanji: "田",
    keyword: "rice field/rice paddy",
    reading: "た / デン",
    radical: "田",
    componentHint: "classical radical 102",
    examples: [
      {word: "田舎", reading: "いなか", meaning: "rural area; countryside"},
      {word: "島田", reading: "しまだ", meaning: "pompadour-like hair style, popular for unmarried women in the Edo period; shimada coiffure"},
      {word: "真田", reading: "さなだ", meaning: "plait; braid"}
    ],
  },
  {
    kanji: "目",
    keyword: "eye/class",
    reading: "め / -め / ま- / モク / ボク",
    radical: "目",
    componentHint: "classical radical 109",
    examples: [
      {word: "目的", reading: "もくてき", meaning: "purpose; goal"},
      {word: "駄目", reading: "だめ", meaning: "no good; not serving its purpose"},
      {word: "目立つ", reading: "めだつ", meaning: "to be conspicuous; to stand out"}
    ],
  },
  {
    kanji: "川",
    keyword: "stream/river",
    reading: "かわ / セン",
    radical: "川",
    componentHint: "classical radical 47",
    examples: [
      {word: "小川", reading: "おがわ", meaning: "streamlet; brook"},
      {word: "大川", reading: "おおかわ", meaning: "big river"},
      {word: "川上", reading: "かわかみ", meaning: "upper reaches of a river; upstream"}
    ],
  },
  {
    kanji: "月",
    keyword: "month/moon",
    reading: "つき / ゲツ / ガツ",
    radical: "月",
    componentHint: "classical radical 74",
    examples: [
      {word: "五月", reading: "ごがつ", meaning: "May"},
      {word: "三月", reading: "さんがつ", meaning: "March"},
      {word: "八月", reading: "はちがつ", meaning: "August"}
    ],
  },
  {
    kanji: "明",
    keyword: "bright/light",
    reading: "あ.かり / あか.るい / あか.るむ / あか.らむ / メイ / ミョウ / ミン",
    radical: "明",
    componentHint: "classical radical 72",
    examples: [
      {word: "説明", reading: "せつめい", meaning: "explanation; exposition"},
      {word: "明日", reading: "あした", meaning: "tomorrow; near future"},
      {word: "明るい", reading: "あかるい", meaning: "bright; colourful"}
    ],
  },
  {
    kanji: "曜",
    keyword: "weekday",
    reading: "ヨウ",
    radical: "曜",
    componentHint: "classical radical 72",
    examples: [
      {word: "日曜日", reading: "にちようび", meaning: "Sunday"},
      {word: "土曜日", reading: "どようび", meaning: "Saturday"},
      {word: "日曜", reading: "にちよう", meaning: "Sunday"}
    ],
  },
  {
    kanji: "火",
    keyword: "fire",
    reading: "ひ / -び / ほ- / カ",
    radical: "火",
    componentHint: "classical radical 86",
    examples: [
      {word: "火事", reading: "かじ", meaning: "fire; conflagration"},
      {word: "火星", reading: "かせい", meaning: "Mars (planet)"},
      {word: "火花", reading: "ひばな", meaning: "spark"}
    ],
  },
  {
    kanji: "水",
    keyword: "water",
    reading: "みず / みず- / スイ",
    radical: "水",
    componentHint: "classical radical 85",
    examples: [
      {word: "水面", reading: "すいめん", meaning: "water's surface"},
      {word: "清水", reading: "しみず", meaning: "spring water; clear (pure) water"},
      {word: "水平", reading: "すいへい", meaning: "level; horizontality"}
    ],
  },
  {
    kanji: "木",
    keyword: "tree/wood",
    reading: "き / こ- / ボク / モク",
    radical: "木",
    componentHint: "classical radical 75",
    examples: [
      {word: "木々", reading: "きぎ", meaning: "every tree; many trees"},
      {word: "木戸", reading: "きど", meaning: "wicket gate; wooden door"},
      {word: "青木", reading: "あおき", meaning: "Japanese laurel; spotted laurel"}
    ],
  },
  {
    kanji: "金",
    keyword: "gold",
    reading: "かね / かな- / -がね / キン / コン / ゴン",
    radical: "金",
    componentHint: "classical radical 167",
    examples: [
      {word: "お金", reading: "おかね", meaning: "money"},
      {word: "金属", reading: "きんぞく", meaning: "metal"},
      {word: "黄金", reading: "おうごん", meaning: "gold"}
    ],
  },
  {
    kanji: "土",
    keyword: "soil/earth",
    reading: "つち / ド / ト",
    radical: "土",
    componentHint: "classical radical 32",
    examples: [
      {word: "土地", reading: "とち", meaning: "plot of land; lot"},
      {word: "土曜日", reading: "どようび", meaning: "Saturday"},
      {word: "土間", reading: "どま", meaning: "dirt floor; pit"}
    ],
  },
  {
    kanji: "本",
    keyword: "book/present",
    reading: "もと / ホン",
    radical: "木",
    componentHint: "classical radical 75",
    examples: [
      {word: "日本", reading: "にっぽん", meaning: "Japan"},
      {word: "本当に", reading: "ほんとうに", meaning: "really; truly"},
      {word: "本当", reading: "ほんとう", meaning: "truth; reality"}
    ],
  },
  {
    kanji: "東",
    keyword: "east",
    reading: "ひがし / トウ",
    radical: "東",
    componentHint: "classical radical 75",
    examples: [
      {word: "東京", reading: "とうきょう", meaning: "Tokyo"},
      {word: "東洋", reading: "とうよう", meaning: "Orient"},
      {word: "関東", reading: "かんとう", meaning: "Kanto (eastern half of Japan, including Tokyo)"}
    ],
  },
  {
    kanji: "大",
    keyword: "large/big",
    reading: "おお- / おお.きい / -おお.いに / ダイ / タイ",
    radical: "大",
    componentHint: "classical radical 37",
    examples: [
      {word: "大きな", reading: "おおきな", meaning: "big; large"},
      {word: "大きい", reading: "おおきい", meaning: "big; large"},
      {word: "大丈夫", reading: "だいじょうぶ", meaning: "safe; all right"}
    ],
  },
  {
    kanji: "小",
    keyword: "little/small",
    reading: "ちい.さい / こ- / お- / さ- / ショウ",
    radical: "小",
    componentHint: "classical radical 42",
    examples: [
      {word: "小さな", reading: "ちいさな", meaning: "small; little"},
      {word: "小さい", reading: "ちいさい", meaning: "small; little"},
      {word: "小説", reading: "しょうせつ", meaning: "novel; (short) story"}
    ],
  },
  {
    kanji: "中",
    keyword: "in/inside",
    reading: "なか / うち / あた.る / チュウ",
    radical: "丨",
    componentHint: "classical radical 2",
    examples: [
      {word: "連中", reading: "れんちゅう", meaning: "colleagues; company"},
      {word: "背中", reading: "せなか", meaning: "back (of body)"},
      {word: "途中", reading: "とちゅう", meaning: "on the way; en route"}
    ],
  },
  {
    kanji: "生",
    keyword: "life/genuine",
    reading: "い.きる / い.かす / い.ける / う.まれる / セイ / ショウ",
    radical: "生",
    componentHint: "classical radical 100",
    examples: [
      {word: "先生", reading: "せんせい", meaning: "teacher; master"},
      {word: "生きる", reading: "いきる", meaning: "to live; to exist"},
      {word: "生活", reading: "せいかつ", meaning: "living; life (one's daily existence)"}
    ],
  },
  {
    kanji: "山",
    keyword: "mountain",
    reading: "やま / サン / セン",
    radical: "山",
    componentHint: "classical radical 46",
    examples: [
      {word: "山本", reading: "やまもと", meaning: "foot of a mountain; base of a mountain"},
      {word: "山下", reading: "やまもと", meaning: "foot of a mountain; base of a mountain"},
      {word: "沢山", reading: "たくさん", meaning: "a lot; lots"}
    ],
  },
  {
    kanji: "出",
    keyword: "exit/leave",
    reading: "で.る / -で / だ.す / -だ.す / シュツ / スイ",
    radical: "出",
    componentHint: "classical radical 17",
    examples: [
      {word: "出る", reading: "でる", meaning: "to leave; to exit"},
      {word: "出す", reading: "だす", meaning: "to take out; to get out"},
      {word: "出来る", reading: "できる", meaning: "to be able (in a position) to do; to be up to the task"}
    ],
  },
  {
    kanji: "入",
    keyword: "enter/insert",
    reading: "い.る / -い.る / -い.り / い.れる / ニュウ / ジュ",
    radical: "入",
    componentHint: "classical radical 11",
    examples: [
      {word: "入る", reading: "いる", meaning: "to get in; to go in"},
      {word: "入れる", reading: "いれる", meaning: "to put in; to let in"},
      {word: "入口", reading: "いりくち", meaning: "entrance; entry"}
    ],
  },
  {
    kanji: "下",
    keyword: "below/down",
    reading: "した / しも / もと / さ.げる / カ / ゲ",
    radical: "一",
    componentHint: "classical radical 1",
    examples: [
      {word: "下さる", reading: "くださる", meaning: "to give; to confer"},
      {word: "廊下", reading: "ろうか", meaning: "corridor; hallway"},
      {word: "下げる", reading: "さげる", meaning: "to hang; to suspend"}
    ],
  },
  {
    kanji: "上",
    keyword: "above/up",
    reading: "うえ / -うえ / うわ- / かみ / ジョウ / ショウ / シャン",
    radical: "一",
    componentHint: "classical radical 1",
    examples: [
      {word: "以上", reading: "いじょう", meaning: "not less than; ... and more"},
      {word: "上げる", reading: "あげる", meaning: "to raise; to elevate"},
      {word: "立ち上がる", reading: "たちあがる", meaning: "to stand up; to get up"}
    ],
  },
  {
    kanji: "止",
    keyword: "stop/halt",
    reading: "と.まる / -ど.まり / と.める / -と.める / シ",
    radical: "止",
    componentHint: "classical radical 77",
    examples: [
      {word: "止める", reading: "とめる", meaning: "to stop; to turn off"},
      {word: "止まる", reading: "とまる", meaning: "to stop (moving); to come to a stop"},
      {word: "立ち止まる", reading: "たちどまる", meaning: "to stop; to halt"}
    ],
  },
  {
    kanji: "正",
    keyword: "correct/justice",
    reading: "ただ.しい / ただ.す / まさ / まさ.に / セイ / ショウ",
    radical: "正",
    componentHint: "classical radical 77",
    examples: [
      {word: "正しい", reading: "ただしい", meaning: "right; just"},
      {word: "正直", reading: "しょうじき", meaning: "honesty; integrity"},
      {word: "正面", reading: "しょうめん", meaning: "front; frontage"}
    ],
  },
  {
    kanji: "足",
    keyword: "leg/foot",
    reading: "あし / た.りる / た.る / た.す / ソク",
    radical: "足",
    componentHint: "classical radical 157",
    examples: [
      {word: "満足", reading: "まんぞく", meaning: "satisfaction; contentment"},
      {word: "足音", reading: "あしおと", meaning: "footsteps (sound)"},
      {word: "足りる", reading: "たりる", meaning: "to be sufficient; to be enough"}
    ],
  },
  {
    kanji: "定",
    keyword: "determine/fix",
    reading: "さだ.める / さだ.まる / さだ.か / テイ / ジョウ",
    radical: "定",
    componentHint: "classical radical 40",
    examples: [
      {word: "予定", reading: "よてい", meaning: "plans; arrangement"},
      {word: "否定", reading: "ひてい", meaning: "negation; denial"},
      {word: "決定", reading: "けってい", meaning: "decision; determination"}
    ],
  },
  {
    kanji: "手",
    keyword: "hand",
    reading: "て / て- / -て / た- / シュ / ズ",
    radical: "手",
    componentHint: "classical radical 64",
    examples: [
      {word: "相手", reading: "あいて", meaning: "companion; partner"},
      {word: "手紙", reading: "てがみ", meaning: "letter"},
      {word: "両手", reading: "りょうて", meaning: "(with) both hands; approvingly"}
    ],
  },
  {
    kanji: "用",
    keyword: "utilize/business",
    reading: "もち.いる / ヨウ",
    radical: "用",
    componentHint: "classical radical 101",
    examples: [
      {word: "用意", reading: "ようい", meaning: "preparation; arrangements"},
      {word: "利用", reading: "りよう", meaning: "use; utilization"},
      {word: "信用", reading: "しんよう", meaning: "confidence; dependence"}
    ],
  },
  {
    kanji: "無",
    keyword: "nothingness/none",
    reading: "な.い / ム / ブ",
    radical: "無",
    componentHint: "classical radical 86",
    examples: [
      {word: "無理", reading: "むり", meaning: "unreasonable; unnatural"},
      {word: "無い", reading: "ない", meaning: "nonexistent; not being (there)"},
      {word: "無事", reading: "ぶじ", meaning: "safety; peace"}
    ],
  },
  {
    kanji: "不",
    keyword: "negative/non-",
    reading: "フ / ブ",
    radical: "不",
    componentHint: "classical radical 1",
    examples: [
      {word: "不思議", reading: "ふしぎ", meaning: "wonder; miracle"},
      {word: "不安", reading: "ふあん", meaning: "anxiety; uneasiness"},
      {word: "不幸", reading: "ふこう", meaning: "unhappiness; sorrow"}
    ],
  },
  {
    kanji: "回",
    keyword: "-times/round",
    reading: "まわ.る / -まわ.る / -まわ.り / まわ.す / カイ / エ",
    radical: "回",
    componentHint: "classical radical 31",
    examples: [
      {word: "回る", reading: "めぐる", meaning: "to go around; to return"},
      {word: "今回", reading: "こんかい", meaning: "now; this time"},
      {word: "回す", reading: "まわす", meaning: "to turn; to rotate"}
    ],
  },
  {
    kanji: "言",
    keyword: "say/word",
    reading: "い.う / こと / ゲン / ゴン",
    radical: "言",
    componentHint: "classical radical 149",
    examples: [
      {word: "言う", reading: "いう", meaning: "to say; to utter"},
      {word: "言葉", reading: "ことば", meaning: "language; dialect"},
      {word: "言える", reading: "いえる", meaning: "to be possible to say; to be able to say"}
    ],
  },
  {
    kanji: "舌",
    keyword: "tongue/reed",
    reading: "した / ゼツ",
    radical: "舌",
    componentHint: "classical radical 135",
    examples: [
      {word: "舌打ち", reading: "したうち", meaning: "smacking lips; clicking tongue"},
      {word: "饒舌", reading: "じょうぜつ", meaning: "garrulity; loquacity"},
      {word: "弁舌", reading: "べんぜつ", meaning: "speech"}
    ],
  },
  {
    kanji: "話",
    keyword: "tale/talk",
    reading: "はな.す / はなし / ワ",
    radical: "話",
    componentHint: "classical radical 149",
    examples: [
      {word: "電話", reading: "でんわ", meaning: "telephone call; phone call"},
      {word: "話す", reading: "はなす", meaning: "to talk; to speak"},
      {word: "会話", reading: "かいわ", meaning: "conversation"}
    ],
  },
  {
    kanji: "活",
    keyword: "lively/resuscitation",
    reading: "い.きる / い.かす / い.ける / カツ",
    radical: "活",
    componentHint: "classical radical 85",
    examples: [
      {word: "生活", reading: "せいかつ", meaning: "living; life (one's daily existence)"},
      {word: "活動", reading: "かつどう", meaning: "action; activity"},
      {word: "活躍", reading: "かつやく", meaning: "activity (esp. energetic); great efforts"}
    ],
  },
  {
    kanji: "行",
    keyword: "going/journey",
    reading: "い.く / ゆ.く / -ゆ.き / -ゆき / コウ / ギョウ / アン",
    radical: "行",
    componentHint: "classical radical 144",
    examples: [
      {word: "行く", reading: "いく", meaning: "to go; to move (in a direction or towards a specific location)"},
      {word: "行う", reading: "おこなう", meaning: "to perform; to do"},
      {word: "行動", reading: "こうどう", meaning: "action; conduct"}
    ],
  },
  {
    kanji: "心",
    keyword: "heart/mind",
    reading: "こころ / -ごころ / シン",
    radical: "心",
    componentHint: "classical radical 61",
    examples: [
      {word: "心配", reading: "しんぱい", meaning: "worry; concern"},
      {word: "安心", reading: "あんしん", meaning: "relief; peace of mind"},
      {word: "中心", reading: "ちゅうしん", meaning: "center; centre"}
    ],
  },
  {
    kanji: "耳",
    keyword: "ear",
    reading: "みみ / ジ",
    radical: "耳",
    componentHint: "classical radical 128",
    examples: [
      {word: "耳元", reading: "みみもと", meaning: "close to the ear; into someone's ear"},
      {word: "耳もと", reading: "みみもと", meaning: "close to the ear; into someone's ear"},
      {word: "耳打ち", reading: "みみうち", meaning: "whispering into a person's ear"}
    ],
  },
  {
    kanji: "又",
    keyword: "or again/furthermore",
    reading: "また / また- / また.の- / ユウ",
    radical: "又",
    componentHint: "classical radical 29",
    examples: [
      {word: "又は", reading: "または", meaning: "or; otherwise"},
      {word: "又もや", reading: "またもや", meaning: "again (and again); once again"},
      {word: "又も", reading: "またも", meaning: "(once) again"}
    ],
  },
  {
    kanji: "取",
    keyword: "take/fetch",
    reading: "と.る / と.り / と.り- / とり / シュ",
    radical: "取",
    componentHint: "classical radical 29",
    examples: [
      {word: "取る", reading: "とる", meaning: "to take; to pick up"},
      {word: "取り出す", reading: "とりだす", meaning: "to take out; to produce"},
      {word: "受け取る", reading: "うけとる", meaning: "to receive; to get"}
    ],
  },
  {
    kanji: "身",
    keyword: "somebody/person",
    reading: "み / シン",
    radical: "身",
    componentHint: "classical radical 158",
    examples: [
      {word: "自身", reading: "じしん", meaning: "by oneself; personally"},
      {word: "身体", reading: "しんたい", meaning: "body; torso"},
      {word: "全身", reading: "ぜんしん", meaning: "whole (body); full-length (e.g. portrait)"}
    ],
  },
  {
    kanji: "休",
    keyword: "rest/day off",
    reading: "やす.む / やす.まる / やす.める / キュウ",
    radical: "休",
    componentHint: "classical radical 9",
    examples: [
      {word: "休む", reading: "やすむ", meaning: "to be absent; to take a day off"},
      {word: "休み", reading: "やすみ", meaning: "rest; recess"},
      {word: "休暇", reading: "きゅうか", meaning: "holiday; day off"}
    ],
  },
  {
    kanji: "体",
    keyword: "body/substance",
    reading: "からだ / かたち / タイ / テイ",
    radical: "体",
    componentHint: "classical radical 9",
    examples: [
      {word: "身体", reading: "しんたい", meaning: "body; torso"},
      {word: "死体", reading: "したい", meaning: "dead body; corpse"},
      {word: "全体", reading: "ぜんたい", meaning: "whole; entirety"}
    ],
  },
  {
    kanji: "信",
    keyword: "faith/truth",
    reading: "シン",
    radical: "信",
    componentHint: "classical radical 9",
    examples: [
      {word: "信じる", reading: "しんじる", meaning: "to believe; to believe in"},
      {word: "自信", reading: "じしん", meaning: "self-confidence; confidence (in oneself)"},
      {word: "確信", reading: "かくしん", meaning: "conviction; belief"}
    ],
  },
  {
    kanji: "付",
    keyword: "adhere/attach",
    reading: "つ.ける / -つ.ける / -づ.ける / つ.け / フ",
    radical: "付",
    componentHint: "classical radical 9",
    examples: [
      {word: "気付く", reading: "きづく", meaning: "to notice; to recognize"},
      {word: "付く", reading: "つく", meaning: "to be attached; to be connected with"},
      {word: "付ける", reading: "つける", meaning: "to attach; to join"}
    ],
  },
  {
    kanji: "受",
    keyword: "accept/undergo",
    reading: "う.ける / -う.け / う.かる / ジュ",
    radical: "受",
    componentHint: "classical radical 29",
    examples: [
      {word: "受ける", reading: "うける", meaning: "to receive; to get"},
      {word: "受け取る", reading: "うけとる", meaning: "to receive; to get"},
      {word: "受話器", reading: "じゅわき", meaning: "(telephone) receiver"}
    ],
  },
  {
    kanji: "以",
    keyword: "by means of/because",
    reading: "もっ.て / イ",
    radical: "以",
    componentHint: "classical radical 9",
    examples: [
      {word: "以上", reading: "いじょう", meaning: "not less than; ... and more"},
      {word: "以外", reading: "いがい", meaning: "with the exception of; excepting"},
      {word: "以前", reading: "いぜん", meaning: "ago; since"}
    ],
  },
  {
    kanji: "立",
    keyword: "stand up/rise",
    reading: "た.つ / -た.つ / た.ち- / た.てる / リツ / リュウ / リットル",
    radical: "立",
    componentHint: "classical radical 117",
    examples: [
      {word: "立つ", reading: "たつ", meaning: "to stand; to rise"},
      {word: "立てる", reading: "たてる", meaning: "to stand up; to put up"},
      {word: "立ち上がる", reading: "たちあがる", meaning: "to stand up; to get up"}
    ],
  },
  {
    kanji: "部",
    keyword: "section/bureau",
    reading: "-べ / ブ",
    radical: "部",
    componentHint: "classical radical 163",
    examples: [
      {word: "部屋", reading: "へや", meaning: "room; stable"},
      {word: "部分", reading: "ぶぶん", meaning: "portion; section"},
      {word: "全部", reading: "ぜんぶ", meaning: "all; entire"}
    ],
  },
  {
    kanji: "倍",
    keyword: "double/twice",
    reading: "バイ",
    radical: "倍",
    componentHint: "classical radical 9",
    examples: [
      {word: "人一倍", reading: "ひといちばい", meaning: "more than others; redoubled"},
      {word: "倍加", reading: "ばいか", meaning: "doubling"},
      {word: "倍率", reading: "ばいりつ", meaning: "magnification; leverage"}
    ],
  },
  {
    kanji: "成",
    keyword: "turn into/become",
    reading: "な.る / な.す / -な.す / セイ / ジョウ",
    radical: "成",
    componentHint: "classical radical 62",
    examples: [
      {word: "成功", reading: "せいこう", meaning: "success; hit"},
      {word: "完成", reading: "かんせい", meaning: "complete; completion"},
      {word: "成長", reading: "せいちょう", meaning: "growth; grow to adulthood"}
    ],
  },
  {
    kanji: "代",
    keyword: "substitute/change",
    reading: "か.わる / かわ.る / かわ.り / か.わり / ダイ / タイ",
    radical: "代",
    componentHint: "classical radical 9",
    examples: [
      {word: "時代", reading: "じだい", meaning: "period; epoch"},
      {word: "代わり", reading: "かわり", meaning: "substitute; replacement"},
      {word: "現代", reading: "げんだい", meaning: "nowadays; modern era"}
    ],
  },
  {
    kanji: "王",
    keyword: "king/rule",
    reading: "オウ / -ノウ",
    radical: "王",
    componentHint: "classical radical 96",
    examples: [
      {word: "王子", reading: "おうじ", meaning: "prince"},
      {word: "女王", reading: "じょおう", meaning: "queen"},
      {word: "国王", reading: "こくおう", meaning: "king"}
    ],
  },
  {
    kanji: "玉",
    keyword: "jewel/ball",
    reading: "たま / たま- / -だま / ギョク",
    radical: "玉",
    componentHint: "classical radical 96",
    examples: [
      {word: "玉座", reading: "ぎょくざ", meaning: "throne"},
      {word: "玉子", reading: "たまご", meaning: "eggs; egg"},
      {word: "お玉", reading: "おたま", meaning: "ladle; hen egg"}
    ],
  },
  {
    kanji: "宝",
    keyword: "treasure/wealth",
    reading: "たから / ホウ",
    radical: "宝",
    componentHint: "classical radical 40",
    examples: [
      {word: "宝石", reading: "ほうせき", meaning: "gem; jewel"},
      {word: "宝貝", reading: "たからがい", meaning: "cowrie; cowry"},
      {word: "宝物", reading: "ほうもつ", meaning: "treasure; treasured item"}
    ],
  },
  {
    kanji: "国",
    keyword: "country",
    reading: "くに / コク",
    radical: "国",
    componentHint: "classical radical 31",
    examples: [
      {word: "外国", reading: "がいこく", meaning: "foreign country"},
      {word: "中国", reading: "ちゅうごく", meaning: "China; Chugoku region of western Honshu (incl. Okayama, Hiroshima, Shimane, Tottori and Yamaguchi prefectures)"},
      {word: "国家", reading: "こっか", meaning: "state; country"}
    ],
  },
  {
    kanji: "白",
    keyword: "white",
    reading: "しろ / しら- / しろ.い / ハク / ビャク",
    radical: "白",
    componentHint: "classical radical 106",
    examples: [
      {word: "白い", reading: "しろい", meaning: "white"},
      {word: "面白い", reading: "おもしろい", meaning: "interesting; amusing"},
      {word: "告白", reading: "こくはく", meaning: "confession; acknowledgement"}
    ],
  },
  {
    kanji: "皇",
    keyword: "emperor",
    reading: "コウ / オウ",
    radical: "皇",
    componentHint: "classical radical 106",
    examples: [
      {word: "皇帝", reading: "こうてい", meaning: "emperor"},
      {word: "天皇", reading: "てんのう", meaning: "Emperor of Japan"},
      {word: "皇太子", reading: "こうたいし", meaning: "crown prince"}
    ],
  },
  {
    kanji: "全",
    keyword: "whole/entire",
    reading: "まった.く / すべ.て / ゼン",
    radical: "全",
    componentHint: "classical radical 11",
    examples: [
      {word: "完全", reading: "かんぜん", meaning: "perfection; completeness"},
      {word: "全部", reading: "ぜんぶ", meaning: "all; entire"},
      {word: "全く", reading: "まったく", meaning: "really; truly"}
    ],
  },
  {
    kanji: "書",
    keyword: "write",
    reading: "か.く / -が.き / -がき / ショ",
    radical: "書",
    componentHint: "classical radical 73",
    examples: [
      {word: "書く", reading: "かく", meaning: "to write; to compose"},
      {word: "書類", reading: "しょるい", meaning: "documents; official papers"},
      {word: "秘書", reading: "ひしょ", meaning: "(private) secretary; treasured book"}
    ],
  },
  {
    kanji: "事",
    keyword: "matter/thing",
    reading: "こと / つか.う / つか.える / ジ / ズ",
    radical: "事",
    componentHint: "classical radical 6",
    examples: [
      {word: "仕事", reading: "しごと", meaning: "work; job"},
      {word: "事件", reading: "じけん", meaning: "event; affair"},
      {word: "事実", reading: "じじつ", meaning: "fact; truth"}
    ],
  },
  {
    kanji: "自",
    keyword: "oneself",
    reading: "みずか.ら / おの.ずから / おの.ずと / ジ / シ",
    radical: "自",
    componentHint: "classical radical 132",
    examples: [
      {word: "自分", reading: "じぶん", meaning: "myself; yourself"},
      {word: "自身", reading: "じしん", meaning: "by oneself; personally"},
      {word: "自然", reading: "しぜん", meaning: "nature; spontaneity"}
    ],
  },
  {
    kanji: "貝",
    keyword: "shellfish",
    reading: "かい / バイ",
    radical: "貝",
    componentHint: "classical radical 154",
    examples: [
      {word: "宝貝", reading: "たからがい", meaning: "cowrie; cowry"},
      {word: "貝殻", reading: "かいがら", meaning: "shell"},
      {word: "貝塚", reading: "かいづか", meaning: "shell heap; shell mound"}
    ],
  },
  {
    kanji: "見",
    keyword: "see/hopes",
    reading: "み.る / み.える / み.せる / ケン",
    radical: "見",
    componentHint: "classical radical 147",
    examples: [
      {word: "見る", reading: "みる", meaning: "to see; to look"},
      {word: "見える", reading: "みえる", meaning: "to be seen; to be in sight"},
      {word: "見せる", reading: "みせる", meaning: "to show; to display"}
    ],
  },
  {
    kanji: "力",
    keyword: "power/strength",
    reading: "ちから / リョク / リキ / リイ",
    radical: "力",
    componentHint: "classical radical 19",
    examples: [
      {word: "能力", reading: "のうりょく", meaning: "ability; faculty"},
      {word: "努力", reading: "どりょく", meaning: "great effort; exertion"},
      {word: "協力", reading: "きょうりょく", meaning: "cooperation; collaboration"}
    ],
  },
  {
    kanji: "刀",
    keyword: "sword/saber",
    reading: "かたな / そり / トウ",
    radical: "刀",
    componentHint: "classical radical 18",
    examples: [
      {word: "太刀", reading: "たち", meaning: "long sword"},
      {word: "短刀", reading: "たんとう", meaning: "short sword; dagger"},
      {word: "刀身", reading: "とうしん", meaning: "knife blade; sword blade"}
    ],
  },
  {
    kanji: "切",
    keyword: "cut/cutoff",
    reading: "き.る / -き.る / き.り / -き.り / セツ / サイ",
    radical: "切",
    componentHint: "classical radical 18",
    examples: [
      {word: "切る", reading: "きる", meaning: "to cut; to cut through"},
      {word: "切れる", reading: "きれる", meaning: "to break; to snap"},
      {word: "大切", reading: "たいせつ", meaning: "important; necessary"}
    ],
  },
  {
    kanji: "刃",
    keyword: "blade/sword",
    reading: "は / やいば / き.る / ジン / ニン",
    radical: "刃",
    componentHint: "classical radical 18",
    examples: [
      {word: "刃物", reading: "はもの", meaning: "edged tool; cutlery"},
      {word: "白刃", reading: "しらは", meaning: "drawn sword; naked sword"},
      {word: "刃先", reading: "はさき", meaning: "edge of blade"}
    ],
  },
  {
    kanji: "分",
    keyword: "part/minute of time",
    reading: "わ.ける / わ.け / わ.かれる / わ.かる / ブン / フン / ブ",
    radical: "分",
    componentHint: "classical radical 18",
    examples: [
      {word: "自分", reading: "じぶん", meaning: "myself; yourself"},
      {word: "分かる", reading: "わかる", meaning: "to understand; to comprehend"},
      {word: "気分", reading: "きぶん", meaning: "feeling; mood"}
    ],
  },
  {
    kanji: "公",
    keyword: "public/prince",
    reading: "おおやけ / コウ / ク",
    radical: "公",
    componentHint: "classical radical 12",
    examples: [
      {word: "公爵", reading: "こうしゃく", meaning: "prince; duke"},
      {word: "公園", reading: "こうえん", meaning: "(public) park"},
      {word: "主人公", reading: "しゅじんこう", meaning: "protagonist; main character"}
    ],
  },
  {
    kanji: "別",
    keyword: "separate/branch off",
    reading: "わか.れる / わ.ける / ベツ",
    radical: "別",
    componentHint: "classical radical 18",
    examples: [
      {word: "別に", reading: "べつに", meaning: "(not) particularly; nothing"},
      {word: "特別", reading: "とくべつ", meaning: "special"},
      {word: "別れる", reading: "わかれる", meaning: "to be divided; to part from"}
    ],
  },
  {
    kanji: "長",
    keyword: "long/leader",
    reading: "なが.い / おさ / チョウ",
    radical: "長",
    componentHint: "classical radical 168",
    examples: [
      {word: "長い", reading: "ながい", meaning: "long (distance); long (time)"},
      {word: "社長", reading: "しゃちょう", meaning: "company president; manager"},
      {word: "部長", reading: "ぶちょう", meaning: "head (chief, director) of a section or department; head of a (school) club"}
    ],
  },
  {
    kanji: "男",
    keyword: "male",
    reading: "おとこ / お / ダン / ナン",
    radical: "男",
    componentHint: "classical radical 102",
    examples: [
      {word: "男性", reading: "だんせい", meaning: "man; male"},
      {word: "男の子", reading: "おとこのこ", meaning: "boy; male child"},
      {word: "男女", reading: "だんじょ", meaning: "men and women; man and woman"}
    ],
  },
  {
    kanji: "女",
    keyword: "woman/female",
    reading: "おんな / め / ジョ / ニョ / ニョウ",
    radical: "女",
    componentHint: "classical radical 38",
    examples: [
      {word: "彼女", reading: "かのじょ", meaning: "she; her"},
      {word: "女性", reading: "じょせい", meaning: "woman; female"},
      {word: "少女", reading: "しょうじょ", meaning: "little girl; maiden"}
    ],
  },
  {
    kanji: "子",
    keyword: "child/sign of the rat",
    reading: "こ / -こ / ね / シ / ス / ツ",
    radical: "子",
    componentHint: "classical radical 39",
    examples: [
      {word: "子供", reading: "こども", meaning: "child; children"},
      {word: "様子", reading: "ようす", meaning: "state; state of affairs"},
      {word: "椅子", reading: "いす", meaning: "chair; stool"}
    ],
  },
  {
    kanji: "好",
    keyword: "fond/pleasing",
    reading: "この.む / す.く / よ.い / い.い / コウ",
    radical: "好",
    componentHint: "classical radical 38",
    examples: [
      {word: "好き", reading: "すき", meaning: "liking; fondness"},
      {word: "格好", reading: "かっこう", meaning: "shape; form"},
      {word: "好奇", reading: "こうき", meaning: "inquisitiveness"}
    ],
  },
  {
    kanji: "安",
    keyword: "relax/cheap",
    reading: "やす.い / やす.まる / やす / やす.らか / アン",
    radical: "安",
    componentHint: "classical radical 40",
    examples: [
      {word: "不安", reading: "ふあん", meaning: "anxiety; uneasiness"},
      {word: "安心", reading: "あんしん", meaning: "relief; peace of mind"},
      {word: "安全", reading: "あんぜん", meaning: "safety; security"}
    ],
  },
  {
    kanji: "案",
    keyword: "plan/suggestion",
    reading: "つくえ / アン",
    radical: "案",
    componentHint: "classical radical 75",
    examples: [
      {word: "案内", reading: "あんない", meaning: "information; guidance"},
      {word: "提案", reading: "ていあん", meaning: "proposal; proposition"},
      {word: "思案", reading: "しあん", meaning: "thought; consideration"}
    ],
  },
  {
    kanji: "字",
    keyword: "character/letter",
    reading: "あざ / あざな / -な / ジ",
    radical: "字",
    componentHint: "classical radical 39",
    examples: [
      {word: "文字", reading: "もじ", meaning: "letter (of alphabet); character"},
      {word: "数字", reading: "すうじ", meaning: "numeral; figure"},
      {word: "十字架", reading: "じゅうじか", meaning: "cross; the Cross (of Christ)"}
    ],
  },
  {
    kanji: "学",
    keyword: "study/learning",
    reading: "まな.ぶ / ガク",
    radical: "学",
    componentHint: "classical radical 39",
    examples: [
      {word: "学校", reading: "がっこう", meaning: "school"},
      {word: "大学", reading: "だいがく", meaning: "post-secondary education institution, incl. university, college, etc.; former central university of Kyoto (established under the ritsuryo system for the training of government administrators)"},
      {word: "学生", reading: "がくせい", meaning: "student (esp. a university student)"}
    ],
  },
  {
    kanji: "父",
    keyword: "father",
    reading: "ちち / フ",
    radical: "父",
    componentHint: "classical radical 88",
    examples: [
      {word: "父親", reading: "ちちおや", meaning: "father"},
      {word: "お父さん", reading: "おとうさん", meaning: "father; dad"},
      {word: "親父", reading: "おやじ", meaning: "one's father; old man"}
    ],
  },
  {
    kanji: "文",
    keyword: "sentence/literature",
    reading: "ふみ / あや / ブン / モン",
    radical: "文",
    componentHint: "classical radical 67",
    examples: [
      {word: "文字", reading: "もじ", meaning: "letter (of alphabet); character"},
      {word: "文句", reading: "もんく", meaning: "complaint; grumbling"},
      {word: "文学", reading: "ぶんがく", meaning: "literature"}
    ],
  },
  {
    kanji: "交",
    keyword: "mingle/mixing",
    reading: "まじ.わる / まじ.える / ま.じる / まじ.る / コウ",
    radical: "交",
    componentHint: "classical radical 8",
    examples: [
      {word: "交渉", reading: "こうしょう", meaning: "negotiations; discussions"},
      {word: "交わす", reading: "かわす", meaning: "to exchange (messages, greetings, arguments, etc.); to intersect"},
      {word: "交換", reading: "こうかん", meaning: "exchange; interchange"}
    ],
  },
  {
    kanji: "校",
    keyword: "exam/school",
    reading: "コウ / キョウ",
    radical: "校",
    componentHint: "classical radical 75",
    examples: [
      {word: "学校", reading: "がっこう", meaning: "school"},
      {word: "高校", reading: "こうこう", meaning: "senior high school; high school"},
      {word: "小学校", reading: "しょうがっこう", meaning: "primary school; elementary school"}
    ],
  },
  {
    kanji: "母",
    keyword: "mother",
    reading: "はは / も / ボ",
    radical: "母",
    componentHint: "classical radical 80",
    examples: [
      {word: "母親", reading: "ははおや", meaning: "mother"},
      {word: "お母さん", reading: "おかあさん", meaning: "mother"},
      {word: "母さん", reading: "かあさん", meaning: "mother; wife (used when speaking to or about one's own wife)"}
    ],
  },
  {
    kanji: "毎",
    keyword: "every",
    reading: "ごと / -ごと.に / マイ",
    radical: "毎",
    componentHint: "classical radical 80",
    examples: [
      {word: "毎日", reading: "まいにち", meaning: "every day"},
      {word: "毎年", reading: "まいとし", meaning: "every year; yearly"},
      {word: "毎晩", reading: "まいばん", meaning: "every night"}
    ],
  },
  {
    kanji: "海",
    keyword: "sea/ocean",
    reading: "うみ / カイ",
    radical: "海",
    componentHint: "classical radical 85",
    examples: [
      {word: "海軍", reading: "かいぐん", meaning: "navy"},
      {word: "海岸", reading: "かいがん", meaning: "coast; beach"},
      {word: "航海", reading: "こうかい", meaning: "sail; voyage"}
    ],
  },
  {
    kanji: "者",
    keyword: "someone/person",
    reading: "もの / シャ",
    radical: "者",
    componentHint: "classical radical 125",
    examples: [
      {word: "医者", reading: "いしゃ", meaning: "(medical) doctor; physician"},
      {word: "若者", reading: "わかもの", meaning: "young man; young woman"},
      {word: "患者", reading: "かんじゃ", meaning: "(a) patient"}
    ],
  },
  {
    kanji: "工",
    keyword: "craft/construction",
    reading: "コウ / ク / グ",
    radical: "工",
    componentHint: "classical radical 48",
    examples: [
      {word: "工場", reading: "こうじょう", meaning: "factory; plant"},
      {word: "工事", reading: "こうじ", meaning: "construction work; construction"},
      {word: "人工", reading: "じんこう", meaning: "artificial; man-made"}
    ],
  },
  {
    kanji: "式",
    keyword: "style/ceremony",
    reading: "シキ",
    radical: "式",
    componentHint: "classical radical 56",
    examples: [
      {word: "儀式", reading: "ぎしき", meaning: "ceremony; rite"},
      {word: "正式", reading: "せいしき", meaning: "due form; official"},
      {word: "形式", reading: "けいしき", meaning: "form (as opposed to substance); formality"}
    ],
  },
  {
    kanji: "弐",
    keyword: "II/two",
    reading: "ふた.つ / そえ / ニ / ジ",
    radical: "弐",
    componentHint: "classical radical 154",
    examples: [
      {word: "弐心", reading: "ふたごころ", meaning: "duplicity; treachery"},
      {word: "弐拾", reading: "にじゅう", meaning: "twenty"},
      {word: "弐つ", reading: "ふたつ", meaning: "two (used in old or legal documents)"}
    ],
  },
  {
    kanji: "武",
    keyword: "warrior/military",
    reading: "たけ / たけ.し / ブ / ム",
    radical: "武",
    componentHint: "classical radical 77",
    examples: [
      {word: "武器", reading: "ぶき", meaning: "weapon; arms"},
      {word: "武蔵", reading: "むさし", meaning: "Musashi; historical region consisting of modern Tokyo, Saitama and eastern Kanagawa prefectures"},
      {word: "武士", reading: "ぶし", meaning: "warrior; samurai"}
    ],
  },
  {
    kanji: "糸",
    keyword: "thread",
    reading: "いと / シ",
    radical: "糸",
    componentHint: "classical radical 120",
    examples: [
      {word: "毛糸", reading: "けいと", meaning: "knitting wool"},
      {word: "糸口", reading: "いとぐち", meaning: "thread end; beginning"},
      {word: "一糸", reading: "いっし", meaning: "thread; strand"}
    ],
  },
  {
    kanji: "前",
    keyword: "in front/before",
    reading: "まえ / -まえ / ゼン",
    radical: "前",
    componentHint: "classical radical 18",
    examples: [
      {word: "お前", reading: "おまえ", meaning: "you (formerly honorific, now sometimes derog. term referring to an equal or inferior); presence (of a god, nobleman, etc.)"},
      {word: "名前", reading: "なまえ", meaning: "name; full name"},
      {word: "以前", reading: "いぜん", meaning: "ago; since"}
    ],
  },
  {
    kanji: "後",
    keyword: "behind/back",
    reading: "のち / うし.ろ / うしろ / あと / ゴ / コウ",
    radical: "後",
    componentHint: "classical radical 60",
    examples: [
      {word: "最後", reading: "さいご", meaning: "last; end"},
      {word: "後ろ", reading: "うしろ", meaning: "back; behind"},
      {word: "その後", reading: "そのご", meaning: "after that; afterwards"}
    ],
  },
  {
    kanji: "午",
    keyword: "noon/sign of the horse",
    reading: "うま / ゴ",
    radical: "午",
    componentHint: "classical radical 24",
    examples: [
      {word: "午後", reading: "ごご", meaning: "afternoon; p.m."},
      {word: "午前", reading: "ごぜん", meaning: "morning; a.m."},
      {word: "正午", reading: "しょうご", meaning: "noon; mid-day"}
    ],
  },
  {
    kanji: "牛",
    keyword: "cow",
    reading: "うし / ギュウ",
    radical: "牛",
    componentHint: "classical radical 93",
    examples: [
      {word: "牛乳", reading: "ぎゅうにゅう", meaning: "(cow's) milk"},
      {word: "牛肉", reading: "ぎゅうにく", meaning: "beef"},
      {word: "闘牛", reading: "とうぎゅう", meaning: "bullfighting; bullfight"}
    ],
  },
  {
    kanji: "年",
    keyword: "year/counter for years",
    reading: "とし / ネン",
    radical: "年",
    componentHint: "classical radical 51",
    examples: [
      {word: "少年", reading: "しょうねん", meaning: "boy; juvenile"},
      {word: "青年", reading: "せいねん", meaning: "youth; young man"},
      {word: "年間", reading: "ねんかん", meaning: "year (period of)"}
    ],
  },
  {
    kanji: "件",
    keyword: "affair/case",
    reading: "くだん / ケン",
    radical: "件",
    componentHint: "classical radical 9",
    examples: [
      {word: "事件", reading: "じけん", meaning: "event; affair"},
      {word: "条件", reading: "じょうけん", meaning: "condition; conditions"},
      {word: "用件", reading: "ようけん", meaning: "business; thing to be done"}
    ],
  },
  {
    kanji: "条",
    keyword: "article/clause",
    reading: "えだ / すじ / ジョウ / チョウ / デキ",
    radical: "条",
    componentHint: "classical radical 75",
    examples: [
      {word: "条件", reading: "じょうけん", meaning: "condition; conditions"},
      {word: "条約", reading: "じょうやく", meaning: "treaty; pact"},
      {word: "無条件", reading: "むじょうけん", meaning: "unconditional"}
    ],
  },
  {
    kanji: "化",
    keyword: "change/take the form of",
    reading: "ば.ける / ば.かす / ふ.ける / け.する / カ / ケ",
    radical: "化",
    componentHint: "classical radical 21",
    examples: [
      {word: "変化", reading: "へんか", meaning: "change; variation"},
      {word: "文化", reading: "ぶんか", meaning: "culture; civilization"},
      {word: "化粧", reading: "けしょう", meaning: "make-up; makeup"}
    ],
  },
  {
    kanji: "花",
    keyword: "flower",
    reading: "はな / カ / ケ",
    radical: "花",
    componentHint: "classical radical 140",
    examples: [
      {word: "花鶏", reading: "あとり", meaning: "brambling (bird) (Fringilla montifringilla)"},
      {word: "梨花", reading: "りか", meaning: "pear blossoms"},
      {word: "花嫁", reading: "はなよめ", meaning: "bride"}
    ],
  },
  {
    kanji: "北",
    keyword: "north",
    reading: "きた / ホク",
    radical: "北",
    componentHint: "classical radical 21",
    examples: [
      {word: "北海道", reading: "ほっかいどう", meaning: "Hokkaido (island, prefectural-level administrative unit)"},
      {word: "敗北", reading: "はいぼく", meaning: "defeat; to be defeated"},
      {word: "東北", reading: "とうほく", meaning: "north-east; Tohoku (northernmost six prefectures of Honshu)"}
    ],
  },
  {
    kanji: "比",
    keyword: "compare/race",
    reading: "くら.べる / ヒ",
    radical: "比",
    componentHint: "classical radical 81",
    examples: [
      {word: "比べる", reading: "くらべる", meaning: "to compare; to make a comparison"},
      {word: "比較", reading: "ひかく", meaning: "comparison"},
      {word: "比較的", reading: "ひかくてき", meaning: "comparative; relative"}
    ],
  },
  {
    kanji: "背",
    keyword: "stature/height",
    reading: "せ / せい / そむ.く / そむ.ける / ハイ",
    radical: "背",
    componentHint: "classical radical 130",
    examples: [
      {word: "背中", reading: "せなか", meaning: "back (of body)"},
      {word: "背後", reading: "はいご", meaning: "back; rear"},
      {word: "背負う", reading: "せおう", meaning: "to be burdened with; to take responsibility for"}
    ],
  },
  {
    kanji: "車",
    keyword: "car",
    reading: "くるま / シャ",
    radical: "車",
    componentHint: "classical radical 159",
    examples: [
      {word: "馬車", reading: "ばしゃ", meaning: "(horse-drawn) coach; carriage"},
      {word: "電車", reading: "でんしゃ", meaning: "train; electric train"},
      {word: "自動車", reading: "じどうしゃ", meaning: "automobile"}
    ],
  },
  {
    kanji: "気",
    keyword: "spirit/mind",
    reading: "いき / キ / ケ",
    radical: "気",
    componentHint: "classical radical 84",
    examples: [
      {word: "気づく", reading: "きづく", meaning: "to notice; to recognize"},
      {word: "気持ち", reading: "きもち", meaning: "feeling; sensation"},
      {word: "気がつく", reading: "きがつく", meaning: "to notice; to become aware"}
    ],
  },
  {
    kanji: "汽",
    keyword: "vapor/steam",
    reading: "キ",
    radical: "汽",
    componentHint: "classical radical 85",
    examples: [
      {word: "汽車", reading: "きしゃ", meaning: "train (sometimes specifically a steam train)"},
      {word: "汽船", reading: "きせん", meaning: "steamship; steamboat"},
      {word: "汽笛", reading: "きてき", meaning: "steam whistle"}
    ],
  },
  {
    kanji: "性",
    keyword: "sex/gender",
    reading: "さが / セイ / ショウ",
    radical: "性",
    componentHint: "classical radical 61",
    examples: [
      {word: "女性", reading: "じょせい", meaning: "woman; female"},
      {word: "性格", reading: "せいかく", meaning: "character; personality"},
      {word: "男性", reading: "だんせい", meaning: "man; male"}
    ],
  },
  {
    kanji: "畑",
    keyword: "farm/field",
    reading: "はた / はたけ / -ばたけ",
    radical: "畑",
    componentHint: "classical radical 102",
    examples: [
      {word: "田畑", reading: "たはた", meaning: "fields (of rice and other crops)"},
      {word: "麦畑", reading: "むぎばたけ", meaning: "wheat field; barley field"},
      {word: "畑地", reading: "はたち", meaning: "farmland"}
    ],
  },
  {
    kanji: "青",
    keyword: "blue/green",
    reading: "あお / あお- / あお.い / セイ / ショウ",
    radical: "青",
    componentHint: "classical radical 174",
    examples: [
      {word: "青年", reading: "せいねん", meaning: "youth; young man"},
      {word: "青い", reading: "あおい", meaning: "blue; green"},
      {word: "青白い", reading: "あおじろい", meaning: "pale; pallid"}
    ],
  },
  {
    kanji: "麦",
    keyword: "barley/wheat",
    reading: "むぎ / バク",
    radical: "麦",
    componentHint: "classical radical 199",
    examples: [
      {word: "蕎麦", reading: "そば", meaning: "buckwheat (Fagopyrum esculentum); soba"},
      {word: "小麦", reading: "こむぎ", meaning: "wheat"},
      {word: "麦茶", reading: "むぎちゃ", meaning: "barley tea"}
    ],
  },
  {
    kanji: "素",
    keyword: "elementary/principle",
    reading: "もと / ソ / ス",
    radical: "素",
    componentHint: "classical radical 120",
    examples: [
      {word: "素直", reading: "すなお", meaning: "obedient; meek"},
      {word: "素早い", reading: "すばやい", meaning: "fast; quick"},
      {word: "素晴らしい", reading: "すばらしい", meaning: "wonderful; splendid"}
    ],
  },
  {
    kanji: "毒",
    keyword: "poison/virus",
    reading: "ドク",
    radical: "毒",
    componentHint: "classical radical 80",
    examples: [
      {word: "気の毒", reading: "きのどく", meaning: "pitiful; unfortunate"},
      {word: "中毒", reading: "ちゅうどく", meaning: "poisoning; addiction"},
      {word: "毒殺", reading: "どくさつ", meaning: "poisoning; kill by poison"}
    ],
  },
  {
    kanji: "先",
    keyword: "before/ahead",
    reading: "さき / ま.ず / セン",
    radical: "先",
    componentHint: "classical radical 10",
    examples: [
      {word: "先生", reading: "せんせい", meaning: "teacher; master"},
      {word: "先輩", reading: "せんぱい", meaning: "senior (at work or school); superior"},
      {word: "指先", reading: "ゆびさき", meaning: "fingertip; finger"}
    ],
  },
  {
    kanji: "洗",
    keyword: "wash/inquire into",
    reading: "あら.う / セン",
    radical: "洗",
    componentHint: "classical radical 85",
    examples: [
      {word: "洗う", reading: "あらう", meaning: "to wash; to investigate"},
      {word: "洗濯", reading: "せんたく", meaning: "washing; laundry"},
      {word: "洗面", reading: "せんめん", meaning: "wash up (one's face); have a wash"}
    ],
  },
  {
    kanji: "元",
    keyword: "beginning/former time",
    reading: "もと / ゲン / ガン",
    radical: "元",
    componentHint: "classical radical 10",
    examples: [
      {word: "元気", reading: "げんき", meaning: "lively; full of spirit"},
      {word: "足元", reading: "あしもと", meaning: "at one's feet; underfoot"},
      {word: "口元", reading: "くちもと", meaning: "mouth; lips"}
    ],
  },
  {
    kanji: "光",
    keyword: "ray/light",
    reading: "ひか.る / ひかり / コウ",
    radical: "光",
    componentHint: "classical radical 10",
    examples: [
      {word: "光る", reading: "ひかる", meaning: "to shine; to glitter"},
      {word: "光景", reading: "こうけい", meaning: "scene; spectacle"},
      {word: "観光", reading: "かんこう", meaning: "sightseeing"}
    ],
  },
  {
    kanji: "去",
    keyword: "gone/past",
    reading: "さ.る / -さ.る / キョ / コ",
    radical: "去",
    componentHint: "classical radical 28",
    examples: [
      {word: "去る", reading: "さる", meaning: "to leave; to go away"},
      {word: "過去", reading: "かこ", meaning: "the past; bygone days"},
      {word: "去年", reading: "きょねん", meaning: "last year"}
    ],
  },
  {
    kanji: "法",
    keyword: "method/law",
    reading: "のり / ホウ / ハッ / ホッ",
    radical: "法",
    componentHint: "classical radical 85",
    examples: [
      {word: "方法", reading: "ほうほう", meaning: "method; process"},
      {word: "魔法", reading: "まほう", meaning: "magic; witchcraft"},
      {word: "法律", reading: "ほうりつ", meaning: "law"}
    ],
  },
  {
    kanji: "走",
    keyword: "run",
    reading: "はし.る / ソウ",
    radical: "走",
    componentHint: "classical radical 156",
    examples: [
      {word: "走る", reading: "はしる", meaning: "to run; to travel (movement of vehicles)"},
      {word: "走り出す", reading: "はしりだす", meaning: "to begin to run; to start running"},
      {word: "脱走", reading: "だっそう", meaning: "desertion; escape"}
    ],
  },
  {
    kanji: "当",
    keyword: "hit/right",
    reading: "あ.たる / あ.たり / あ.てる / あ.て / トウ",
    radical: "当",
    componentHint: "classical radical 42",
    examples: [
      {word: "本当に", reading: "ほんとうに", meaning: "really; truly"},
      {word: "当然", reading: "とうぜん", meaning: "natural; as a matter of course"},
      {word: "当時", reading: "とうじ", meaning: "at that time; in those days"}
    ],
  },
  {
    kanji: "思",
    keyword: "think",
    reading: "おも.う / おもえら.く / おぼ.す / シ",
    radical: "思",
    componentHint: "classical radical 61",
    examples: [
      {word: "思う", reading: "おもう", meaning: "to think; to consider"},
      {word: "思い出す", reading: "おもいだす", meaning: "to recall; to remember"},
      {word: "思える", reading: "おもえる", meaning: "to seem; to appear likely"}
    ],
  },
  {
    kanji: "早",
    keyword: "early/fast",
    reading: "はや.い / はや / はや- / はや.まる / ソウ / サッ",
    radical: "早",
    componentHint: "classical radical 72",
    examples: [
      {word: "早い", reading: "はやい", meaning: "fast; quick"},
      {word: "素早い", reading: "すばやい", meaning: "fast; quick"},
      {word: "早速", reading: "さっそく", meaning: "at once; immediately"}
    ],
  },
  {
    kanji: "草",
    keyword: "grass/weeds",
    reading: "くさ / くさ- / -ぐさ / ソウ",
    radical: "草",
    componentHint: "classical radical 140",
    examples: [
      {word: "煙草", reading: "たばこ", meaning: "tobacco; cigarette"},
      {word: "仕草", reading: "しぐさ", meaning: "action; acting"},
      {word: "草原", reading: "そうげん", meaning: "grass-covered plain; grasslands"}
    ],
  },
  {
    kanji: "朝",
    keyword: "morning/dynasty",
    reading: "あさ / チョウ",
    radical: "朝",
    componentHint: "classical radical 74",
    examples: [
      {word: "今朝", reading: "けさ", meaning: "this morning"},
      {word: "朝鮮", reading: "ちょうせん", meaning: "Korea"},
      {word: "朝食", reading: "ちょうしょく", meaning: "breakfast"}
    ],
  },
  {
    kanji: "潮",
    keyword: "tide/salt water",
    reading: "しお / うしお / チョウ",
    radical: "潮",
    componentHint: "classical radical 85",
    examples: [
      {word: "紅潮", reading: "こうちょう", meaning: "flush; blush"},
      {word: "血潮", reading: "ちしお", meaning: "blood spilt from the body; blood circulating within the body (often as a metaphor for strong emotion or hot-bloodedness)"},
      {word: "風潮", reading: "ふうちょう", meaning: "tide; current"}
    ],
  },
  {
    kanji: "形",
    keyword: "shape/form",
    reading: "かた / -がた / かたち / なり / ケイ / ギョウ",
    radical: "形",
    componentHint: "classical radical 59",
    examples: [
      {word: "人形", reading: "にんぎょう", meaning: "doll; puppet"},
      {word: "形式", reading: "けいしき", meaning: "form (as opposed to substance); formality"},
      {word: "形成", reading: "けいせい", meaning: "formation; molding"}
    ],
  },
  {
    kanji: "発",
    keyword: "departure/discharge",
    reading: "た.つ / あば.く / おこ.る / つか.わす / ハツ / ホツ",
    radical: "発",
    componentHint: "classical radical 105",
    examples: [
      {word: "発見", reading: "はっけん", meaning: "discovery; detection"},
      {word: "出発", reading: "しゅっぱつ", meaning: "departure"},
      {word: "爆発", reading: "ばくはつ", meaning: "explosion; detonation"}
    ],
  },
  {
    kanji: "廃",
    keyword: "abolish/obsolete",
    reading: "すた.れる / すた.る / ハイ",
    radical: "廃",
    componentHint: "classical radical 53",
    examples: [
      {word: "廃墟", reading: "はいきょ", meaning: "ruins; abandoned building"},
      {word: "荒廃", reading: "こうはい", meaning: "ruin; destruction"},
      {word: "廃止", reading: "はいし", meaning: "abolition; repeal"}
    ],
  },
  {
    kanji: "音",
    keyword: "sound/noise",
    reading: "おと / ね / オン / イン / -ノン",
    radical: "音",
    componentHint: "classical radical 180",
    examples: [
      {word: "音楽", reading: "おんがく", meaning: "music; musical movement"},
      {word: "足音", reading: "あしおと", meaning: "footsteps (sound)"},
      {word: "物音", reading: "ものおと", meaning: "sounds"}
    ],
  },
  {
    kanji: "意",
    keyword: "idea/mind",
    reading: "イ",
    radical: "意",
    componentHint: "classical radical 61",
    examples: [
      {word: "意味", reading: "いみ", meaning: "meaning; significance"},
      {word: "意識", reading: "いしき", meaning: "consciousness; awareness"},
      {word: "用意", reading: "ようい", meaning: "preparation; arrangements"}
    ],
  },
  {
    kanji: "作",
    keyword: "make/production",
    reading: "つく.る / つく.り / -づく.り / サク / サ",
    radical: "作",
    componentHint: "classical radical 9",
    examples: [
      {word: "作る", reading: "つくる", meaning: "to make; to produce"},
      {word: "作品", reading: "さくひん", meaning: "work (e.g. book, film, composition, etc.); opus"},
      {word: "作業", reading: "さぎょう", meaning: "work; operation"}
    ],
  },
  {
    kanji: "昨",
    keyword: "yesterday/previous",
    reading: "サク",
    radical: "昨",
    componentHint: "classical radical 72",
    examples: [
      {word: "昨日", reading: "きのう", meaning: "yesterday"},
      {word: "昨夜", reading: "さくや", meaning: "evening; last night"},
      {word: "昨年", reading: "さくねん", meaning: "last year"}
    ],
  },
  {
    kanji: "雨",
    keyword: "rain",
    reading: "あめ / あま- / -さめ / ウ",
    radical: "雨",
    componentHint: "classical radical 173",
    examples: [
      {word: "雨戸", reading: "あまど", meaning: "sliding storm shutter"},
      {word: "梅雨", reading: "つゆ", meaning: "rainy season; rain during the rainy season"},
      {word: "豪雨", reading: "ごうう", meaning: "torrential rain; heavy rain"}
    ],
  },
  {
    kanji: "電",
    keyword: "electricity",
    reading: "デン",
    radical: "電",
    componentHint: "classical radical 173",
    examples: [
      {word: "電話", reading: "でんわ", meaning: "telephone call; phone call"},
      {word: "電車", reading: "でんしゃ", meaning: "train; electric train"},
      {word: "電気", reading: "でんき", meaning: "electricity; (electric) light"}
    ],
  },
  {
    kanji: "頁",
    keyword: "page/leaf",
    reading: "ぺえじ / おおがい / かしら / ケツ",
    radical: "頁",
    componentHint: "classical radical 181",
    examples: [
      {word: "頁岩", reading: "けつがん", meaning: "shale"},
      {word: "頁数", reading: "ページすう", meaning: "number of pages"},
      {word: "改頁", reading: "かいページ", meaning: "repagination; new page"}
    ],
  },
  {
    kanji: "首",
    keyword: "neck/counter for songs and poems",
    reading: "くび / シュ",
    radical: "首",
    componentHint: "classical radical 185",
    examples: [
      {word: "手首", reading: "てくび", meaning: "wrist"},
      {word: "首相", reading: "しゅしょう", meaning: "Prime Minister; Chancellor (Germany, Austria, etc.)"},
      {word: "首筋", reading: "くびすじ", meaning: "nape of the neck; back of the neck"}
    ],
  },
  {
    kanji: "道",
    keyword: "road-way/street",
    reading: "みち / ドウ / トウ",
    radical: "道",
    componentHint: "classical radical 162",
    examples: [
      {word: "道路", reading: "どうろ", meaning: "road; highway"},
      {word: "道具", reading: "どうぐ", meaning: "tool; implement"},
      {word: "街道", reading: "かいどう", meaning: "highway (esp. one existing from the Edo period); main road"}
    ],
  },
  {
    kanji: "通",
    keyword: "traffic/pass through",
    reading: "とお.る / とお.り / -とお.り / -どお.り / ツウ / ツ",
    radical: "通",
    componentHint: "classical radical 162",
    examples: [
      {word: "通る", reading: "とおる", meaning: "to go by; to go past"},
      {word: "通り", reading: "とおり", meaning: "avenue; street"},
      {word: "普通", reading: "ふつう", meaning: "general; ordinary"}
    ],
  },
  {
    kanji: "乳",
    keyword: "milk/breasts",
    reading: "ちち / ち / ニュウ",
    radical: "乳",
    componentHint: "classical radical 5",
    examples: [
      {word: "乳房", reading: "ちぶさ", meaning: "breast; nipple"},
      {word: "乳母", reading: "おんば", meaning: "wet nurse; nursing mother"},
      {word: "牛乳", reading: "ぎゅうにゅう", meaning: "(cow's) milk"}
    ],
  },
  {
    kanji: "豆",
    keyword: "beans/pea",
    reading: "まめ / まめ- / トウ / ズ",
    radical: "豆",
    componentHint: "classical radical 151",
    examples: [
      {word: "豆腐", reading: "とうふ", meaning: "tofu; bean-curd"},
      {word: "納豆", reading: "なっとう", meaning: "natto (fermented soybeans)"},
      {word: "小豆", reading: "あずき", meaning: "adzuki beans"}
    ],
  },
  {
    kanji: "頭",
    keyword: "head/counter for large animals",
    reading: "あたま / かしら / -がしら / かぶり / トウ / ズ / ト",
    radical: "頭",
    componentHint: "classical radical 181",
    examples: [
      {word: "頭上", reading: "ずじょう", meaning: "overhead; high in sky"},
      {word: "先頭", reading: "せんとう", meaning: "head; lead"},
      {word: "番頭", reading: "ばんとう", meaning: "(head) clerk"}
    ],
  },
  {
    kanji: "予",
    keyword: "beforehand/previous",
    reading: "あらかじ.め / ヨ / シャ",
    radical: "予",
    componentHint: "classical radical 6",
    examples: [
      {word: "予想", reading: "よそう", meaning: "expectation; anticipation"},
      {word: "予定", reading: "よてい", meaning: "plans; arrangement"},
      {word: "予感", reading: "よかん", meaning: "presentiment; premonition"}
    ],
  },
  {
    kanji: "矛",
    keyword: "halberd/arms",
    reading: "ほこ / ム / ボウ",
    radical: "矛",
    componentHint: "classical radical 110",
    examples: [
      {word: "矛盾", reading: "むじゅん", meaning: "contradiction; inconsistency"},
      {word: "矛先", reading: "ほこさき", meaning: "point of spear; spearhead"},
      {word: "珍矛", reading: "ちんぽこ", meaning: "penis"}
    ],
  },
  {
    kanji: "預",
    keyword: "deposit/custody",
    reading: "あず.ける / あず.かる / ヨ",
    radical: "預",
    componentHint: "classical radical 181",
    examples: [
      {word: "預ける", reading: "あずける", meaning: "to give into custody; to leave (a child) in the care of"},
      {word: "預かる", reading: "あずかる", meaning: "to look after; to take care of"},
      {word: "預金", reading: "よきん", meaning: "deposit; bank account"}
    ],
  },
  {
    kanji: "句",
    keyword: "phrase/clause",
    reading: "ク",
    radical: "句",
    componentHint: "classical radical 30",
    examples: [
      {word: "文句", reading: "もんく", meaning: "complaint; grumbling"},
      {word: "絶句", reading: "ぜっく", meaning: "being lost for words; becoming speechless"},
      {word: "一句", reading: "いっく", meaning: "phrase (verse, line); one haiku-poem"}
    ],
  },
  {
    kanji: "旬",
    keyword: "decameron/ten-day period",
    reading: "ジュン / シュン",
    radical: "旬",
    componentHint: "classical radical 72",
    examples: [
      {word: "下旬", reading: "げじゅん", meaning: "last third of a month; 21st to the last day of a month"},
      {word: "中旬", reading: "ちゅうじゅん", meaning: "middle of a month; second third of a month"},
      {word: "上旬", reading: "じょうじゅん", meaning: "first 10 days of month"}
    ],
  },
  {
    kanji: "勺",
    keyword: "ladle/one tenth of a go",
    reading: "シャク",
    radical: "勺",
    componentHint: "classical radical 20",
    examples: [
      {word: "一勺", reading: "いっしゃく", meaning: "one shaku"},
      {word: "勺", reading: "しゃく", meaning: "18 ml (one-tenth of a go); 0.033 meters square (one-hundredth of a tsubo)"},
      {word: "勺", reading: "シャク", meaning: "kanji entry"}
    ],
  },
  {
    kanji: "的",
    keyword: "bull's eye/mark",
    reading: "まと / テキ",
    radical: "的",
    componentHint: "classical radical 106",
    examples: [
      {word: "目的", reading: "もくてき", meaning: "purpose; goal"},
      {word: "徹底的", reading: "てっていてき", meaning: "thorough; complete"},
      {word: "決定的", reading: "けっていてき", meaning: "definite; final"}
    ],
  },
  {
    kanji: "約",
    keyword: "promise/approximately",
    reading: "つづ.まる / つづ.める / つづま.やか / ヤク",
    radical: "約",
    componentHint: "classical radical 120",
    examples: [
      {word: "約束", reading: "やくそく", meaning: "promise; agreement"},
      {word: "契約", reading: "けいやく", meaning: "contract; compact"},
      {word: "婚約", reading: "こんやく", meaning: "engagement; betrothal"}
    ],
  },
  {
    kanji: "勿",
    keyword: "not/must not",
    reading: "なか.れ / なし / モチ / ブツ / ボツ",
    radical: "勿",
    componentHint: "classical radical 20",
    examples: [
      {word: "勿論", reading: "もちろん", meaning: "of course; certainly"},
      {word: "勿体ない", reading: "もったいない", meaning: "impious; profane"},
      {word: "勿体", reading: "もったい", meaning: "superior airs; air of importance"}
    ],
  },
  {
    kanji: "物",
    keyword: "thing/object",
    reading: "もの / もの- / ブツ / モツ",
    radical: "物",
    componentHint: "classical radical 93",
    examples: [
      {word: "人物", reading: "じんぶつ", meaning: "person; character"},
      {word: "建物", reading: "たてもの", meaning: "building"},
      {word: "動物", reading: "どうぶつ", meaning: "animal"}
    ],
  },
  {
    kanji: "方",
    keyword: "direction/person",
    reading: "かた / -かた / -がた / ホウ",
    radical: "方",
    componentHint: "classical radical 70",
    examples: [
      {word: "方法", reading: "ほうほう", meaning: "method; process"},
      {word: "仕方", reading: "しかた", meaning: "way; method"},
      {word: "一方", reading: "いっぽう", meaning: "one (esp. of two); the other"}
    ],
  },
  {
    kanji: "防",
    keyword: "ward off/defend",
    reading: "ふせ.ぐ / ボウ",
    radical: "防",
    componentHint: "classical radical 170",
    examples: [
      {word: "防ぐ", reading: "ふせぐ", meaning: "to defend (against); to protect"},
      {word: "防衛", reading: "ぼうえい", meaning: "defense; defence"},
      {word: "防御", reading: "ぼうぎょ", meaning: "defense; defence"}
    ],
  },
  {
    kanji: "面",
    keyword: "mask/face",
    reading: "おも / おもて / つら / メン / ベン",
    radical: "面",
    componentHint: "classical radical 176",
    examples: [
      {word: "面白い", reading: "おもしろい", meaning: "interesting; amusing"},
      {word: "地面", reading: "じめん", meaning: "ground; earth's surface"},
      {word: "正面", reading: "しょうめん", meaning: "front; frontage"}
    ],
  },
  {
    kanji: "画",
    keyword: "brush-stroke/picture",
    reading: "えが.く / かく.する / かぎ.る / はかりごと / ガ / カク / エ",
    radical: "画",
    componentHint: "classical radical 102",
    examples: [
      {word: "計画", reading: "けいかく", meaning: "plan; project"},
      {word: "映画", reading: "えいが", meaning: "movie; film"},
      {word: "画面", reading: "がめん", meaning: "terminal screen; scene"}
    ],
  },
  {
    kanji: "両",
    keyword: "both/old Japanese coin",
    reading: "てる / ふたつ / リョウ",
    radical: "両",
    componentHint: "classical radical 1",
    examples: [
      {word: "両手", reading: "りょうて", meaning: "(with) both hands; approvingly"},
      {word: "両親", reading: "りょうしん", meaning: "parents; both parents"},
      {word: "両方", reading: "りょうほう", meaning: "both; both sides"}
    ],
  },
  {
    kanji: "岡",
    keyword: "mount/hill",
    reading: "おか / コウ",
    radical: "岡",
    componentHint: "classical radical 46",
    examples: [
      {word: "福岡", reading: "ふくおか", meaning: "Fukuoka (city)"},
      {word: "静岡", reading: "しずおか", meaning: "Shizuoka (city)"},
      {word: "岡っ引き", reading: "おかっぴき", meaning: "hired thief taker (Edo period); private secret policeman"}
    ],
  },
  {
    kanji: "満",
    keyword: "full/fullness",
    reading: "み.ちる / み.つ / み.たす / マン / バン",
    radical: "満",
    componentHint: "classical radical 85",
    examples: [
      {word: "満足", reading: "まんぞく", meaning: "satisfaction; contentment"},
      {word: "不満", reading: "ふまん", meaning: "dissatisfaction; displeasure"},
      {word: "満ちる", reading: "みちる", meaning: "to be full; to wax (e.g. moon)"}
    ],
  },
  {
    kanji: "顔",
    keyword: "face/expression",
    reading: "かお / ガン",
    radical: "顔",
    componentHint: "classical radical 181",
    examples: [
      {word: "笑顔", reading: "えがお", meaning: "smiling face; smile"},
      {word: "顔色", reading: "かおいろ", meaning: "complexion; one's colour"},
      {word: "顔つき", reading: "かおつき", meaning: "(outward) looks; features"}
    ],
  },
  {
    kanji: "産",
    keyword: "products/bear",
    reading: "う.む / う.まれる / うぶ- / む.す / サン",
    radical: "産",
    componentHint: "classical radical 100",
    examples: [
      {word: "財産", reading: "ざいさん", meaning: "property; fortune"},
      {word: "産む", reading: "うむ", meaning: "to give birth; to deliver"},
      {word: "生産", reading: "せいさん", meaning: "production; manufacture"}
    ],
  },
  {
    kanji: "同",
    keyword: "same/agree",
    reading: "おな.じ / ドウ",
    radical: "同",
    componentHint: "classical radical 30",
    examples: [
      {word: "同じ", reading: "おなじ", meaning: "same; identical"},
      {word: "同時に", reading: "どうじに", meaning: "coincident with; while"},
      {word: "同様", reading: "どうよう", meaning: "identical; equal to"}
    ],
  },
  {
    kanji: "向",
    keyword: "yonder/facing",
    reading: "む.く / む.い / -む.き / む.ける / コウ",
    radical: "向",
    componentHint: "classical radical 30",
    examples: [
      {word: "向かう", reading: "むかう", meaning: "to face; to go towards"},
      {word: "向ける", reading: "むける", meaning: "to turn towards; to point"},
      {word: "向こう", reading: "むこう", meaning: "opposite side; other side"}
    ],
  },
  {
    kanji: "尚",
    keyword: "esteem/furthermore",
    reading: "なお / ショウ",
    radical: "尚",
    componentHint: "classical radical 42",
    examples: [
      {word: "和尚", reading: "おしょう", meaning: "preceptor or high priest (esp. in Zen or Pure Land Buddhism); preceptor or high priest (in Tendai or Kegon Buddhism)"},
      {word: "高尚", reading: "こうしょう", meaning: "high; noble"},
      {word: "尚更", reading: "なおさら", meaning: "all the more; still less"}
    ],
  },
  {
    kanji: "高",
    keyword: "tall/high",
    reading: "たか.い / たか / -だか / たか.まる / コウ",
    radical: "高",
    componentHint: "classical radical 189",
    examples: [
      {word: "高い", reading: "たかい", meaning: "high; tall"},
      {word: "最高", reading: "さいこう", meaning: "highest; supreme"},
      {word: "高校", reading: "こうこう", meaning: "senior high school; high school"}
    ],
  },
  {
    kanji: "圧",
    keyword: "pressure/push",
    reading: "お.す / へ.す / おさ.える / お.さえる / アツ / エン / オウ",
    radical: "圧",
    componentHint: "classical radical 32",
    examples: [
      {word: "圧倒的", reading: "あっとうてき", meaning: "overwhelming"},
      {word: "圧力", reading: "あつりょく", meaning: "pressure; stress"},
      {word: "圧迫", reading: "あっぱく", meaning: "pressure; coercion"}
    ],
  },
  {
    kanji: "地",
    keyword: "ground/earth",
    reading: "チ / ジ",
    radical: "地",
    componentHint: "classical radical 32",
    examples: [
      {word: "土地", reading: "とち", meaning: "plot of land; lot"},
      {word: "地面", reading: "じめん", meaning: "ground; earth's surface"},
      {word: "地球", reading: "ちきゅう", meaning: "the earth; the globe"}
    ],
  },
  {
    kanji: "池",
    keyword: "pond/cistern",
    reading: "いけ / チ",
    radical: "池",
    componentHint: "classical radical 85",
    examples: [
      {word: "電池", reading: "でんち", meaning: "battery"},
      {word: "溜池", reading: "ためいけ", meaning: "reservoir; pond"},
      {word: "貯水池", reading: "ちょすいち", meaning: "reservoir"}
    ],
  },
  {
    kanji: "他",
    keyword: "other/another",
    reading: "ほか / タ",
    radical: "他",
    componentHint: "classical radical 9",
    examples: [
      {word: "他人", reading: "たにん", meaning: "another person; other people"},
      {word: "その他", reading: "そのた", meaning: "etc.; otherwise"},
      {word: "他者", reading: "たしゃ", meaning: "another person; others"}
    ],
  },
  {
    kanji: "集",
    keyword: "gather/meet",
    reading: "あつ.まる / あつ.める / つど.う / シュウ",
    radical: "集",
    componentHint: "classical radical 172",
    examples: [
      {word: "集まる", reading: "あつまる", meaning: "to gather; to collect"},
      {word: "集める", reading: "あつめる", meaning: "to collect; to assemble"},
      {word: "集中", reading: "しゅうちゅう", meaning: "concentration; convergence"}
    ],
  },
  {
    kanji: "進",
    keyword: "advance/proceed",
    reading: "すす.む / すす.める / シン",
    radical: "進",
    componentHint: "classical radical 162",
    examples: [
      {word: "進む", reading: "すすむ", meaning: "to advance; to go forward"},
      {word: "進める", reading: "すすめる", meaning: "to advance; to promote"},
      {word: "前進", reading: "ぜんしん", meaning: "advance; drive"}
    ],
  },
  {
    kanji: "込",
    keyword: "crowded/mixture",
    reading: "-こ.む / こ.む / こ.み / -こ.み",
    radical: "込",
    componentHint: "classical radical 162",
    examples: [
      {word: "込む", reading: "こむ", meaning: "to be crowded; to be packed"},
      {word: "飛び込む", reading: "とびこむ", meaning: "to jump in; to leap in"},
      {word: "突っ込む", reading: "つっこむ", meaning: "to thrust (something) into (something); to cram"}
    ],
  },
  {
    kanji: "斤",
    keyword: "axe/1.32 lb",
    reading: "キン",
    radical: "斤",
    componentHint: "classical radical 69",
    examples: [
      {word: "斤量", reading: "きんりょう", meaning: "weight"},
      {word: "斤目", reading: "きんめ", meaning: "weight"},
      {word: "一斤", reading: "いっきん", meaning: "1 kin (~0.6kg); 1 loaf of bread"}
    ],
  },
  {
    kanji: "近",
    keyword: "near/early",
    reading: "ちか.い / キン / コン",
    radical: "近",
    componentHint: "classical radical 162",
    examples: [
      {word: "近い", reading: "ちかい", meaning: "near; close"},
      {word: "近づく", reading: "ちかづく", meaning: "to approach; to draw near"},
      {word: "近く", reading: "ちかく", meaning: "near; neighbourhood"}
    ],
  },
  {
    kanji: "辺",
    keyword: "environs/boundary",
    reading: "あた.り / ほと.り / -べ / ヘン",
    radical: "辺",
    componentHint: "classical radical 162",
    examples: [
      {word: "辺り", reading: "あたり", meaning: "on the bank of; by the side of (e.g. a river, pond)"},
      {word: "周辺", reading: "しゅうへん", meaning: "circumference; outskirts"},
      {word: "この辺", reading: "このへん", meaning: "this area; around here"}
    ],
  },
  {
    kanji: "最",
    keyword: "utmost/most",
    reading: "もっと.も / つま / サイ / シュ",
    radical: "最",
    componentHint: "classical radical 73",
    examples: [
      {word: "最後", reading: "さいご", meaning: "last; end"},
      {word: "最初", reading: "さいしょ", meaning: "beginning; outset"},
      {word: "最も", reading: "もっとも", meaning: "most; extremely"}
    ],
  },
  {
    kanji: "皿",
    keyword: "dish/a helping",
    reading: "さら / ベイ",
    radical: "皿",
    componentHint: "classical radical 108",
    examples: [
      {word: "灰皿", reading: "はいざら", meaning: "ashtray"},
      {word: "大皿", reading: "おおざら", meaning: "large plate; platter"},
      {word: "小皿", reading: "こざら", meaning: "small dish"}
    ],
  },
  {
    kanji: "血",
    keyword: "blood",
    reading: "ち / ケツ",
    radical: "血",
    componentHint: "classical radical 143",
    examples: [
      {word: "血液", reading: "けつえき", meaning: "blood"},
      {word: "吸血鬼", reading: "きゅうけつき", meaning: "vampire; bloodsucker"},
      {word: "血の気", reading: "ちのけ", meaning: "blood (as in hot-blooded, ruddy complexion, etc.)"}
    ],
  },
  {
    kanji: "温",
    keyword: "warm",
    reading: "あたた.か / あたた.かい / あたた.まる / あたた.める / オン",
    radical: "温",
    componentHint: "classical radical 85",
    examples: [
      {word: "温泉", reading: "おんせん", meaning: "spa; hot spring"},
      {word: "温かい", reading: "あたたかい", meaning: "warm; mild"},
      {word: "温度", reading: "おんど", meaning: "temperature"}
    ],
  },
  {
    kanji: "湿",
    keyword: "damp/wet",
    reading: "しめ.る / しめ.す / うるお.う / うるお.す / シツ / シュウ",
    radical: "湿",
    componentHint: "classical radical 85",
    examples: [
      {word: "湿る", reading: "しめる", meaning: "to be wet; to become wet"},
      {word: "湿気", reading: "しっけ", meaning: "moisture; humidity"},
      {word: "湿地", reading: "しっち", meaning: "wetland; wetlands"}
    ],
  },
  {
    kanji: "爪",
    keyword: "claw/nail",
    reading: "つめ / つま- / ソウ",
    radical: "爪",
    componentHint: "classical radical 87",
    examples: [
      {word: "爪先", reading: "つまさき", meaning: "toes; tips of the toes"},
      {word: "爪先立つ", reading: "つまさきだつ", meaning: "to stand on tiptoes"},
      {word: "爪楊枝", reading: "つまようじ", meaning: "toothpick"}
    ],
  },
  {
    kanji: "瓜",
    keyword: "melon",
    reading: "うり / カ / ケ",
    radical: "瓜",
    componentHint: "classical radical 97",
    examples: [
      {word: "西瓜", reading: "すいか", meaning: "watermelon (Citrullus lanatus)"},
      {word: "胡瓜", reading: "きゅうり", meaning: "cucumber (Cucumis sativus)"},
      {word: "南瓜", reading: "かぼちゃ", meaning: "pumpkin; squash"}
    ],
  },
  {
    kanji: "巾",
    keyword: "towel/hanging scroll",
    reading: "おお.い / ちきり / きれ / キン / フク",
    radical: "巾",
    componentHint: "classical radical 50",
    examples: [
      {word: "頭巾", reading: "ずきん", meaning: "hood; kerchief"},
      {word: "雑巾", reading: "ぞうきん", meaning: "house-cloth; dust cloth"},
      {word: "巾着", reading: "きんちゃく", meaning: "pouch; hanger-on"}
    ],
  },
  {
    kanji: "布",
    keyword: "linen/cloth",
    reading: "ぬの / フ",
    radical: "布",
    componentHint: "classical radical 50",
    examples: [
      {word: "布団", reading: "ふとん", meaning: "futon (quilted Japanese-style mattress laid out on the floor); round cushion used for Zen meditation (traditionally made of woven bulrush leaves)"},
      {word: "財布", reading: "さいふ", meaning: "purse; handbag"},
      {word: "毛布", reading: "もうふ", meaning: "blanket"}
    ],
  },
  {
    kanji: "市",
    keyword: "market/city",
    reading: "いち / シ",
    radical: "市",
    componentHint: "classical radical 50",
    examples: [
      {word: "都市", reading: "とし", meaning: "town; city"},
      {word: "市民", reading: "しみん", meaning: "citizen; citizenry"},
      {word: "市内", reading: "しない", meaning: "(within a) city; local"}
    ],
  },
  {
    kanji: "吊",
    keyword: "suspend/hang",
    reading: "つ.る / つる.す / チョウ",
    radical: "吊",
    componentHint: "classical radical 30",
    examples: [
      {word: "吊る", reading: "つる", meaning: "to hang; to suspend (something from something)"},
      {word: "吊るす", reading: "つるす", meaning: "to hang; to hang up"},
      {word: "吊り上げる", reading: "つりあげる", meaning: "to raise; to lift"}
    ],
  },
  {
    kanji: "泉",
    keyword: "spring/fountain",
    reading: "いずみ / セン",
    radical: "泉",
    componentHint: "classical radical 85",
    examples: [
      {word: "温泉", reading: "おんせん", meaning: "spa; hot spring"},
      {word: "泉水", reading: "せんすい", meaning: "garden pond; miniature lake"},
      {word: "黄泉", reading: "よみ", meaning: "underground spring; Hades"}
    ],
  },
  {
    kanji: "原",
    keyword: "meadow/original",
    reading: "はら / ゲン",
    radical: "原",
    componentHint: "classical radical 27",
    examples: [
      {word: "原因", reading: "げんいん", meaning: "cause; origin"},
      {word: "原稿", reading: "げんこう", meaning: "manuscript; copy"},
      {word: "草原", reading: "そうげん", meaning: "grass-covered plain; grasslands"}
    ],
  },
  {
    kanji: "源",
    keyword: "source/origin",
    reading: "みなもと / ゲン",
    radical: "源",
    componentHint: "classical radical 85",
    examples: [
      {word: "源氏", reading: "げんじ", meaning: "Genji (the character in the Genji Monogatari); the Minamoto family"},
      {word: "電源", reading: "でんげん", meaning: "source of electricity; electrical power"},
      {word: "根源", reading: "こんげん", meaning: "root; source"}
    ],
  },
  {
    kanji: "線",
    keyword: "line/track",
    reading: "すじ / セン",
    radical: "線",
    componentHint: "classical radical 120",
    examples: [
      {word: "視線", reading: "しせん", meaning: "one's line of sight; one's gaze"},
      {word: "光線", reading: "こうせん", meaning: "beam; light ray"},
      {word: "無線", reading: "むせん", meaning: "wireless; radio"}
    ],
  },
  {
    kanji: "綿",
    keyword: "cotton",
    reading: "わた / メン",
    radical: "綿",
    componentHint: "classical radical 120",
    examples: [
      {word: "木綿", reading: "もめん", meaning: "cotton (material); red silk-cotton tree (Bombax ceiba)"},
      {word: "綿密", reading: "めんみつ", meaning: "minute; detailed"},
      {word: "綿貫", reading: "わたぬき", meaning: "unpadded kimono; 1st day of the 4th month of the lunisolar calendar"}
    ],
  },
  {
    kanji: "絹",
    keyword: "silk",
    reading: "きぬ / ケン",
    radical: "絹",
    componentHint: "classical radical 120",
    examples: [
      {word: "絹糸", reading: "きぬいと", meaning: "silk thread"},
      {word: "絹布", reading: "けんぷ", meaning: "silk; silk cloth"},
      {word: "絹物", reading: "きぬもの", meaning: "silk goods"}
    ],
  },
  {
    kanji: "錦",
    keyword: "brocade/fine dress",
    reading: "にしき / キン",
    radical: "錦",
    componentHint: "classical radical 167",
    examples: [
      {word: "錦絵", reading: "にしきえ", meaning: "colour (woodblock) print; color print"},
      {word: "錦旗", reading: "きんき", meaning: "pennant; gold-brocade flag"},
      {word: "錦鯉", reading: "にしきごい", meaning: "coloured carp; colored carp"}
    ],
  },
  {
    kanji: "願",
    keyword: "petition/request",
    reading: "ねが.う / -ねがい / ガン",
    radical: "願",
    componentHint: "classical radical 181",
    examples: [
      {word: "お願い", reading: "おねがい", meaning: "request; wish"},
      {word: "願う", reading: "ねがう", meaning: "to desire; to wish"},
      {word: "願い", reading: "ねがい", meaning: "desire; wish"}
    ],
  },
  {
    kanji: "内",
    keyword: "inside/within",
    reading: "うち / ナイ / ダイ",
    radical: "内",
    componentHint: "classical radical 13",
    examples: [
      {word: "案内", reading: "あんない", meaning: "information; guidance"},
      {word: "内容", reading: "ないよう", meaning: "subject; contents"},
      {word: "内部", reading: "ないぶ", meaning: "interior; inside"}
    ],
  },
  {
    kanji: "肉",
    keyword: "meat",
    reading: "しし / ニク",
    radical: "肉",
    componentHint: "classical radical 130",
    examples: [
      {word: "肉体", reading: "にくたい", meaning: "the body; the flesh"},
      {word: "皮肉", reading: "ひにく", meaning: "cynicism; sarcasm"},
      {word: "筋肉", reading: "きんにく", meaning: "muscle; sinew"}
    ],
  },
  {
    kanji: "猪",
    keyword: "boar",
    reading: "い / いのしし / チョ",
    radical: "猪",
    componentHint: "classical radical 94",
    examples: [
      {word: "猪口", reading: "ちょこ", meaning: "small cup; sake cup"},
      {word: "猪首", reading: "いくび", meaning: "bull neck"},
      {word: "猪突", reading: "ちょとつ", meaning: "recklessness; foolhardiness"}
    ],
  },
  {
    kanji: "豚",
    keyword: "pork/pig",
    reading: "ぶた / トン",
    radical: "豚",
    componentHint: "classical radical 152",
    examples: [
      {word: "豚肉", reading: "ぶたにく", meaning: "pork"},
      {word: "河豚", reading: "ふぐ", meaning: "puffer fish; blow fish"},
      {word: "海豚", reading: "いるか", meaning: "dolphin (or other small toothed whales, such as porpoises, belugas, etc.)"}
    ],
  },
  {
    kanji: "家",
    keyword: "house/home",
    reading: "いえ / や / うち / カ / ケ",
    radical: "家",
    componentHint: "classical radical 40",
    examples: [
      {word: "家族", reading: "かぞく", meaning: "family; members of a family"},
      {word: "家庭", reading: "かてい", meaning: "home; family"},
      {word: "作家", reading: "さっか", meaning: "author; writer"}
    ],
  },
  {
    kanji: "吾",
    keyword: "I/my",
    reading: "われ / わが- / あ- / ゴ",
    radical: "吾",
    componentHint: "classical radical 30",
    examples: [
      {word: "吾が", reading: "わが", meaning: "my; our"},
      {word: "吾輩", reading: "わがはい", meaning: "I (nuance of arrogance); me"},
      {word: "吾妻", reading: "あづま", meaning: "eastern Japan (esp. Kamakura or Edo, from perspective of Kyoto or Nara); eastern provinces"}
    ],
  },
  {
    kanji: "我",
    keyword: "ego/I",
    reading: "われ / わ / わ.が- / わが- / ガ",
    radical: "我",
    componentHint: "classical radical 62",
    examples: [
      {word: "我々", reading: "われわれ", meaning: "we"},
      {word: "我慢", reading: "がまん", meaning: "patience; endurance"},
      {word: "怪我", reading: "けが", meaning: "injury (to animate object); hurt"}
    ],
  },
  {
    kanji: "語",
    keyword: "word/speech",
    reading: "かた.る / かた.らう / ゴ",
    radical: "語",
    componentHint: "classical radical 149",
    examples: [
      {word: "語る", reading: "かたる", meaning: "to talk about; to speak of"},
      {word: "物語", reading: "ものがたり", meaning: "tale; story"},
      {word: "英語", reading: "えいご", meaning: "English (language)"}
    ],
  },
  {
    kanji: "伝",
    keyword: "transmit/go along",
    reading: "つた.わる / つた.える / つた.う / つだ.う / デン / テン",
    radical: "伝",
    componentHint: "classical radical 9",
    examples: [
      {word: "伝える", reading: "つたえる", meaning: "to convey; to report"},
      {word: "伝わる", reading: "つたわる", meaning: "to be handed down; to be introduced"},
      {word: "手伝う", reading: "てつだう", meaning: "to help; to assist"}
    ],
  },
  {
    kanji: "転",
    keyword: "revolve/turn around",
    reading: "ころ.がる / ころ.げる / ころ.がす / ころ.ぶ / テン",
    radical: "転",
    componentHint: "classical radical 159",
    examples: [
      {word: "運転", reading: "うんてん", meaning: "operation (of a machine, etc.); operating"},
      {word: "転がる", reading: "ころがる", meaning: "to roll; to tumble"},
      {word: "回転", reading: "かいてん", meaning: "rotation (usu. around something); revolution"}
    ],
  },
  {
    kanji: "芸",
    keyword: "technique/art",
    reading: "う.える / のり / わざ / ゲイ / ウン",
    radical: "芸",
    componentHint: "classical radical 140",
    examples: [
      {word: "芸術", reading: "げいじゅつ", meaning: "(fine) art; the arts"},
      {word: "芸者", reading: "げいしゃ", meaning: "geisha; Japanese singing and dancing girl"},
      {word: "文芸", reading: "ぶんげい", meaning: "literature; art and literature"}
    ],
  },
  {
    kanji: "会",
    keyword: "meeting/meet",
    reading: "あ.う / あ.わせる / あつ.まる / カイ / エ",
    radical: "会",
    componentHint: "classical radical 9",
    examples: [
      {word: "会う", reading: "あう", meaning: "to meet; to encounter"},
      {word: "会社", reading: "かいしゃ", meaning: "company; corporation"},
      {word: "社会", reading: "しゃかい", meaning: "society; public"}
    ],
  },
  {
    kanji: "合",
    keyword: "fit/suit",
    reading: "あ.う / -あ.う / あ.い / あい- / ゴウ / ガッ / カッ",
    radical: "合",
    componentHint: "classical radical 30",
    examples: [
      {word: "場合", reading: "ばあい", meaning: "case; situation"},
      {word: "合う", reading: "あう", meaning: "to come together; to merge"},
      {word: "合わせる", reading: "あわせる", meaning: "to match (rhythm, speed, etc.); to join together"}
    ],
  },
  {
    kanji: "今",
    keyword: "now",
    reading: "いま / コン / キン",
    radical: "今",
    componentHint: "classical radical 9",
    examples: [
      {word: "今日", reading: "きょう", meaning: "today; this day"},
      {word: "今度", reading: "こんど", meaning: "now; this time"},
      {word: "今夜", reading: "こんや", meaning: "this evening; tonight"}
    ],
  },
  {
    kanji: "令",
    keyword: "orders/ancient laws",
    reading: "レイ",
    radical: "令",
    componentHint: "classical radical 9",
    examples: [
      {word: "命令", reading: "めいれい", meaning: "order; command"},
      {word: "司令", reading: "しれい", meaning: "command; control"},
      {word: "令嬢", reading: "れいじょう", meaning: "(your) daughter; young woman"}
    ],
  },
  {
    kanji: "念",
    keyword: "wish/sense",
    reading: "ネン",
    radical: "念",
    componentHint: "classical radical 61",
    examples: [
      {word: "残念", reading: "ざんねん", meaning: "deplorable; bad luck"},
      {word: "観念", reading: "かんねん", meaning: "idea; notion"},
      {word: "概念", reading: "がいねん", meaning: "general idea; concept"}
    ],
  },
  {
    kanji: "印",
    keyword: "stamp/seal",
    reading: "しるし / -じるし / しる.す / イン",
    radical: "印",
    componentHint: "classical radical 26",
    examples: [
      {word: "印象", reading: "いんしょう", meaning: "impression"},
      {word: "印刷", reading: "いんさつ", meaning: "printing"},
      {word: "封印", reading: "ふういん", meaning: "seal; stamp"}
    ],
  },
  {
    kanji: "命",
    keyword: "fate/command",
    reading: "いのち / メイ / ミョウ",
    radical: "命",
    componentHint: "classical radical 30",
    examples: [
      {word: "命令", reading: "めいれい", meaning: "order; command"},
      {word: "生命", reading: "せいめい", meaning: "life; existence"},
      {word: "命じる", reading: "めいじる", meaning: "to order; to command"}
    ],
  },
  {
    kanji: "亡",
    keyword: "deceased/the late",
    reading: "な.い / な.き- / ほろ.びる / ほろ.ぶ / ボウ / モウ",
    radical: "亡",
    componentHint: "classical radical 8",
    examples: [
      {word: "亡くなる", reading: "なくなる", meaning: "to die"},
      {word: "死亡", reading: "しぼう", meaning: "death; mortality"},
      {word: "逃亡", reading: "とうぼう", meaning: "escape; flight"}
    ],
  },
  {
    kanji: "米",
    keyword: "rice/USA",
    reading: "こめ / よね / ベイ / マイ / メエトル",
    radical: "米",
    componentHint: "classical radical 119",
    examples: [
      {word: "米国", reading: "べいこく", meaning: "America; USA"},
      {word: "欧米", reading: "おうべい", meaning: "Europe and America; the West"},
      {word: "南米", reading: "なんべい", meaning: "South America"}
    ],
  },
  {
    kanji: "粒",
    keyword: "grains/drop",
    reading: "つぶ / リュウ",
    radical: "粒",
    componentHint: "classical radical 119",
    examples: [
      {word: "粒子", reading: "りゅうし", meaning: "particle; grain"},
      {word: "大粒", reading: "おおつぶ", meaning: "large grain; large drop"},
      {word: "一粒", reading: "ひとつぶ", meaning: "(a) grain; (a) drop"}
    ],
  },
  {
    kanji: "和",
    keyword: "harmony/Japanese style",
    reading: "やわ.らぐ / やわ.らげる / なご.む / なご.やか / ワ / オ / カ",
    radical: "和",
    componentHint: "classical radical 30",
    examples: [
      {word: "昭和", reading: "しょうわ", meaning: "Showa era (1926.12.25-1989.1.7)"},
      {word: "平和", reading: "へいわ", meaning: "peace; harmony"},
      {word: "大和", reading: "やまと", meaning: "Yamato; ancient province corresponding to modern-day Nara Prefecture"}
    ],
  },
  {
    kanji: "私",
    keyword: "private/I",
    reading: "わたくし / わたし / シ",
    radical: "私",
    componentHint: "classical radical 115",
    examples: [
      {word: "私立", reading: "しりつ", meaning: "private (establishment)"},
      {word: "私服", reading: "しふく", meaning: "civilian clothes; plain clothes"},
      {word: "私的", reading: "してき", meaning: "personal; private"}
    ],
  },
  {
    kanji: "広",
    keyword: "wide/broad",
    reading: "ひろ.い / ひろ.まる / ひろ.める / ひろ.がる / コウ",
    radical: "広",
    componentHint: "classical radical 53",
    examples: [
      {word: "広い", reading: "ひろい", meaning: "spacious; vast"},
      {word: "広がる", reading: "ひろがる", meaning: "to spread (out); to extend"},
      {word: "広げる", reading: "ひろげる", meaning: "to spread; to extend"}
    ],
  },
  {
    kanji: "細",
    keyword: "dainty/get thin",
    reading: "ほそ.い / ほそ.る / こま.か / こま.かい / サイ",
    radical: "細",
    componentHint: "classical radical 120",
    examples: [
      {word: "細い", reading: "ほそい", meaning: "thin; slender"},
      {word: "細かい", reading: "こまかい", meaning: "small; fine"},
      {word: "細君", reading: "さいくん", meaning: "one's wife (when speaking with a close friend); your wife (when speaking with a junior)"}
    ],
  },
  {
    kanji: "林",
    keyword: "grove/forest",
    reading: "はやし / リン",
    radical: "木",
    componentHint: "classical radical 75",
    examples: [
      {word: "雑木林", reading: "ぞうきばやし", meaning: "grove of mixed trees; copse"},
      {word: "森林", reading: "しんりん", meaning: "forest; woods"},
      {word: "林檎", reading: "りんご", meaning: "apple (fruit); apple tree (Malus pumila)"}
    ],
  },
  {
    kanji: "森",
    keyword: "forest/woods",
    reading: "もり / シン",
    radical: "木",
    componentHint: "classical radical 75",
    examples: [
      {word: "森林", reading: "しんりん", meaning: "forest; woods"},
      {word: "大森", reading: "おおもり", meaning: "large forest"},
      {word: "森閑", reading: "しんかん", meaning: "silence; stillness"}
    ],
  },
  {
    kanji: "松",
    keyword: "pine tree",
    reading: "まつ / ショウ",
    radical: "松",
    componentHint: "classical radical 75",
    examples: [
      {word: "松明", reading: "たいまつ", meaning: "(pine) torch; flambeau"},
      {word: "松原", reading: "まつばら", meaning: "pine grove"},
      {word: "小松", reading: "こまつ", meaning: "small pine; young pine"}
    ],
  },
  {
    kanji: "竹",
    keyword: "bamboo",
    reading: "たけ / チク",
    radical: "竹",
    componentHint: "classical radical 118",
    examples: [
      {word: "竹刀", reading: "しない", meaning: "bamboo sword (for kendo); bamboo fencing stick"},
      {word: "竹林", reading: "ちくりん", meaning: "bamboo thicket"},
      {word: "竹筒", reading: "たけづつ", meaning: "bamboo pipe"}
    ],
  },
  {
    kanji: "都",
    keyword: "metropolis/capital",
    reading: "みやこ / ト / ツ",
    radical: "都",
    componentHint: "classical radical 163",
    examples: [
      {word: "都市", reading: "とし", meaning: "town; city"},
      {word: "京都", reading: "きょうと", meaning: "Kyoto"},
      {word: "都合", reading: "つごう", meaning: "circumstances; condition"}
    ],
  },
  {
    kanji: "京",
    keyword: "capital/10**16",
    reading: "みやこ / キョウ / ケイ / キン",
    radical: "京",
    componentHint: "classical radical 8",
    examples: [
      {word: "東京", reading: "とうきょう", meaning: "Tokyo"},
      {word: "京都", reading: "きょうと", meaning: "Kyoto"},
      {word: "上京", reading: "じょうきょう", meaning: "proceeding to the capital (Tokyo)"}
    ],
  },
  {
    kanji: "政",
    keyword: "politics/government",
    reading: "まつりごと / まん / セイ / ショウ",
    radical: "政",
    componentHint: "classical radical 66",
    examples: [
      {word: "政治", reading: "せいじ", meaning: "politics; government"},
      {word: "政府", reading: "せいふ", meaning: "government; administration"},
      {word: "政策", reading: "せいさく", meaning: "political measures; policy"}
    ],
  },
  {
    kanji: "府",
    keyword: "borough/urban prefecture",
    reading: "フ",
    radical: "府",
    componentHint: "classical radical 53",
    examples: [
      {word: "政府", reading: "せいふ", meaning: "government; administration"},
      {word: "幕府", reading: "ばくふ", meaning: "bakufu; shogunate"},
      {word: "府中", reading: "ふちゅう", meaning: "provincial capital (under the ritsuryo system); provincial office"}
    ],
  },
  {
    kanji: "戸",
    keyword: "door/counter for houses",
    reading: "と / コ",
    radical: "戸",
    componentHint: "classical radical 63",
    examples: [
      {word: "江戸", reading: "えど", meaning: "old name of Tokyo"},
      {word: "戸口", reading: "とぐち", meaning: "door; doorway"},
      {word: "井戸", reading: "いど", meaning: "water well"}
    ],
  },
  {
    kanji: "所",
    keyword: "place",
    reading: "ところ / -ところ / どころ / とこ / ショ",
    radical: "所",
    componentHint: "classical radical 63",
    examples: [
      {word: "場所", reading: "ばしょ", meaning: "place; location"},
      {word: "台所", reading: "だいどころ", meaning: "kitchen; financial situation"},
      {word: "近所", reading: "きんじょ", meaning: "neighbourhood; neighborhood"}
    ],
  },
  {
    kanji: "至",
    keyword: "climax/arrive",
    reading: "いた.る / シ",
    radical: "至",
    componentHint: "classical radical 133",
    examples: [
      {word: "至る", reading: "いたる", meaning: "to arrive at (e.g. a decision); to reach (a stage)"},
      {word: "至極", reading: "しごく", meaning: "very; extremely"},
      {word: "至急", reading: "しきゅう", meaning: "urgent; pressing"}
    ],
  },
  {
    kanji: "致",
    keyword: "doth/do",
    reading: "いた.す / チ",
    radical: "致",
    componentHint: "classical radical 133",
    examples: [
      {word: "致す", reading: "いたす", meaning: "to do"},
      {word: "一致", reading: "いっち", meaning: "coincidence; agreement"},
      {word: "致命", reading: "ちめい", meaning: "fatal"}
    ],
  },
  {
    kanji: "屋",
    keyword: "roof/house",
    reading: "や / オク",
    radical: "屋",
    componentHint: "classical radical 44",
    examples: [
      {word: "部屋", reading: "へや", meaning: "room; stable"},
      {word: "屋敷", reading: "やしき", meaning: "residence; estate"},
      {word: "小屋", reading: "こや", meaning: "hut; cabin"}
    ],
  },
  {
    kanji: "室",
    keyword: "room/apartment",
    reading: "むろ / シツ",
    radical: "室",
    componentHint: "classical radical 40",
    examples: [
      {word: "教室", reading: "きょうしつ", meaning: "classroom; department"},
      {word: "寝室", reading: "しんしつ", meaning: "bedroom"},
      {word: "室内", reading: "しつない", meaning: "indoor; inside the room"}
    ],
  },
  {
    kanji: "古",
    keyword: "old",
    reading: "ふる.い / ふる- / -ふる.す / コ",
    radical: "古",
    componentHint: "classical radical 30",
    examples: [
      {word: "古い", reading: "ふるい", meaning: "old (not person); aged"},
      {word: "古代", reading: "こだい", meaning: "ancient times"},
      {word: "稽古", reading: "けいこ", meaning: "practice; practising"}
    ],
  },
  {
    kanji: "居",
    keyword: "reside/to be",
    reading: "い.る / -い / お.る / キョ / コ",
    radical: "居",
    componentHint: "classical radical 44",
    examples: [
      {word: "居る", reading: "いる", meaning: "to be (of animate objects); to exist"},
      {word: "芝居", reading: "しばい", meaning: "play; drama"},
      {word: "居間", reading: "いま", meaning: "living room (western style)"}
    ],
  },
  {
    kanji: "局",
    keyword: "bureau/board",
    reading: "つぼね / キョク",
    radical: "局",
    componentHint: "classical radical 44",
    examples: [
      {word: "結局", reading: "けっきょく", meaning: "after all; eventually"},
      {word: "局長", reading: "きょくちょう", meaning: "bureau director; office chief"},
      {word: "当局", reading: "とうきょく", meaning: "authorities; this office"}
    ],
  },
  {
    kanji: "故",
    keyword: "happenstance/especially",
    reading: "ゆえ / ふる.い / もと / コ",
    radical: "故",
    componentHint: "classical radical 66",
    examples: [
      {word: "事故", reading: "じこ", meaning: "accident; incident"},
      {word: "何故", reading: "なぜ", meaning: "why; how"},
      {word: "故郷", reading: "こきょう", meaning: "home town; birthplace"}
    ],
  },
  {
    kanji: "胡",
    keyword: "barbarian/foreign",
    reading: "なんぞ / ウ / コ / ゴ",
    radical: "胡",
    componentHint: "classical radical 130",
    examples: [
      {word: "胡椒", reading: "こしょう", meaning: "pepper"},
      {word: "胡散臭い", reading: "うさんくさい", meaning: "suspicious-looking; shady"},
      {word: "胡蝶", reading: "こちょう", meaning: "butterfly"}
    ],
  },
  {
    kanji: "湖",
    keyword: "lake",
    reading: "みずうみ / コ",
    radical: "湖",
    componentHint: "classical radical 85",
    examples: [
      {word: "湖水", reading: "こすい", meaning: "lake"},
      {word: "湖畔", reading: "こはん", meaning: "lake shore"},
      {word: "湖面", reading: "こめん", meaning: "lake surface"}
    ],
  },
  {
    kanji: "固",
    keyword: "harden/set",
    reading: "かた.める / かた.まる / かた.まり / かた.い / コ",
    radical: "固",
    componentHint: "classical radical 31",
    examples: [
      {word: "固い", reading: "かたい", meaning: "hard; solid"},
      {word: "固める", reading: "かためる", meaning: "to harden; to freeze"},
      {word: "固定", reading: "こてい", meaning: "fixation; fixing (e.g. salary, capital)"}
    ],
  },
  {
    kanji: "箇",
    keyword: "counter for articles",
    reading: "カ / コ",
    radical: "箇",
    componentHint: "classical radical 118",
    examples: [
      {word: "箇所", reading: "かしょ", meaning: "passage; place"},
      {word: "箇月", reading: "かげつ", meaning: "(number of) months"},
      {word: "箇条", reading: "かじょう", meaning: "item; article"}
    ],
  },
  {
    kanji: "個",
    keyword: "individual/counter for articles",
    reading: "コ / カ",
    radical: "個",
    componentHint: "classical radical 9",
    examples: [
      {word: "個人", reading: "こじん", meaning: "individual; private person"},
      {word: "個性", reading: "こせい", meaning: "individuality; personality"},
      {word: "個室", reading: "こしつ", meaning: "private room; one's own room"}
    ],
  },
  {
    kanji: "且",
    keyword: "moreover/also",
    reading: "か.つ / ショ / ソ / ショウ",
    radical: "且",
    componentHint: "classical radical 1",
    examples: [
      {word: "且つ", reading: "かつ", meaning: "yet; moreover"},
      {word: "苟且", reading: "かりそめ", meaning: "temporary; transient"},
      {word: "且又", reading: "かつまた", meaning: "besides; furthermore"}
    ],
  },
  {
    kanji: "組",
    keyword: "association/braid",
    reading: "く.む / くみ / -ぐみ / ソ",
    radical: "組",
    componentHint: "classical radical 120",
    examples: [
      {word: "組む", reading: "くむ", meaning: "to cross (legs or arms); to link (arms)"},
      {word: "組織", reading: "そしき", meaning: "organization; organisation"},
      {word: "番組", reading: "ばんぐみ", meaning: "program (e.g. TV); programme"}
    ],
  },
  {
    kanji: "夕",
    keyword: "evening",
    reading: "ゆう / セキ",
    radical: "夕",
    componentHint: "classical radical 36",
    examples: [
      {word: "夕方", reading: "ゆうがた", meaning: "evening; dusk"},
      {word: "夕食", reading: "ゆうしょく", meaning: "evening meal; dinner"},
      {word: "夕暮れ", reading: "ゆうぐれ", meaning: "evening; (evening) twilight"}
    ],
  },
  {
    kanji: "外",
    keyword: "outside",
    reading: "そと / ほか / はず.す / はず.れる / ガイ / ゲ",
    radical: "外",
    componentHint: "classical radical 36",
    examples: [
      {word: "以外", reading: "いがい", meaning: "with the exception of; excepting"},
      {word: "意外", reading: "いがい", meaning: "unexpected; surprising"},
      {word: "外国", reading: "がいこく", meaning: "foreign country"}
    ],
  },
  {
    kanji: "多",
    keyword: "many/frequent",
    reading: "おお.い / まさ.に / まさ.る / タ",
    radical: "多",
    componentHint: "classical radical 36",
    examples: [
      {word: "多い", reading: "おおい", meaning: "many; numerous"},
      {word: "多く", reading: "おおく", meaning: "many; much"},
      {word: "多少", reading: "たしょう", meaning: "more or less; somewhat"}
    ],
  },
  {
    kanji: "汐",
    keyword: "eventide/tide",
    reading: "しお / うしお / せい / セキ",
    radical: "汐",
    componentHint: "classical radical 85",
    examples: [
      {word: "血汐", reading: "ちしお", meaning: "blood spilt from the body; blood circulating within the body (often as a metaphor for strong emotion or hot-bloodedness)"},
      {word: "潮汐", reading: "ちょうせき", meaning: "tide"},
      {word: "汐汲み", reading: "しおくみ", meaning: "drawing seawater to make salt; person who draws water from the sea"}
    ],
  },
  {
    kanji: "名",
    keyword: "name/noted",
    reading: "な / -な / メイ / ミョウ",
    radical: "名",
    componentHint: "classical radical 30",
    examples: [
      {word: "名前", reading: "なまえ", meaning: "name; full name"},
      {word: "有名", reading: "ゆうめい", meaning: "famous; fame"},
      {word: "名乗る", reading: "なのる", meaning: "to call oneself (name, label, etc.); to give one's name (as)"}
    ],
  },
  {
    kanji: "天",
    keyword: "heavens/sky",
    reading: "あまつ / あめ / あま- / テン",
    radical: "天",
    componentHint: "classical radical 37",
    examples: [
      {word: "天井", reading: "てんじょう", meaning: "ceiling; ceiling price"},
      {word: "天皇", reading: "てんのう", meaning: "Emperor of Japan"},
      {word: "天下", reading: "てんか", meaning: "the whole world; the whole country"}
    ],
  },
  {
    kanji: "未",
    keyword: "un-/not yet",
    reading: "いま.だ / ま.だ / ひつじ / ミ / ビ",
    radical: "未",
    componentHint: "classical radical 75",
    examples: [
      {word: "未来", reading: "みらい", meaning: "the future (usually distant); future tense"},
      {word: "未だ", reading: "いまだ", meaning: "as yet; hitherto"},
      {word: "未知", reading: "みち", meaning: "not yet known; unknown"}
    ],
  },
  {
    kanji: "末",
    keyword: "end/close",
    reading: "すえ / マツ / バツ",
    radical: "末",
    componentHint: "classical radical 75",
    examples: [
      {word: "始末", reading: "しまつ", meaning: "management; dealing"},
      {word: "粗末", reading: "そまつ", meaning: "crude; rough"},
      {word: "結末", reading: "けつまつ", meaning: "end; conclusion"}
    ],
  },
  {
    kanji: "味",
    keyword: "flavor/taste",
    reading: "あじ / あじ.わう / ミ",
    radical: "味",
    componentHint: "classical radical 30",
    examples: [
      {word: "意味", reading: "いみ", meaning: "meaning; significance"},
      {word: "興味", reading: "きょうみ", meaning: "interest (in something); curiosity (about something)"},
      {word: "味方", reading: "みかた", meaning: "friend; ally"}
    ],
  },
  {
    kanji: "来",
    keyword: "come/due",
    reading: "く.る / きた.る / きた.す / き.たす / ライ / タイ",
    radical: "来",
    componentHint: "classical radical 75",
    examples: [
      {word: "来る", reading: "くる", meaning: "to come (spatially or temporally); to approach"},
      {word: "出来る", reading: "できる", meaning: "to be able (in a position) to do; to be up to the task"},
      {word: "以来", reading: "いらい", meaning: "since; henceforth"}
    ],
  },
  {
    kanji: "新",
    keyword: "new",
    reading: "あたら.しい / あら.た / あら- / にい- / シン",
    radical: "新",
    componentHint: "classical radical 69",
    examples: [
      {word: "新しい", reading: "あたらしい", meaning: "new; novel"},
      {word: "新聞", reading: "しんぶん", meaning: "newspaper"},
      {word: "新た", reading: "あらた", meaning: "new; fresh"}
    ],
  },
  {
    kanji: "親",
    keyword: "parent/intimacy",
    reading: "おや / おや- / した.しい / した.しむ / シン",
    radical: "親",
    componentHint: "classical radical 147",
    examples: [
      {word: "母親", reading: "ははおや", meaning: "mother"},
      {word: "父親", reading: "ちちおや", meaning: "father"},
      {word: "両親", reading: "りょうしん", meaning: "parents; both parents"}
    ],
  },
  {
    kanji: "欠",
    keyword: "lack/gap",
    reading: "か.ける / か.く / ケツ / ケン",
    radical: "欠",
    componentHint: "classical radical 76",
    examples: [
      {word: "欠ける", reading: "かける", meaning: "to be chipped; to be damaged"},
      {word: "欠く", reading: "かく", meaning: "to chip; to nick"},
      {word: "欠点", reading: "けってん", meaning: "fault; defect"}
    ],
  },
  {
    kanji: "次",
    keyword: "next/order",
    reading: "つ.ぐ / つぎ / ジ / シ",
    radical: "次",
    componentHint: "classical radical 76",
    examples: [
      {word: "次第", reading: "しだい", meaning: "dependent upon; as soon as"},
      {word: "次第に", reading: "しだいに", meaning: "gradually (progress into a state); in sequence"},
      {word: "次々", reading: "つぎつぎ", meaning: "in succession; one by one"}
    ],
  },
  {
    kanji: "席",
    keyword: "seat/mat",
    reading: "むしろ / セキ",
    radical: "席",
    componentHint: "classical radical 50",
    examples: [
      {word: "座席", reading: "ざせき", meaning: "seat"},
      {word: "出席", reading: "しゅっせき", meaning: "attendance; presence"},
      {word: "客席", reading: "きゃくせき", meaning: "guest seating (e.g. theater, stadium); passenger seat (e.g. taxi)"}
    ],
  },
  {
    kanji: "度",
    keyword: "degrees/occurrence",
    reading: "たび / -た.い / ド / ト / タク",
    radical: "度",
    componentHint: "classical radical 53",
    examples: [
      {word: "今度", reading: "こんど", meaning: "now; this time"},
      {word: "態度", reading: "たいど", meaning: "attitude; manner"},
      {word: "もう一度", reading: "もういちど", meaning: "once more; again"}
    ],
  },
  {
    kanji: "渡",
    keyword: "transit/ford",
    reading: "わた.る / -わた.る / わた.す / ト",
    radical: "渡",
    componentHint: "classical radical 85",
    examples: [
      {word: "渡す", reading: "わたす", meaning: "to ferry across (e.g. a river); to carry across"},
      {word: "渡る", reading: "わたる", meaning: "to cross over; to go across"},
      {word: "見渡す", reading: "みわたす", meaning: "to look out over; to survey (scene)"}
    ],
  },
  {
    kanji: "限",
    keyword: "limit/restrict",
    reading: "かぎ.る / かぎ.り / -かぎ.り / ゲン",
    radical: "限",
    componentHint: "classical radical 170",
    examples: [
      {word: "限り", reading: "かぎり", meaning: "limit; limits"},
      {word: "限る", reading: "かぎる", meaning: "to restrict; to limit"},
      {word: "限界", reading: "げんかい", meaning: "limit; bound"}
    ],
  },
  {
    kanji: "銀",
    keyword: "silver",
    reading: "しろがね / ギン",
    radical: "銀",
    componentHint: "classical radical 167",
    examples: [
      {word: "銀行", reading: "ぎんこう", meaning: "bank"},
      {word: "銀座", reading: "ぎんざ", meaning: "Ginza (shopping district in Tokyo); (Edo period) silver mint"},
      {word: "銀色", reading: "ぎんいろ", meaning: "silver (color, colour)"}
    ],
  },
  {
    kanji: "根",
    keyword: "root/head (pimple)",
    reading: "ね / -ね / コン",
    radical: "根",
    componentHint: "classical radical 75",
    examples: [
      {word: "屋根", reading: "やね", meaning: "roof"},
      {word: "根拠", reading: "こんきょ", meaning: "basis; foundation"},
      {word: "羽根", reading: "はね", meaning: "feather; plume"}
    ],
  },
  {
    kanji: "良",
    keyword: "good/pleasing",
    reading: "よ.い / -よ.い / い.い / -い.い / リョウ",
    radical: "良",
    componentHint: "classical radical 138",
    examples: [
      {word: "良い", reading: "よい", meaning: "good; excellent"},
      {word: "不良", reading: "ふりょう", meaning: "badness; inferiority"},
      {word: "良心", reading: "りょうしん", meaning: "conscience"}
    ],
  },
  {
    kanji: "郎",
    keyword: "son/counter for sons",
    reading: "おとこ / ロウ / リョウ",
    radical: "郎",
    componentHint: "classical radical 163",
    examples: [
      {word: "野郎", reading: "やろう", meaning: "guy; fellow"},
      {word: "三郎", reading: "さぶろう", meaning: "third son; Occella iburia (species of poacher)"},
      {word: "女郎", reading: "じょろう", meaning: "prostitute (esp. Edo period)"}
    ],
  },
  {
    kanji: "廊",
    keyword: "corridor/hall",
    reading: "ロウ",
    radical: "廊",
    componentHint: "classical radical 53",
    examples: [
      {word: "廊下", reading: "ろうか", meaning: "corridor; hallway"},
      {word: "回廊", reading: "かいろう", meaning: "corridor; gallery"},
      {word: "渡り廊下", reading: "わたりろうか", meaning: "passage"}
    ],
  },
  {
    kanji: "食",
    keyword: "eat/food",
    reading: "く.う / く.らう / た.べる / は.む / ショク / ジキ",
    radical: "食",
    componentHint: "classical radical 184",
    examples: [
      {word: "食べる", reading: "たべる", meaning: "to eat; to live on (e.g. a salary)"},
      {word: "食事", reading: "しょくじ", meaning: "meal; to eat"},
      {word: "食う", reading: "くう", meaning: "to eat; to live"}
    ],
  },
  {
    kanji: "飲",
    keyword: "drink/smoke",
    reading: "の.む / -の.み / イン / オン",
    radical: "飲",
    componentHint: "classical radical 184",
    examples: [
      {word: "飲む", reading: "のむ", meaning: "to drink; to gulp"},
      {word: "飲み込む", reading: "のみこむ", meaning: "to gulp down; to swallow deeply"},
      {word: "飲み干す", reading: "のみほす", meaning: "to drink up; to drain (cup)"}
    ],
  },
  {
    kanji: "官",
    keyword: "bureaucrat/the government",
    reading: "カン",
    radical: "官",
    componentHint: "classical radical 40",
    examples: [
      {word: "警官", reading: "けいかん", meaning: "policeman"},
      {word: "長官", reading: "ちょうかん", meaning: "secretary (government); director"},
      {word: "士官", reading: "しかん", meaning: "officer"}
    ],
  },
  {
    kanji: "館",
    keyword: "building/mansion",
    reading: "やかた / たて / カン",
    radical: "館",
    componentHint: "classical radical 184",
    examples: [
      {word: "旅館", reading: "りょかん", meaning: "ryokan; Japanese-style lodging, usu. professionally-run"},
      {word: "図書館", reading: "としょかん", meaning: "library"},
      {word: "博物館", reading: "はくぶつかん", meaning: "museum"}
    ],
  },
  {
    kanji: "宿",
    keyword: "inn/lodging",
    reading: "やど / やど.る / やど.す / シュク",
    radical: "宿",
    componentHint: "classical radical 40",
    examples: [
      {word: "下宿", reading: "げしゅく", meaning: "boarding; lodging"},
      {word: "宿る", reading: "やどる", meaning: "to dwell; to live"},
      {word: "宿屋", reading: "やどや", meaning: "inn"}
    ],
  },
  {
    kanji: "犬",
    keyword: "dog",
    reading: "いぬ / いぬ- / ケン",
    radical: "犬",
    componentHint: "classical radical 94",
    examples: [
      {word: "猟犬", reading: "りょうけん", meaning: "hound; hunting dog"},
      {word: "子犬", reading: "こいぬ", meaning: "puppy"},
      {word: "野良犬", reading: "のらいぬ", meaning: "stray dog"}
    ],
  },
  {
    kanji: "太",
    keyword: "plump/thick",
    reading: "ふと.い / ふと.る / タイ / タ",
    radical: "太",
    componentHint: "classical radical 37",
    examples: [
      {word: "太陽", reading: "たいよう", meaning: "sun; solar"},
      {word: "太い", reading: "ふとい", meaning: "fat; thick"},
      {word: "太る", reading: "ふとる", meaning: "to grow fat (stout, plump); to become fat"}
    ],
  },
  {
    kanji: "器",
    keyword: "utensil/vessel",
    reading: "うつわ / キ",
    radical: "器",
    componentHint: "classical radical 30",
    examples: [
      {word: "武器", reading: "ぶき", meaning: "weapon; arms"},
      {word: "受話器", reading: "じゅわき", meaning: "(telephone) receiver"},
      {word: "兵器", reading: "へいき", meaning: "arms; weapons"}
    ],
  },
  {
    kanji: "凶",
    keyword: "villain/evil",
    reading: "キョウ",
    radical: "凶",
    componentHint: "classical radical 17",
    examples: [
      {word: "凶器", reading: "きょうき", meaning: "dangerous weapon; lethal weapon"},
      {word: "凶悪", reading: "きょうあく", meaning: "atrocious; fiendish"},
      {word: "凶暴", reading: "きょうぼう", meaning: "brutal; atrocious"}
    ],
  },
  {
    kanji: "区",
    keyword: "ward/district",
    reading: "ク / オウ / コウ",
    radical: "区",
    componentHint: "classical radical 23",
    examples: [
      {word: "区別", reading: "くべつ", meaning: "distinction; differentiation"},
      {word: "地区", reading: "ちく", meaning: "district; section"},
      {word: "区画", reading: "くかく", meaning: "division; section"}
    ],
  },
  {
    kanji: "図",
    keyword: "map/drawing",
    reading: "え / はか.る / ズ / ト",
    radical: "図",
    componentHint: "classical radical 31",
    examples: [
      {word: "合図", reading: "あいず", meaning: "sign; signal"},
      {word: "地図", reading: "ちず", meaning: "map"},
      {word: "意図", reading: "いと", meaning: "intention; aim"}
    ],
  },
  {
    kanji: "番",
    keyword: "turn/number in a series",
    reading: "つが.い / バン",
    radical: "番",
    componentHint: "classical radical 102",
    examples: [
      {word: "一番", reading: "いちばん", meaning: "best; first"},
      {word: "番号", reading: "ばんごう", meaning: "number; series of digits"},
      {word: "番頭", reading: "ばんとう", meaning: "(head) clerk"}
    ],
  },
  {
    kanji: "号",
    keyword: "nickname/number",
    reading: "さけ.ぶ / よびな / ゴウ",
    radical: "号",
    componentHint: "classical radical 30",
    examples: [
      {word: "番号", reading: "ばんごう", meaning: "number; series of digits"},
      {word: "信号", reading: "しんごう", meaning: "signal; signalling"},
      {word: "号室", reading: "ごうしつ", meaning: "suffix for room numbers"}
    ],
  },
  {
    kanji: "品",
    keyword: "goods/refinement",
    reading: "しな / ヒン / ホン",
    radical: "品",
    componentHint: "classical radical 30",
    examples: [
      {word: "作品", reading: "さくひん", meaning: "work (e.g. book, film, composition, etc.); opus"},
      {word: "品物", reading: "しなもの", meaning: "goods; article"},
      {word: "商品", reading: "しょうひん", meaning: "commodity; article of commerce"}
    ],
  },
  {
    kanji: "楽",
    keyword: "music/comfort",
    reading: "たの.しい / たの.しむ / この.む / ガク / ラク / ゴウ",
    radical: "楽",
    componentHint: "classical radical 75",
    examples: [
      {word: "楽しい", reading: "たのしい", meaning: "enjoyable; fun"},
      {word: "音楽", reading: "おんがく", meaning: "music; musical movement"},
      {word: "楽しむ", reading: "たのしむ", meaning: "to enjoy (oneself)"}
    ],
  },
  {
    kanji: "薬",
    keyword: "medicine/chemical",
    reading: "くすり / ヤク",
    radical: "薬",
    componentHint: "classical radical 140",
    examples: [
      {word: "麻薬", reading: "まやく", meaning: "narcotic drugs; narcotic"},
      {word: "火薬", reading: "かやく", meaning: "gunpowder; powder"},
      {word: "弾薬", reading: "だんやく", meaning: "ammunition; ammo"}
    ],
  },
  {
    kanji: "周",
    keyword: "circumference/circuit",
    reading: "まわ.り / シュウ",
    radical: "周",
    componentHint: "classical radical 30",
    examples: [
      {word: "周囲", reading: "しゅうい", meaning: "surroundings; environs"},
      {word: "周り", reading: "まわり", meaning: "circumference; girth"},
      {word: "周辺", reading: "しゅうへん", meaning: "circumference; outskirts"}
    ],
  },
  {
    kanji: "週",
    keyword: "week",
    reading: "シュウ",
    radical: "週",
    componentHint: "classical radical 162",
    examples: [
      {word: "週間", reading: "しゅうかん", meaning: "week; weekly"},
      {word: "週刊", reading: "しゅうかん", meaning: "published weekly"},
      {word: "先週", reading: "せんしゅう", meaning: "last week; the week before"}
    ],
  },
  {
    kanji: "調",
    keyword: "tune/tone",
    reading: "しら.べる / しら.べ / ととの.う / ととの.える / チョウ",
    radical: "調",
    componentHint: "classical radical 149",
    examples: [
      {word: "調べる", reading: "しらべる", meaning: "to examine; to investigate"},
      {word: "口調", reading: "くちょう", meaning: "tone (e.g. of voice, etc.); (verbal) expression"},
      {word: "調子", reading: "ちょうし", meaning: "tune; tone"}
    ],
  },
  {
    kanji: "束",
    keyword: "bundle/sheaf",
    reading: "たば / たば.ねる / つか / つか.ねる / ソク",
    radical: "束",
    componentHint: "classical radical 75",
    examples: [
      {word: "約束", reading: "やくそく", meaning: "promise; agreement"},
      {word: "拘束", reading: "こうそく", meaning: "restriction; restraint"},
      {word: "花束", reading: "はなたば", meaning: "bunch of flowers; bouquet"}
    ],
  },
  {
    kanji: "整",
    keyword: "organize/arranging",
    reading: "ととの.える / ととの.う / セイ",
    radical: "整",
    componentHint: "classical radical 66",
    examples: [
      {word: "整理", reading: "せいり", meaning: "sorting; arrangement"},
      {word: "整える", reading: "ととのえる", meaning: "to put in order; to arrange"},
      {word: "整う", reading: "ととのう", meaning: "to be prepared; to be in order"}
    ],
  },
  {
    kanji: "数",
    keyword: "number/strength",
    reading: "かず / かぞ.える / しばしば / せ.める / スウ / ス / サク",
    radical: "数",
    componentHint: "classical radical 66",
    examples: [
      {word: "無数", reading: "むすう", meaning: "countless number; infinite number"},
      {word: "数える", reading: "かぞえる", meaning: "to count; to enumerate"},
      {word: "数字", reading: "すうじ", meaning: "numeral; figure"}
    ],
  },
  {
    kanji: "類",
    keyword: "sort/kind",
    reading: "たぐ.い / ルイ",
    radical: "類",
    componentHint: "classical radical 181",
    examples: [
      {word: "人類", reading: "じんるい", meaning: "mankind; humanity"},
      {word: "種類", reading: "しゅるい", meaning: "variety; kind"},
      {word: "書類", reading: "しょるい", meaning: "documents; official papers"}
    ],
  },
  {
    kanji: "示",
    keyword: "show/indicate",
    reading: "しめ.す / ジ / シ",
    radical: "示",
    componentHint: "classical radical 113",
    examples: [
      {word: "示す", reading: "しめす", meaning: "to (take out and) show; to demonstrate"},
      {word: "指示", reading: "しじ", meaning: "indication; instruction"},
      {word: "表示", reading: "ひょうじ", meaning: "indication; expression"}
    ],
  },
  {
    kanji: "禁",
    keyword: "prohibition/ban",
    reading: "キン",
    radical: "禁",
    componentHint: "classical radical 113",
    examples: [
      {word: "禁じる", reading: "きんじる", meaning: "to prohibit"},
      {word: "禁止", reading: "きんし", meaning: "prohibition; inhibition"},
      {word: "監禁", reading: "かんきん", meaning: "confinement"}
    ],
  },
  {
    kanji: "礼",
    keyword: "salute/bow",
    reading: "レイ / ライ",
    radical: "礼",
    componentHint: "classical radical 113",
    examples: [
      {word: "失礼", reading: "しつれい", meaning: "discourtesy; impoliteness"},
      {word: "お礼", reading: "おれい", meaning: "thanks; gratitude"},
      {word: "礼儀", reading: "れいぎ", meaning: "manners; courtesy"}
    ],
  },
  {
    kanji: "社",
    keyword: "company/firm",
    reading: "やしろ / シャ",
    radical: "社",
    componentHint: "classical radical 113",
    examples: [
      {word: "会社", reading: "かいしゃ", meaning: "company; corporation"},
      {word: "社会", reading: "しゃかい", meaning: "society; public"},
      {word: "社長", reading: "しゃちょう", meaning: "company president; manager"}
    ],
  },
  {
    kanji: "申",
    keyword: "have the honor to/sign of the monkey",
    reading: "もう.す / もう.し- / さる / シン",
    radical: "申",
    componentHint: "classical radical 102",
    examples: [
      {word: "申す", reading: "もうす", meaning: "to say; to be called"},
      {word: "申し上げる", reading: "もうしあげる", meaning: "to say; to tell"},
      {word: "申し訳", reading: "もうしわけ", meaning: "apology; excuse"}
    ],
  },
  {
    kanji: "神",
    keyword: "gods/mind",
    reading: "かみ / かん- / こう- / シン / ジン",
    radical: "神",
    componentHint: "classical radical 113",
    examples: [
      {word: "精神", reading: "せいしん", meaning: "mind; soul"},
      {word: "神経", reading: "しんけい", meaning: "nerve; nerves"},
      {word: "神社", reading: "じんじゃ", meaning: "Shinto shrine"}
    ],
  },
  {
    kanji: "員",
    keyword: "employee/member",
    reading: "イン",
    radical: "員",
    componentHint: "classical radical 30",
    examples: [
      {word: "全員", reading: "ぜんいん", meaning: "all members (unanimity); all hands"},
      {word: "委員", reading: "いいん", meaning: "committee member"},
      {word: "社員", reading: "しゃいん", meaning: "company employee; company stockholders (esp. in legal contexts)"}
    ],
  },
  {
    kanji: "質",
    keyword: "substance/quality",
    reading: "たち / ただ.す / もと / わりふ / シツ / シチ / チ",
    radical: "質",
    componentHint: "classical radical 154",
    examples: [
      {word: "質問", reading: "しつもん", meaning: "question; inquiry"},
      {word: "性質", reading: "せいしつ", meaning: "nature; property"},
      {word: "物質", reading: "ぶっしつ", meaning: "material; substance"}
    ],
  },
  {
    kanji: "党",
    keyword: "party/faction",
    reading: "なかま / むら / トウ",
    radical: "党",
    componentHint: "classical radical 10",
    examples: [
      {word: "悪党", reading: "あくとう", meaning: "scoundrel; rascal"},
      {word: "共産党", reading: "きょうさんとう", meaning: "Communist Party"},
      {word: "政党", reading: "せいとう", meaning: "political party"}
    ],
  },
  {
    kanji: "堂",
    keyword: "public chamber/hall",
    reading: "ドウ",
    radical: "堂",
    componentHint: "classical radical 32",
    examples: [
      {word: "食堂", reading: "しょくどう", meaning: "dining room; dining hall"},
      {word: "堂々", reading: "どうどう", meaning: "magnificent; grand"},
      {word: "本堂", reading: "ほんどう", meaning: "main temple building; nave"}
    ],
  },
  {
    kanji: "常",
    keyword: "usual/ordinary",
    reading: "つね / とこ- / ジョウ",
    radical: "常",
    componentHint: "classical radical 50",
    examples: [
      {word: "非常", reading: "ひじょう", meaning: "emergency; extraordinary"},
      {word: "異常", reading: "いじょう", meaning: "strangeness; abnormality"},
      {word: "常に", reading: "つねに", meaning: "always; constantly"}
    ],
  },
  {
    kanji: "賞",
    keyword: "prize/reward",
    reading: "ほ.める / ショウ",
    radical: "賞",
    componentHint: "classical radical 154",
    examples: [
      {word: "鑑賞", reading: "かんしょう", meaning: "appreciation (e.g. of art); aesthetic sense"},
      {word: "受賞", reading: "じゅしょう", meaning: "winning (a prize)"},
      {word: "賞賛", reading: "しょうさん", meaning: "praise; admiration"}
    ],
  },
  {
    kanji: "償",
    keyword: "reparation/make up for",
    reading: "つぐな.う / ショウ",
    radical: "償",
    componentHint: "classical radical 9",
    examples: [
      {word: "代償", reading: "だいしょう", meaning: "compensation; indemnification"},
      {word: "償う", reading: "つぐなう", meaning: "to make up for; to recompense"},
      {word: "賠償", reading: "ばいしょう", meaning: "compensation; reparations"}
    ],
  },
  {
    kanji: "掌",
    keyword: "manipulate/rule",
    reading: "てのひら / たなごころ / ショウ",
    radical: "掌",
    componentHint: "classical radical 64",
    examples: [
      {word: "車掌", reading: "しゃしょう", meaning: "(train) conductor"},
      {word: "合掌", reading: "がっしょう", meaning: "pressing one's hands together in prayer; triangular frame of a thatched roof"},
      {word: "掌握", reading: "しょうあく", meaning: "grasping; seizing"}
    ],
  },
  {
    kanji: "覚",
    keyword: "memorize/learn",
    reading: "おぼ.える / さ.ます / さ.める / さと.る / カク",
    radical: "覚",
    componentHint: "classical radical 147",
    examples: [
      {word: "覚える", reading: "おぼえる", meaning: "to memorize; to memorise"},
      {word: "感覚", reading: "かんかく", meaning: "sense; sensation"},
      {word: "覚悟", reading: "かくご", meaning: "resolution; resignation"}
    ],
  },
  {
    kanji: "悟",
    keyword: "enlightenment/perceive",
    reading: "さと.る / ゴ",
    radical: "悟",
    componentHint: "classical radical 61",
    examples: [
      {word: "覚悟", reading: "かくご", meaning: "resolution; resignation"},
      {word: "悟る", reading: "さとる", meaning: "to perceive; to sense"},
      {word: "悟り", reading: "さとり", meaning: "comprehension; understanding"}
    ],
  },
  {
    kanji: "感",
    keyword: "emotion/feeling",
    reading: "カン",
    radical: "感",
    componentHint: "classical radical 61",
    examples: [
      {word: "感じる", reading: "かんじる", meaning: "to feel; to sense"},
      {word: "感じ", reading: "かんじ", meaning: "feeling; sense"},
      {word: "感情", reading: "かんじょう", meaning: "emotion; feeling"}
    ],
  },
  {
    kanji: "央",
    keyword: "center/middle",
    reading: "オウ",
    radical: "央",
    componentHint: "classical radical 37",
    examples: [
      {word: "中央", reading: "ちゅうおう", meaning: "centre; center"},
      {word: "中央線", reading: "ちゅうおうせん", meaning: "Chuo Line (central railway line in Tokyo)"},
      {word: "中央アジア", reading: "ちゅうおうアジア", meaning: "central Asia"}
    ],
  },
  {
    kanji: "映",
    keyword: "reflect/reflection",
    reading: "うつ.る / うつ.す / は.える / -ば.え / エイ",
    radical: "映",
    componentHint: "classical radical 72",
    examples: [
      {word: "映画", reading: "えいが", meaning: "movie; film"},
      {word: "映る", reading: "うつる", meaning: "to be reflected; to harmonize with (harmonise)"},
      {word: "映像", reading: "えいぞう", meaning: "reflection; image"}
    ],
  },
  {
    kanji: "決",
    keyword: "decide/fix",
    reading: "き.める / -ぎ.め / き.まる / さ.く / ケツ",
    radical: "決",
    componentHint: "classical radical 85",
    examples: [
      {word: "決して", reading: "けっして", meaning: "never; by no means"},
      {word: "決める", reading: "きめる", meaning: "to decide; to choose"},
      {word: "決まる", reading: "きまる", meaning: "to be decided; to be settled"}
    ],
  },
  {
    kanji: "快",
    keyword: "cheerful/pleasant",
    reading: "こころよ.い / カイ",
    radical: "快",
    componentHint: "classical radical 61",
    examples: [
      {word: "不快", reading: "ふかい", meaning: "unpleasant; displeasure"},
      {word: "愉快", reading: "ゆかい", meaning: "pleasant; happy"},
      {word: "不愉快", reading: "ふゆかい", meaning: "discomfort; unpleasantness"}
    ],
  },
  {
    kanji: "英",
    keyword: "England/English",
    reading: "はなぶさ / エイ",
    radical: "英",
    componentHint: "classical radical 140",
    examples: [
      {word: "英語", reading: "えいご", meaning: "English (language)"},
      {word: "英雄", reading: "えいゆう", meaning: "hero; heroine"},
      {word: "英国", reading: "えいこく", meaning: "Great Britain; the United Kingdom"}
    ],
  },
  {
    kanji: "並",
    keyword: "row/and",
    reading: "な.み / なみ / なら.べる / なら.ぶ / ヘイ / ホウ",
    radical: "並",
    componentHint: "classical radical 1",
    examples: [
      {word: "並ぶ", reading: "ならぶ", meaning: "to line up; to stand in a line"},
      {word: "並べる", reading: "ならべる", meaning: "to line up; to set up"},
      {word: "並み", reading: "なみ", meaning: "average; medium"}
    ],
  },
  {
    kanji: "平",
    keyword: "even/flat",
    reading: "たい.ら / -だいら / ひら / ひら- / ヘイ / ビョウ / ヒョウ",
    radical: "平",
    componentHint: "classical radical 51",
    examples: [
      {word: "平気", reading: "へいき", meaning: "coolness; calmness"},
      {word: "平和", reading: "へいわ", meaning: "peace; harmony"},
      {word: "平凡", reading: "へいぼん", meaning: "common; commonplace"}
    ],
  },
  {
    kanji: "半",
    keyword: "half/middle",
    reading: "なか.ば / ハン",
    radical: "半",
    componentHint: "classical radical 24",
    examples: [
      {word: "半分", reading: "はんぶん", meaning: "half"},
      {word: "半ば", reading: "なかば", meaning: "middle; half"},
      {word: "時半", reading: "じはん", meaning: "about an hour; short time"}
    ],
  },
  {
    kanji: "馬",
    keyword: "horse",
    reading: "うま / うま- / ま / バ",
    radical: "馬",
    componentHint: "classical radical 187",
    examples: [
      {word: "馬鹿", reading: "ばか", meaning: "fool; idiot"},
      {word: "馬車", reading: "ばしゃ", meaning: "(horse-drawn) coach; carriage"},
      {word: "競馬", reading: "けいば", meaning: "horse racing"}
    ],
  },
  {
    kanji: "尺",
    keyword: "shaku/Japanese foot",
    reading: "シャク",
    radical: "尺",
    componentHint: "classical radical 44",
    examples: [
      {word: "三尺", reading: "さんじゃく", meaning: "3 Japanese feet; waistband"},
      {word: "六尺", reading: "ろくしゃく", meaning: "six feet; traditional Japanese G-string for men"},
      {word: "尺度", reading: "しゃくど", meaning: "linear measure; scale"}
    ],
  },
  {
    kanji: "尽",
    keyword: "exhaust/use up",
    reading: "つ.くす / -つ.くす / -づ.くし / -つ.く / ジン / サン",
    radical: "尽",
    componentHint: "classical radical 44",
    examples: [
      {word: "尽くす", reading: "つくす", meaning: "to exhaust; to run out"},
      {word: "尽きる", reading: "つきる", meaning: "to be used up; to be run out"},
      {word: "尽す", reading: "つくす", meaning: "to exhaust; to run out"}
    ],
  },
  {
    kanji: "駅",
    keyword: "station",
    reading: "エキ",
    radical: "駅",
    componentHint: "classical radical 187",
    examples: [
      {word: "駅前", reading: "えきまえ", meaning: "in front of station"},
      {word: "駅員", reading: "えきいん", meaning: "station attendant"},
      {word: "駅長", reading: "えきちょう", meaning: "station master"}
    ],
  },
  {
    kanji: "鳥",
    keyword: "bird/chicken",
    reading: "とり / チョウ",
    radical: "鳥",
    componentHint: "classical radical 196",
    examples: [
      {word: "小鳥", reading: "ことり", meaning: "small bird; songbird"},
      {word: "鳥居", reading: "とりい", meaning: "torii; Shinto shrine archway"},
      {word: "白鳥", reading: "はくちょう", meaning: "swan (Cygnus spp.); white-feathered bird"}
    ],
  },
  {
    kanji: "島",
    keyword: "island",
    reading: "しま / トウ",
    radical: "島",
    componentHint: "classical radical 46",
    examples: [
      {word: "島田", reading: "しまだ", meaning: "pompadour-like hair style, popular for unmarried women in the Edo period; shimada coiffure"},
      {word: "広島", reading: "ひろしま", meaning: "Hiroshima (city); atomic bombing of Hiroshima"},
      {word: "中島", reading: "なかじま", meaning: "island in a pond or river"}
    ],
  },
  {
    kanji: "角",
    keyword: "angle/corner",
    reading: "かど / つの / カク",
    radical: "角",
    componentHint: "classical radical 148",
    examples: [
      {word: "方角", reading: "ほうがく", meaning: "direction; way"},
      {word: "一角", reading: "いっかく", meaning: "corner; section"},
      {word: "角度", reading: "かくど", meaning: "angle"}
    ],
  },
  {
    kanji: "虫",
    keyword: "insect/bug",
    reading: "むし / チュウ / キ",
    radical: "虫",
    componentHint: "classical radical 142",
    examples: [
      {word: "昆虫", reading: "こんちゅう", meaning: "insect; bug"},
      {word: "爬虫類", reading: "はちゅうるい", meaning: "reptiles"},
      {word: "弱虫", reading: "よわむし", meaning: "coward; weakling"}
    ],
  },
  {
    kanji: "触",
    keyword: "contact/touch",
    reading: "ふ.れる / さわ.る / さわ / ショク",
    radical: "触",
    componentHint: "classical radical 148",
    examples: [
      {word: "触れる", reading: "ふれる", meaning: "to touch; to feel"},
      {word: "感触", reading: "かんしょく", meaning: "feel (i.e. tactile sensation); touch"},
      {word: "触る", reading: "さわる", meaning: "to touch; to feel"}
    ],
  },
  {
    kanji: "解",
    keyword: "unravel/notes",
    reading: "と.く / と.かす / と.ける / ほど.く / カイ / ゲ",
    radical: "解",
    componentHint: "classical radical 148",
    examples: [
      {word: "理解", reading: "りかい", meaning: "understanding; comprehension"},
      {word: "解決", reading: "かいけつ", meaning: "settlement; solution"},
      {word: "解く", reading: "とく", meaning: "to untie; to unfasten"}
    ],
  },
  {
    kanji: "独",
    keyword: "single/alone",
    reading: "ひと.り / ドク / トク",
    radical: "独",
    componentHint: "classical radical 94",
    examples: [
      {word: "孤独", reading: "こどく", meaning: "isolation; loneliness"},
      {word: "独立", reading: "どくりつ", meaning: "independence (e.g. Independence Day); self-support"},
      {word: "独り", reading: "ひとり", meaning: "one person; alone"}
    ],
  },
  {
    kanji: "店",
    keyword: "store/shop",
    reading: "みせ / たな / テン",
    radical: "店",
    componentHint: "classical radical 53",
    examples: [
      {word: "喫茶店", reading: "きっさてん", meaning: "coffee shop; tearoom"},
      {word: "商店", reading: "しょうてん", meaning: "shop; small store"},
      {word: "店員", reading: "てんいん", meaning: "shop assistant; employee"}
    ],
  },
  {
    kanji: "占",
    keyword: "fortune-telling/divining",
    reading: "し.める / うらな.う / セン",
    radical: "占",
    componentHint: "classical radical 25",
    examples: [
      {word: "占める", reading: "しめる", meaning: "to occupy; to hold"},
      {word: "占領", reading: "せんりょう", meaning: "occupation; capture"},
      {word: "占い", reading: "うらない", meaning: "fortune-telling; divination"}
    ],
  },
  {
    kanji: "点",
    keyword: "spot/point",
    reading: "つ.ける / つ.く / た.てる / さ.す / テン",
    radical: "点",
    componentHint: "classical radical 86",
    examples: [
      {word: "時点", reading: "じてん", meaning: "point in time; occasion"},
      {word: "地点", reading: "ちてん", meaning: "site; point on a map"},
      {word: "欠点", reading: "けってん", meaning: "fault; defect"}
    ],
  },
  {
    kanji: "士",
    keyword: "gentleman/samurai",
    reading: "さむらい / シ",
    radical: "士",
    componentHint: "classical radical 33",
    examples: [
      {word: "博士", reading: "はかせ", meaning: "doctorate; PhD"},
      {word: "騎士", reading: "きし", meaning: "knight"},
      {word: "兵士", reading: "へいし", meaning: "soldier"}
    ],
  },
  {
    kanji: "商",
    keyword: "make a deal/selling",
    reading: "あきな.う / ショウ",
    radical: "商",
    componentHint: "classical radical 30",
    examples: [
      {word: "商売", reading: "しょうばい", meaning: "trade; business"},
      {word: "商人", reading: "しょうにん", meaning: "trader; shopkeeper"},
      {word: "商品", reading: "しょうひん", meaning: "commodity; article of commerce"}
    ],
  },
  {
    kanji: "買",
    keyword: "buy",
    reading: "か.う / バイ",
    radical: "買",
    componentHint: "classical radical 154",
    examples: [
      {word: "買う", reading: "かう", meaning: "to buy; to purchase"},
      {word: "買い物", reading: "かいもの", meaning: "shopping; purchased goods"},
      {word: "買物", reading: "かいもの", meaning: "shopping; purchased goods"}
    ],
  },
  {
    kanji: "売",
    keyword: "sell",
    reading: "う.る / う.れる / バイ",
    radical: "売",
    componentHint: "classical radical 33",
    examples: [
      {word: "売る", reading: "うる", meaning: "to sell"},
      {word: "商売", reading: "しょうばい", meaning: "trade; business"},
      {word: "売れる", reading: "うれる", meaning: "to sell (well); to be well known"}
    ],
  },
  {
    kanji: "続",
    keyword: "continue/series",
    reading: "つづ.く / つづ.ける / つぐ.ない / ゾク / ショク / コウ",
    radical: "続",
    componentHint: "classical radical 120",
    examples: [
      {word: "続ける", reading: "つづける", meaning: "to continue; to keep up"},
      {word: "続く", reading: "つづく", meaning: "to continue; to last"},
      {word: "連続", reading: "れんぞく", meaning: "serial; consecutive"}
    ],
  },
  {
    kanji: "読",
    keyword: "read",
    reading: "よ.む / -よ.み / ドク / トク / トウ",
    radical: "読",
    componentHint: "classical radical 149",
    examples: [
      {word: "読む", reading: "よむ", meaning: "to read; to count"},
      {word: "読者", reading: "どくしゃ", meaning: "reader"},
      {word: "読書", reading: "どくしょ", meaning: "reading"}
    ],
  },
  {
    kanji: "共",
    keyword: "together/both",
    reading: "とも / とも.に / -ども / キョウ",
    radical: "共",
    componentHint: "classical radical 12",
    examples: [
      {word: "と共に", reading: "とともに", meaning: "together with; as X, then Y (e.g. as we age we gain wisdom, as wine matures it becomes more valuable, etc.)"},
      {word: "共に", reading: "ともに", meaning: "together; jointly"},
      {word: "共通", reading: "きょうつう", meaning: "commonness; community"}
    ],
  },
  {
    kanji: "供",
    keyword: "submit/offer",
    reading: "そな.える / とも / -ども / キョウ / ク / クウ",
    radical: "供",
    componentHint: "classical radical 9",
    examples: [
      {word: "子供", reading: "こども", meaning: "child; children"},
      {word: "提供", reading: "ていきょう", meaning: "offer; tender"},
      {word: "お供", reading: "おとも", meaning: "attendant; companion"}
    ],
  },
  {
    kanji: "洪",
    keyword: "deluge/flood",
    reading: "コウ",
    radical: "洪",
    componentHint: "classical radical 85",
    examples: [
      {word: "洪水", reading: "こうずい", meaning: "flood"},
      {word: "洪積世", reading: "こうせきせい", meaning: "diluvial epoch"},
      {word: "洪積", reading: "こうせき", meaning: "diluvial epoch (geol.)"}
    ],
  },
  {
    kanji: "昔",
    keyword: "once upon a time/antiquity",
    reading: "むかし / セキ / シャク",
    radical: "昔",
    componentHint: "classical radical 72",
    examples: [
      {word: "大昔", reading: "おおむかし", meaning: "great antiquity; old-fashioned"},
      {word: "昔話", reading: "むかしばなし", meaning: "old tale; folk tale"},
      {word: "昔ながら", reading: "むかしながら", meaning: "the same as it was long ago; unchanged"}
    ],
  },
  {
    kanji: "冬",
    keyword: "winter",
    reading: "ふゆ / トウ",
    radical: "冬",
    componentHint: "classical radical 15",
    examples: [
      {word: "真冬", reading: "まふゆ", meaning: "midwinter"},
      {word: "冬木", reading: "ふゆき", meaning: "a tree as seen in winter (esp. a barren deciduous tree); evergreen tree"},
      {word: "冬眠", reading: "とうみん", meaning: "hibernation; winter sleep"}
    ],
  },
  {
    kanji: "寒",
    keyword: "cold",
    reading: "さむ.い / カン",
    radical: "寒",
    componentHint: "classical radical 40",
    examples: [
      {word: "寒い", reading: "さむい", meaning: "cold (e.g. weather); uninteresting (esp. joke)"},
      {word: "寒気", reading: "さむけ", meaning: "chill; the shivers"},
      {word: "悪寒", reading: "おかん", meaning: "chill; shakes"}
    ],
  },
  {
    kanji: "春",
    keyword: "springtime/spring (season)",
    reading: "はる / シュン",
    radical: "春",
    componentHint: "classical radical 72",
    examples: [
      {word: "青春", reading: "せいしゅん", meaning: "youth; springtime of life"},
      {word: "売春", reading: "ばいしゅん", meaning: "prostitution"},
      {word: "春田", reading: "はるた", meaning: "empty rice field (between the harvest and spring)"}
    ],
  },
  {
    kanji: "夏",
    keyword: "summer",
    reading: "なつ / カ / ガ / ゲ",
    radical: "夏",
    componentHint: "classical radical 35",
    examples: [
      {word: "夏休み", reading: "なつやすみ", meaning: "summer vacation; summer holiday"},
      {word: "初夏", reading: "しょか", meaning: "early summer; fourth month of the lunar calendar"},
      {word: "真夏", reading: "まなつ", meaning: "midsummer"}
    ],
  },
  {
    kanji: "秋",
    keyword: "autumn",
    reading: "あき / とき / シュウ",
    radical: "秋",
    componentHint: "classical radical 115",
    examples: [
      {word: "千秋", reading: "せんしゅう", meaning: "thousand years; many years"},
      {word: "晩秋", reading: "ばんしゅう", meaning: "late autumn (fall); ninth month of the lunar calendar"},
      {word: "秋風", reading: "あきかぜ", meaning: "autumn breeze; fall breeze"}
    ],
  },
  {
    kanji: "主",
    keyword: "lord/chief",
    reading: "ぬし / おも / あるじ / シュ / ス / シュウ",
    radical: "主",
    componentHint: "classical radical 3",
    examples: [
      {word: "主人", reading: "しゅじん", meaning: "head (of a household); proprietor (of a store)"},
      {word: "主義", reading: "しゅぎ", meaning: "doctrine; rule"},
      {word: "主張", reading: "しゅちょう", meaning: "claim; request"}
    ],
  },
  {
    kanji: "住",
    keyword: "dwell/reside",
    reading: "す.む / す.まう / -ず.まい / ジュウ / ヂュウ / チュウ",
    radical: "住",
    componentHint: "classical radical 9",
    examples: [
      {word: "住む", reading: "すむ", meaning: "to live (of humans); to reside"},
      {word: "住所", reading: "じゅうしょ", meaning: "address (e.g. of house); residence"},
      {word: "住民", reading: "じゅうみん", meaning: "citizens; inhabitants"}
    ],
  },
  {
    kanji: "駐",
    keyword: "stop-over/reside in",
    reading: "チュウ",
    radical: "駐",
    componentHint: "classical radical 187",
    examples: [
      {word: "駐車", reading: "ちゅうしゃ", meaning: "parking (e.g. car)"},
      {word: "駐在", reading: "ちゅうざい", meaning: "residence; stay"},
      {word: "駐屯", reading: "ちゅうとん", meaning: "stationing (troops); occupancy"}
    ],
  },
  {
    kanji: "注",
    keyword: "pour/irrigate",
    reading: "そそ.ぐ / さ.す / つ.ぐ / チュウ",
    radical: "注",
    componentHint: "classical radical 85",
    examples: [
      {word: "注意", reading: "ちゅうい", meaning: "caution; being careful"},
      {word: "注ぐ", reading: "そそぐ", meaning: "to pour (into); to fill"},
      {word: "注文", reading: "ちゅうもん", meaning: "order; request"}
    ],
  },
  {
    kanji: "志",
    keyword: "intention/plan",
    reading: "シリング / こころざ.す / こころざし / シ",
    radical: "志",
    componentHint: "classical radical 61",
    examples: [
      {word: "意志", reading: "いし", meaning: "will; volition"},
      {word: "同志", reading: "どうし", meaning: "like-mindedness; (being of the) same mind"},
      {word: "志願", reading: "しがん", meaning: "aspiration; volunteering"}
    ],
  },
  {
    kanji: "誌",
    keyword: "document/records",
    reading: "シ",
    radical: "誌",
    componentHint: "classical radical 149",
    examples: [
      {word: "雑誌", reading: "ざっし", meaning: "journal; magazine"},
      {word: "日誌", reading: "にっし", meaning: "journal; log"},
      {word: "誌す", reading: "しるす", meaning: "to write down; to note"}
    ],
  },
  {
    kanji: "仕",
    keyword: "attend/doing",
    reading: "つか.える / シ / ジ",
    radical: "仕",
    componentHint: "classical radical 9",
    examples: [
      {word: "仕事", reading: "しごと", meaning: "work; job"},
      {word: "仕方", reading: "しかた", meaning: "way; method"},
      {word: "仕える", reading: "つかえる", meaning: "to serve; to work for"}
    ],
  },
  {
    kanji: "任",
    keyword: "responsibility/duty",
    reading: "まか.せる / まか.す / ニン",
    radical: "任",
    componentHint: "classical radical 9",
    examples: [
      {word: "責任", reading: "せきにん", meaning: "duty; responsibility (incl. supervision of staff)"},
      {word: "任せる", reading: "まかせる", meaning: "to entrust (e.g. a task) to another; to leave to"},
      {word: "任務", reading: "にんむ", meaning: "duty; function"}
    ],
  },
  {
    kanji: "支",
    keyword: "branch/support",
    reading: "ささ.える / つか.える / か.う / シ",
    radical: "支",
    componentHint: "classical radical 65",
    examples: [
      {word: "支配", reading: "しはい", meaning: "domination; rule"},
      {word: "支える", reading: "ささえる", meaning: "to support; to prop"},
      {word: "支度", reading: "したく", meaning: "preparation; arrangements"}
    ],
  },
  {
    kanji: "反",
    keyword: "anti-",
    reading: "そ.る / そ.らす / かえ.す / かえ.る / ハン / ホン / タン",
    radical: "反",
    componentHint: "classical radical 29",
    examples: [
      {word: "反対", reading: "はんたい", meaning: "opposition; resistance"},
      {word: "反応", reading: "はんのう", meaning: "reaction; response"},
      {word: "反射", reading: "はんしゃ", meaning: "reflection; reverberation"}
    ],
  },
  {
    kanji: "坂",
    keyword: "slope/incline",
    reading: "さか / ハン",
    radical: "坂",
    componentHint: "classical radical 32",
    examples: [
      {word: "坂道", reading: "さかみち", meaning: "hill road"},
      {word: "坂東", reading: "ばんどう", meaning: "Kanto region (incl. Tokyo, Kanagawa, Saitama, Gunma, Tochigi, Ibaraki and Chiba prefectures)"},
      {word: "下り坂", reading: "くだりざか", meaning: "descent; downhill"}
    ],
  },
  {
    kanji: "阪",
    keyword: "heights/slope",
    reading: "さか / ハン",
    radical: "阪",
    componentHint: "classical radical 170",
    examples: [
      {word: "大阪", reading: "おおさか", meaning: "Osaka; large hill"},
      {word: "阪神", reading: "はんしん", meaning: "Osaka-Kobe; Hanshin (company name: railway, dept. store, baseball team, etc.)"},
      {word: "京阪", reading: "けいはん", meaning: "Kyoto-Osaka"}
    ],
  },
  {
    kanji: "飯",
    keyword: "meal/boiled rice",
    reading: "めし / ハン",
    radical: "飯",
    componentHint: "classical radical 184",
    examples: [
      {word: "ご飯", reading: "ごはん", meaning: "cooked rice; meal"},
      {word: "夕飯", reading: "ゆうはん", meaning: "evening meal"},
      {word: "御飯", reading: "ごはん", meaning: "cooked rice; meal"}
    ],
  },
  {
    kanji: "返",
    keyword: "return/answer",
    reading: "かえ.す / -かえ.す / かえ.る / -かえ.る / ヘン",
    radical: "返",
    componentHint: "classical radical 162",
    examples: [
      {word: "返す", reading: "かえす", meaning: "to return (something); to restore"},
      {word: "返事", reading: "へんじ", meaning: "reply; answer"},
      {word: "振り返る", reading: "ふりかえる", meaning: "to turn head; to look over one's shoulder"}
    ],
  },
  {
    kanji: "雑",
    keyword: "miscellaneous",
    reading: "まじ.える / まじ.る / ザツ / ゾウ",
    radical: "雑",
    componentHint: "classical radical 172",
    examples: [
      {word: "雑誌", reading: "ざっし", meaning: "journal; magazine"},
      {word: "複雑", reading: "ふくざつ", meaning: "complex; complicated"},
      {word: "雑草", reading: "ざっそう", meaning: "weed"}
    ],
  },
  {
    kanji: "乱",
    keyword: "riot/war",
    reading: "みだ.れる / みだ.る / みだ.す / みだ / ラン / ロン",
    radical: "乱",
    componentHint: "classical radical 5",
    examples: [
      {word: "混乱", reading: "こんらん", meaning: "disorder; chaos"},
      {word: "乱暴", reading: "らんぼう", meaning: "rude; violent"},
      {word: "乱れる", reading: "みだれる", meaning: "to be disordered; to be disarranged"}
    ],
  },
  {
    kanji: "寸",
    keyword: "measurement/tenth of a shaku",
    reading: "スン",
    radical: "寸",
    componentHint: "classical radical 41",
    examples: [
      {word: "寸前", reading: "すんぜん", meaning: "on the verge; on the brink"},
      {word: "一寸", reading: "いっすん", meaning: "one sun (approx. 3.03 cm); a little bit (of time, distance, etc.)"},
      {word: "寸法", reading: "すんぽう", meaning: "measurement; size"}
    ],
  },
  {
    kanji: "寺",
    keyword: "Buddhist temple",
    reading: "てら / ジ",
    radical: "寺",
    componentHint: "classical radical 41",
    examples: [
      {word: "寺院", reading: "じいん", meaning: "temple"},
      {word: "お寺", reading: "おてら", meaning: "temple; monk"},
      {word: "寺内", reading: "じない", meaning: "inside a temple"}
    ],
  },
  {
    kanji: "時",
    keyword: "time/hour",
    reading: "とき / -どき / ジ",
    radical: "時",
    componentHint: "classical radical 72",
    examples: [
      {word: "時間", reading: "じかん", meaning: "time; hours"},
      {word: "時代", reading: "じだい", meaning: "period; epoch"},
      {word: "同時に", reading: "どうじに", meaning: "coincident with; while"}
    ],
  },
  {
    kanji: "持",
    keyword: "hold/have",
    reading: "も.つ / -も.ち / も.てる / ジ",
    radical: "持",
    componentHint: "classical radical 64",
    examples: [
      {word: "持つ", reading: "もつ", meaning: "to hold (in one's hand); to take"},
      {word: "気持ち", reading: "きもち", meaning: "feeling; sensation"},
      {word: "気持", reading: "きもち", meaning: "feeling; sensation"}
    ],
  },
  {
    kanji: "特",
    keyword: "special",
    reading: "トク",
    radical: "特",
    componentHint: "classical radical 93",
    examples: [
      {word: "特に", reading: "とくに", meaning: "particularly; especially"},
      {word: "特別", reading: "とくべつ", meaning: "special"},
      {word: "特殊", reading: "とくしゅ", meaning: "special; particular"}
    ],
  },
  {
    kanji: "待",
    keyword: "wait/depend on",
    reading: "ま.つ / -ま.ち / タイ",
    radical: "待",
    componentHint: "classical radical 60",
    examples: [
      {word: "待つ", reading: "まつ", meaning: "to wait; to await"},
      {word: "期待", reading: "きたい", meaning: "expectation; anticipation"},
      {word: "招待", reading: "しょうたい", meaning: "invitation"}
    ],
  },
  {
    kanji: "得",
    keyword: "gain/get",
    reading: "え.る / う.る / トク",
    radical: "得",
    componentHint: "classical radical 60",
    examples: [
      {word: "納得", reading: "なっとく", meaning: "consent; assent"},
      {word: "得意", reading: "とくい", meaning: "triumph; prosperity"},
      {word: "説得", reading: "せっとく", meaning: "persuasion"}
    ],
  },
  {
    kanji: "侍",
    keyword: "waiter/samurai",
    reading: "さむらい / はべ.る / ジ / シ",
    radical: "侍",
    componentHint: "classical radical 9",
    examples: [
      {word: "侍女", reading: "じじょ", meaning: "lady attendant; maid"},
      {word: "侍従", reading: "じじゅう", meaning: "chamberlain"},
      {word: "侍る", reading: "はべる", meaning: "to wait upon; to serve"}
    ],
  },
  {
    kanji: "詩",
    keyword: "poem/poetry",
    reading: "うた / シ",
    radical: "詩",
    componentHint: "classical radical 149",
    examples: [
      {word: "詩人", reading: "しじん", meaning: "poet"},
      {word: "詩集", reading: "ししゅう", meaning: "poetry anthology; collection of poems"},
      {word: "吟遊詩人", reading: "ぎんゆうしじん", meaning: "troubadour; minstrel"}
    ],
  },
  {
    kanji: "即",
    keyword: "instant/namely",
    reading: "つ.く / つ.ける / すなわ.ち / ソク",
    radical: "即",
    componentHint: "classical radical 26",
    examples: [
      {word: "即座", reading: "そくざ", meaning: "immediate; right there on the spot"},
      {word: "即ち", reading: "すなわち", meaning: "that is; namely"},
      {word: "即位", reading: "そくい", meaning: "enthronement"}
    ],
  },
  {
    kanji: "節",
    keyword: "node/season",
    reading: "ふし / -ぶし / のっと / セツ / セチ",
    radical: "節",
    componentHint: "classical radical 118",
    examples: [
      {word: "関節", reading: "かんせつ", meaning: "joints (knee joint, elbow joint, etc.)"},
      {word: "一節", reading: "いっせつ", meaning: "a verse (e.g. in the Bible); stanza"},
      {word: "調節", reading: "ちょうせつ", meaning: "regulation; adjustment"}
    ],
  },
  {
    kanji: "筋",
    keyword: "muscle/sinew",
    reading: "すじ / キン",
    radical: "筋",
    componentHint: "classical radical 118",
    examples: [
      {word: "筋肉", reading: "きんにく", meaning: "muscle; sinew"},
      {word: "背筋", reading: "せすじ", meaning: "the muscles along the spine; dorsal muscles"},
      {word: "首筋", reading: "くびすじ", meaning: "nape of the neck; back of the neck"}
    ],
  },
  {
    kanji: "等",
    keyword: "etc./and so forth",
    reading: "ひと.しい / など / -ら / トウ",
    radical: "等",
    componentHint: "classical radical 118",
    examples: [
      {word: "彼等", reading: "かれら", meaning: "they (usually male); them"},
      {word: "上等", reading: "じょうとう", meaning: "superiority; first-class"},
      {word: "高等", reading: "こうとう", meaning: "high class; high grade"}
    ],
  },
  {
    kanji: "均",
    keyword: "level/average",
    reading: "なら.す / キン",
    radical: "均",
    componentHint: "classical radical 32",
    examples: [
      {word: "平均", reading: "へいきん", meaning: "average; mean"},
      {word: "均衡", reading: "きんこう", meaning: "equilibrium; balance"},
      {word: "均整", reading: "きんせい", meaning: "symmetry; balance"}
    ],
  },
  {
    kanji: "季",
    keyword: "seasons",
    reading: "キ",
    radical: "季",
    componentHint: "classical radical 39",
    examples: [
      {word: "四季", reading: "しき", meaning: "four seasons"},
      {word: "年季", reading: "ねんき", meaning: "period of an apprentice's contract (usu. ten years); apprenticeship"},
      {word: "夏季", reading: "かき", meaning: "summer season"}
    ],
  },
  {
    kanji: "委",
    keyword: "committee/entrust to",
    reading: "ゆだ.ねる / イ",
    radical: "委",
    componentHint: "classical radical 38",
    examples: [
      {word: "委員", reading: "いいん", meaning: "committee member"},
      {word: "委ねる", reading: "ゆだねる", meaning: "to entrust (a matter) to; to leave to"},
      {word: "委細", reading: "いさい", meaning: "details; particulars"}
    ],
  },
  {
    kanji: "穴",
    keyword: "hole/aperture",
    reading: "あな / ケツ",
    radical: "穴",
    componentHint: "classical radical 116",
    examples: [
      {word: "洞穴", reading: "ほらあな", meaning: "cave; den"},
      {word: "鍵穴", reading: "かぎあな", meaning: "keyhole"},
      {word: "墓穴", reading: "ぼけつ", meaning: "grave, specifically the hole in the ground"}
    ],
  },
  {
    kanji: "空",
    keyword: "empty/sky",
    reading: "そら / あ.く / あ.き / あ.ける / クウ",
    radical: "空",
    componentHint: "classical radical 116",
    examples: [
      {word: "空気", reading: "くうき", meaning: "air; atmosphere"},
      {word: "空間", reading: "くうかん", meaning: "space; room"},
      {word: "空中", reading: "くうちゅう", meaning: "sky; air"}
    ],
  },
  {
    kanji: "友",
    keyword: "friend",
    reading: "とも / ユウ",
    radical: "友",
    componentHint: "classical radical 29",
    examples: [
      {word: "友人", reading: "ゆうじん", meaning: "friend"},
      {word: "友達", reading: "ともだち", meaning: "friend; companion"},
      {word: "友だち", reading: "ともだち", meaning: "friend; companion"}
    ],
  },
  {
    kanji: "有",
    keyword: "possess/have",
    reading: "あ.る / ユウ / ウ",
    radical: "有",
    componentHint: "classical radical 74",
    examples: [
      {word: "有名", reading: "ゆうめい", meaning: "famous; fame"},
      {word: "所有", reading: "しょゆう", meaning: "one's possessions; ownership"},
      {word: "有る", reading: "ある", meaning: "to be (usu. of inanimate objects); to exist"}
    ],
  },
  {
    kanji: "左",
    keyword: "left",
    reading: "ひだり / サ / シャ",
    radical: "左",
    componentHint: "classical radical 48",
    examples: [
      {word: "左右", reading: "さゆう", meaning: "left and right; influence"},
      {word: "左手", reading: "ひだりて", meaning: "left hand"},
      {word: "左様", reading: "さよう", meaning: "like that; that's right"}
    ],
  },
  {
    kanji: "右",
    keyword: "right",
    reading: "みぎ / ウ / ユウ",
    radical: "右",
    componentHint: "classical radical 30",
    examples: [
      {word: "右手", reading: "みぎて", meaning: "right hand"},
      {word: "左右", reading: "さゆう", meaning: "left and right; influence"},
      {word: "右側", reading: "みぎがわ", meaning: "right side; right hand"}
    ],
  },
  {
    kanji: "石",
    keyword: "stone",
    reading: "いし / セキ / シャク / コク",
    radical: "石",
    componentHint: "classical radical 112",
    examples: [
      {word: "宝石", reading: "ほうせき", meaning: "gem; jewel"},
      {word: "大石", reading: "おおいし", meaning: "large stone; boulder"},
      {word: "石段", reading: "いしだん", meaning: "(flight of) stone steps"}
    ],
  },
  {
    kanji: "若",
    keyword: "young/if",
    reading: "わか.い / わか- / も.しくわ / も.し / ジャク / ニャク / ニャ",
    radical: "若",
    componentHint: "classical radical 140",
    examples: [
      {word: "若い", reading: "わかい", meaning: "young; youthful"},
      {word: "若者", reading: "わかもの", meaning: "young man; young woman"},
      {word: "若旦那", reading: "わかだんな", meaning: "young master; young gentleman"}
    ],
  },
  {
    kanji: "苦",
    keyword: "suffering/trial",
    reading: "くる.しい / -ぐる.しい / くる.しむ / くる.しめる / ク",
    radical: "苦",
    componentHint: "classical radical 140",
    examples: [
      {word: "苦しい", reading: "くるしい", meaning: "painful; difficult"},
      {word: "苦笑", reading: "くしょう", meaning: "bitter smile; wry smile"},
      {word: "苦労", reading: "くろう", meaning: "troubles; hardships"}
    ],
  },
  {
    kanji: "在",
    keyword: "exist/outskirts",
    reading: "あ.る / ザイ",
    radical: "在",
    componentHint: "classical radical 32",
    examples: [
      {word: "存在", reading: "そんざい", meaning: "existence; being"},
      {word: "現在", reading: "げんざい", meaning: "now; current"},
      {word: "滞在", reading: "たいざい", meaning: "stay; sojourn"}
    ],
  },
  {
    kanji: "存",
    keyword: "exist/suppose",
    reading: "ながら.える / あ.る / たも.つ と.う / ソン / ゾン",
    radical: "存",
    componentHint: "classical radical 39",
    examples: [
      {word: "存在", reading: "そんざい", meaning: "existence; being"},
      {word: "存じる", reading: "ぞんじる", meaning: "to think, feel, consider, know, etc."},
      {word: "ご存じ", reading: "ごぞんじ", meaning: "knowing; (an) acquaintance"}
    ],
  },
  {
    kanji: "干",
    keyword: "dry/parch",
    reading: "ほ.す / ほ.し- / -ぼ.し / ひ.る / カン",
    radical: "干",
    componentHint: "classical radical 51",
    examples: [
      {word: "干渉", reading: "かんしょう", meaning: "interference; intervention"},
      {word: "飲み干す", reading: "のみほす", meaning: "to drink up; to drain (cup)"},
      {word: "干す", reading: "ほす", meaning: "to air; to dry"}
    ],
  },
  {
    kanji: "刊",
    keyword: "publish/carve",
    reading: "カン",
    radical: "刊",
    componentHint: "classical radical 18",
    examples: [
      {word: "週刊", reading: "しゅうかん", meaning: "published weekly"},
      {word: "刊行", reading: "かんこう", meaning: "publication; issue"},
      {word: "夕刊", reading: "ゆうかん", meaning: "evening paper"}
    ],
  },
  {
    kanji: "汗",
    keyword: "sweat/perspire",
    reading: "あせ / カン",
    radical: "汗",
    componentHint: "classical radical 85",
    examples: [
      {word: "汗ばむ", reading: "あせばむ", meaning: "to be sweaty"},
      {word: "冷や汗", reading: "ひやあせ", meaning: "cold sweat"},
      {word: "脂汗", reading: "あぶらあせ", meaning: "cold sweat; greasy sweat"}
    ],
  },
  {
    kanji: "竿",
    keyword: "pole/rod",
    reading: "さお / カン",
    radical: "竿",
    componentHint: "classical radical 118",
    examples: [
      {word: "釣竿", reading: "つりざお", meaning: "fishing rod"},
      {word: "竹竿", reading: "たけざお", meaning: "bamboo pole"},
      {word: "釣り竿", reading: "つりざお", meaning: "fishing rod"}
    ],
  },
  {
    kanji: "利",
    keyword: "profit/advantage",
    reading: "き.く / リ",
    radical: "利",
    componentHint: "classical radical 18",
    examples: [
      {word: "利用", reading: "りよう", meaning: "use; utilization"},
      {word: "勝利", reading: "しょうり", meaning: "victory; triumph"},
      {word: "権利", reading: "けんり", meaning: "right; privilege"}
    ],
  },
  {
    kanji: "害",
    keyword: "harm/injury",
    reading: "ガイ",
    radical: "害",
    componentHint: "classical radical 40",
    examples: [
      {word: "被害", reading: "ひがい", meaning: "(suffering) damage; injury"},
      {word: "殺害", reading: "さつがい", meaning: "killing; murder"},
      {word: "障害", reading: "しょうがい", meaning: "obstacle; impediment"}
    ],
  },
  {
    kanji: "益",
    keyword: "benefit/gain",
    reading: "ま.す / エキ / ヤク",
    radical: "益",
    componentHint: "classical radical 108",
    examples: [
      {word: "利益", reading: "りえき", meaning: "profit; gains"},
      {word: "無益", reading: "むえき", meaning: "useless; futile"},
      {word: "益々", reading: "ますます", meaning: "increasingly; more and more"}
    ],
  },
  {
    kanji: "溢",
    keyword: "overflow/inundate",
    reading: "こぼ.れる / あふ.れる / み.ちる / イツ",
    radical: "溢",
    componentHint: "classical radical 85",
    examples: [
      {word: "溢れる", reading: "あぶれる", meaning: "to fail (in getting a job); to miss out (at fishing, hunting, etc.)"},
      {word: "脳溢血", reading: "のういっけつ", meaning: "cerebral apoplexy"},
      {word: "横溢", reading: "おういつ", meaning: "overflowing; inundation"}
    ],
  },
  {
    kanji: "割",
    keyword: "proportion/comparatively",
    reading: "わ.る / わり / わ.り / わ.れる / カツ",
    radical: "割",
    componentHint: "classical radical 18",
    examples: [
      {word: "割る", reading: "わる", meaning: "to divide; to cut"},
      {word: "割れる", reading: "われる", meaning: "to break; to be smashed"},
      {word: "役割", reading: "やくわり", meaning: "part; assigning (allotment of) parts"}
    ],
  },
  {
    kanji: "憲",
    keyword: "constitution/law",
    reading: "ケン",
    radical: "憲",
    componentHint: "classical radical 61",
    examples: [
      {word: "憲兵", reading: "けんぺい", meaning: "military police"},
      {word: "憲法", reading: "けんぽう", meaning: "constitution"},
      {word: "官憲", reading: "かんけん", meaning: "officials; authorities"}
    ],
  },
  {
    kanji: "羽",
    keyword: "feathers/counter for birds, rabbits",
    reading: "は / わ / はね / ウ",
    radical: "羽",
    componentHint: "classical radical 124",
    examples: [
      {word: "羽根", reading: "はね", meaning: "feather; plume"},
      {word: "羽織", reading: "はおり", meaning: "haori (Japanese formal coat)"},
      {word: "羽目", reading: "はめ", meaning: "panel; wainscoting"}
    ],
  },
  {
    kanji: "翌",
    keyword: "the following/next",
    reading: "ヨク",
    radical: "翌",
    componentHint: "classical radical 124",
    examples: [
      {word: "翌日", reading: "よくじつ", meaning: "next day"},
      {word: "翌朝", reading: "よくあさ", meaning: "the next morning"},
      {word: "翌年", reading: "よくねん", meaning: "following year"}
    ],
  },
  {
    kanji: "習",
    keyword: "learn",
    reading: "なら.う / なら.い / シュウ / ジュ",
    radical: "習",
    componentHint: "classical radical 124",
    examples: [
      {word: "練習", reading: "れんしゅう", meaning: "practice; practising"},
      {word: "習慣", reading: "しゅうかん", meaning: "habit; custom"},
      {word: "習う", reading: "ならう", meaning: "to take lessons in; to be taught"}
    ],
  },
  {
    kanji: "弓",
    keyword: "bow/bow (archery, violin)",
    reading: "ゆみ / キュウ",
    radical: "弓",
    componentHint: "classical radical 57",
    examples: [
      {word: "真弓", reading: "まゆみ", meaning: "Japanese spindle tree (Euonymus sieboldianus)"},
      {word: "弓矢", reading: "ゆみや", meaning: "bow and arrow"},
      {word: "弓道", reading: "きゅうどう", meaning: "(Japanese) archery"}
    ],
  },
  {
    kanji: "引",
    keyword: "pull/tug",
    reading: "ひ.く / ひ.き / ひ.き- / -び.き / イン",
    radical: "引",
    componentHint: "classical radical 57",
    examples: [
      {word: "引く", reading: "ひく", meaning: "to pull; to draw (attention, etc.)"},
      {word: "引っ張る", reading: "ひっぱる", meaning: "to pull; to draw"},
      {word: "引きずる", reading: "ひきずる", meaning: "to drag along; to pull"}
    ],
  },
  {
    kanji: "強",
    keyword: "strong",
    reading: "つよ.い / つよ.まる / つよ.める / し.いる / キョウ / ゴウ",
    radical: "強",
    componentHint: "classical radical 57",
    examples: [
      {word: "強い", reading: "つよい", meaning: "strong; powerful"},
      {word: "勉強", reading: "べんきょう", meaning: "study; diligence"},
      {word: "強力", reading: "きょうりょく", meaning: "powerful; strong"}
    ],
  },
  {
    kanji: "弱",
    keyword: "weak/frail",
    reading: "よわ.い / よわ.る / よわ.まる / よわ.める / ジャク",
    radical: "弱",
    componentHint: "classical radical 57",
    examples: [
      {word: "弱い", reading: "よわい", meaning: "weak; frail"},
      {word: "弱る", reading: "よわる", meaning: "to weaken; to be troubled"},
      {word: "弱々しい", reading: "よわよわしい", meaning: "frail; slender"}
    ],
  },
  {
    kanji: "風",
    keyword: "wind/air",
    reading: "かぜ / かざ- / -かぜ / フウ / フ",
    radical: "風",
    componentHint: "classical radical 182",
    examples: [
      {word: "風景", reading: "ふうけい", meaning: "scenery; scene"},
      {word: "風呂", reading: "ふろ", meaning: "bath; bathtub"},
      {word: "風邪", reading: "かぜ", meaning: "common cold; cold"}
    ],
  },
  {
    kanji: "己",
    keyword: "self",
    reading: "おのれ / つちのと / な / コ / キ",
    radical: "己",
    componentHint: "classical radical 49",
    examples: [
      {word: "自己", reading: "じこ", meaning: "self; oneself"},
      {word: "利己", reading: "りこ", meaning: "self-interest"},
      {word: "知己", reading: "ちき", meaning: "acquaintance; appreciative friend"}
    ],
  },
  {
    kanji: "記",
    keyword: "scribe/account",
    reading: "しる.す / キ",
    radical: "記",
    componentHint: "classical radical 149",
    examples: [
      {word: "記憶", reading: "きおく", meaning: "memory; recollection"},
      {word: "記録", reading: "きろく", meaning: "record; minutes"},
      {word: "記者", reading: "きしゃ", meaning: "reporter"}
    ],
  },
  {
    kanji: "紀",
    keyword: "chronicle/account",
    reading: "キ",
    radical: "紀",
    componentHint: "classical radical 120",
    examples: [
      {word: "世紀", reading: "せいき", meaning: "century; era"},
      {word: "風紀", reading: "ふうき", meaning: "public morals"},
      {word: "紀元前", reading: "きげんぜん", meaning: "pre-era; BC"}
    ],
  },
  {
    kanji: "改",
    keyword: "reformation/change",
    reading: "あらた.める / あらた.まる / カイ",
    radical: "改",
    componentHint: "classical radical 49",
    examples: [
      {word: "改めて", reading: "あらためて", meaning: "another time; again"},
      {word: "改める", reading: "あらためる", meaning: "to change; to alter"},
      {word: "改造", reading: "かいぞう", meaning: "remodeling; remodelling"}
    ],
  },
  {
    kanji: "起",
    keyword: "rouse/wake up",
    reading: "お.きる / お.こる / お.こす / おこ.す / キ",
    radical: "起",
    componentHint: "classical radical 156",
    examples: [
      {word: "起きる", reading: "おきる", meaning: "to get up; to rise"},
      {word: "起こる", reading: "おこる", meaning: "to occur; to happen"},
      {word: "起こす", reading: "おこす", meaning: "to raise; to cause"}
    ],
  },
  {
    kanji: "姓",
    keyword: "surname",
    reading: "セイ / ショウ",
    radical: "姓",
    componentHint: "classical radical 38",
    examples: [
      {word: "百姓", reading: "ひゃくしょう", meaning: "farmer; peasant"},
      {word: "小姓", reading: "こしょう", meaning: "(noble's) page"},
      {word: "素姓", reading: "すじょう", meaning: "birth; lineage"}
    ],
  },
  {
    kanji: "由",
    keyword: "wherefore/a reason",
    reading: "よし / よ.る / ユ / ユウ / ユイ",
    radical: "由",
    componentHint: "classical radical 102",
    examples: [
      {word: "理由", reading: "りゆう", meaning: "reason; pretext"},
      {word: "自由", reading: "じゆう", meaning: "freedom; liberty"},
      {word: "不自由", reading: "ふじゆう", meaning: "discomfort; inconvenience"}
    ],
  },
  {
    kanji: "油",
    keyword: "oil/fat",
    reading: "あぶら / ユ / ユウ",
    radical: "油",
    componentHint: "classical radical 85",
    examples: [
      {word: "油断", reading: "ゆだん", meaning: "negligence; carelessness"},
      {word: "石油", reading: "せきゆ", meaning: "oil; petroleum"},
      {word: "醤油", reading: "しょうゆ", meaning: "soy sauce; shoyu"}
    ],
  },
  {
    kanji: "井",
    keyword: "well/well crib",
    reading: "い / セイ / ショウ",
    radical: "井",
    componentHint: "classical radical 7",
    examples: [
      {word: "天井", reading: "てんじょう", meaning: "ceiling; ceiling price"},
      {word: "井戸", reading: "いど", meaning: "water well"},
      {word: "筒井", reading: "つつい", meaning: "round well"}
    ],
  },
  {
    kanji: "囲",
    keyword: "surround/besiege",
    reading: "かこ.む / かこ.う / かこ.い / イ",
    radical: "囲",
    componentHint: "classical radical 31",
    examples: [
      {word: "周囲", reading: "しゅうい", meaning: "surroundings; environs"},
      {word: "雰囲気", reading: "ふんいき", meaning: "atmosphere (e.g. musical); mood"},
      {word: "囲む", reading: "かこむ", meaning: "to surround; to encircle"}
    ],
  },
  {
    kanji: "丼",
    keyword: "bowl/bowl of food",
    reading: "どんぶり / トン / タン / ショウ",
    radical: "丼",
    componentHint: "classical radical 3",
    examples: [
      {word: "カツ丼", reading: "かつどん", meaning: "katsudon; pork cutlet served on top of a bowl of rice"},
      {word: "天丼", reading: "てんどん", meaning: "tempura served over a bowl of rice; (in comedy) repeating the same gag or silly line"},
      {word: "丼物", reading: "どんぶりもの", meaning: "bowl of rice with food on top"}
    ],
  },
  {
    kanji: "丁",
    keyword: "street/ward",
    reading: "ひのと / チョウ / テイ / チン",
    radical: "丁",
    componentHint: "classical radical 1",
    examples: [
      {word: "丁寧", reading: "ていねい", meaning: "polite; courteous"},
      {word: "丁度", reading: "ちょうど", meaning: "just; right"},
      {word: "丁目", reading: "ちょうめ", meaning: "district of a town; city block (of irregular size)"}
    ],
  },
  {
    kanji: "寧",
    keyword: "rather/preferably",
    reading: "むし.ろ / ネイ",
    radical: "寧",
    componentHint: "classical radical 40",
    examples: [
      {word: "丁寧", reading: "ていねい", meaning: "polite; courteous"},
      {word: "寧ろ", reading: "むしろ", meaning: "rather; better"},
      {word: "安寧", reading: "あんねい", meaning: "peace (esp. public peace)"}
    ],
  },
  {
    kanji: "町",
    keyword: "town/village",
    reading: "まち / チョウ",
    radical: "町",
    componentHint: "classical radical 102",
    examples: [
      {word: "下町", reading: "したまち", meaning: "low-lying part of a city (usu. containing shops, factories, etc.); Shitamachi (low-lying area of eastern Tokyo near Tokyo Bay, incl. Asakusa, Shitaya, Kanda, Fukugawa, Honjo, Nihonbashi, Kyobashi and surrounds)"},
      {word: "町人", reading: "ちょうにん", meaning: "townspeople; townsfolk"},
      {word: "町内", reading: "ちょうない", meaning: "neighborhood; neighbourhood"}
    ],
  },
  {
    kanji: "灯",
    keyword: "lamp/a light",
    reading: "ひ / ほ- / ともしび / とも.す / トウ",
    radical: "灯",
    componentHint: "classical radical 86",
    examples: [
      {word: "電灯", reading: "でんとう", meaning: "electric light"},
      {word: "灯る", reading: "ともる", meaning: "to be lit (e.g. candle, lamp, light bulb); to be lighted"},
      {word: "提灯", reading: "ちょうちん", meaning: "paper lantern; Chinese lantern"}
    ],
  },
  {
    kanji: "庁",
    keyword: "government office",
    reading: "やくしょ / チョウ / テイ",
    radical: "庁",
    componentHint: "classical radical 53",
    examples: [
      {word: "警視庁", reading: "けいしちょう", meaning: "Metropolitan Police Department (esp. Tokyo)"},
      {word: "政庁", reading: "せいちょう", meaning: "government office"},
      {word: "本庁", reading: "ほんちょう", meaning: "central government office; this office"}
    ],
  },
  {
    kanji: "貯",
    keyword: "savings/store",
    reading: "た.める / たくわ.える / チョ",
    radical: "貯",
    componentHint: "classical radical 154",
    examples: [
      {word: "貯金", reading: "ちょきん", meaning: "putting money aside; savings"},
      {word: "貯める", reading: "ためる", meaning: "to save (i.e. in a bank)"},
      {word: "貯蔵", reading: "ちょぞう", meaning: "storage; preservation"}
    ],
  },
  {
    kanji: "易",
    keyword: "easy/ready to",
    reading: "やさ.しい / やす.い / エキ / イ",
    radical: "易",
    componentHint: "classical radical 72",
    examples: [
      {word: "容易", reading: "ようい", meaning: "easy; simple"},
      {word: "貿易", reading: "ぼうえき", meaning: "trade (foreign)"},
      {word: "易い", reading: "やすい", meaning: "easy; likely to ..., have a tendency to ..."}
    ],
  },
  {
    kanji: "賜",
    keyword: "grant/gift",
    reading: "たまわ.る / たま.う / たも.う / シ",
    radical: "賜",
    componentHint: "classical radical 154",
    examples: [
      {word: "賜わる", reading: "たまわる", meaning: "to be given; to be granted"},
      {word: "賜る", reading: "たまわる", meaning: "to be given; to be granted"},
      {word: "賜物", reading: "たまもの", meaning: "gift; boon"}
    ],
  },
  {
    kanji: "場",
    keyword: "location/place",
    reading: "ば / ジョウ / チョウ",
    radical: "場",
    componentHint: "classical radical 32",
    examples: [
      {word: "場所", reading: "ばしょ", meaning: "place; location"},
      {word: "場合", reading: "ばあい", meaning: "case; situation"},
      {word: "立場", reading: "たちば", meaning: "standpoint; position"}
    ],
  },
  {
    kanji: "湯",
    keyword: "hot water/bath",
    reading: "ゆ / トウ",
    radical: "湯",
    componentHint: "classical radical 85",
    examples: [
      {word: "湯気", reading: "ゆげ", meaning: "steam; vapour"},
      {word: "お湯", reading: "おゆ", meaning: "hot water; hot bath"},
      {word: "銭湯", reading: "せんとう", meaning: "bath-house; public bath"}
    ],
  },
  {
    kanji: "門",
    keyword: "gate/counter for cannons",
    reading: "かど / と / モン",
    radical: "門",
    componentHint: "classical radical 169",
    examples: [
      {word: "専門", reading: "せんもん", meaning: "speciality; specialty"},
      {word: "門番", reading: "もんばん", meaning: "gatekeeper; door guard"},
      {word: "門前", reading: "もんぜん", meaning: "before a gate"}
    ],
  },
  {
    kanji: "間",
    keyword: "interval/space",
    reading: "あいだ / ま / あい / カン / ケン",
    radical: "間",
    componentHint: "classical radical 169",
    examples: [
      {word: "人間", reading: "にんげん", meaning: "human being; person"},
      {word: "時間", reading: "じかん", meaning: "time; hours"},
      {word: "瞬間", reading: "しゅんかん", meaning: "moment; second"}
    ],
  },
  {
    kanji: "閉",
    keyword: "closed/shut",
    reading: "と.じる / と.ざす / し.める / し.まる / ヘイ",
    radical: "閉",
    componentHint: "classical radical 169",
    examples: [
      {word: "閉じる", reading: "とじる", meaning: "to close (e.g. book, eyes, meeting, etc.); to shut"},
      {word: "閉める", reading: "しめる", meaning: "to close; to shut"},
      {word: "閉ざす", reading: "とざす", meaning: "to shut; to close"}
    ],
  },
  {
    kanji: "開",
    keyword: "open/unfold",
    reading: "ひら.く / ひら.き / -びら.き / ひら.ける / カイ",
    radical: "開",
    componentHint: "classical radical 169",
    examples: [
      {word: "開く", reading: "ひらく", meaning: "to open; to undo"},
      {word: "開ける", reading: "あける", meaning: "to open (a door, etc.); to unwrap (e.g. parcel, package)"},
      {word: "開始", reading: "かいし", meaning: "start; commencement"}
    ],
  },
  {
    kanji: "関",
    keyword: "connection/barrier",
    reading: "せき / -ぜき / かか.わる / からくり / カン",
    radical: "関",
    componentHint: "classical radical 169",
    examples: [
      {word: "関係", reading: "かんけい", meaning: "relation; relationship"},
      {word: "玄関", reading: "げんかん", meaning: "entranceway; entry hall"},
      {word: "に関する", reading: "にかんする", meaning: "related to; in relation to"}
    ],
  },
  {
    kanji: "問",
    keyword: "question/ask",
    reading: "と.う / と.い / とん / モン",
    radical: "問",
    componentHint: "classical radical 30",
    examples: [
      {word: "問題", reading: "もんだい", meaning: "question (e.g. on a test); problem"},
      {word: "質問", reading: "しつもん", meaning: "question; inquiry"},
      {word: "疑問", reading: "ぎもん", meaning: "question; problem"}
    ],
  },
  {
    kanji: "聞",
    keyword: "hear/ask",
    reading: "き.く / き.こえる / ブン / モン",
    radical: "聞",
    componentHint: "classical radical 169",
    examples: [
      {word: "聞く", reading: "きく", meaning: "to hear; to listen (e.g. to music)"},
      {word: "聞こえる", reading: "きこえる", meaning: "to be heard; to be audible"},
      {word: "新聞", reading: "しんぶん", meaning: "newspaper"}
    ],
  },
  {
    kanji: "訪",
    keyword: "call on/visit",
    reading: "おとず.れる / たず.ねる / と.う / ホウ",
    radical: "訪",
    componentHint: "classical radical 149",
    examples: [
      {word: "訪ねる", reading: "たずねる", meaning: "to visit"},
      {word: "訪れる", reading: "おとずれる", meaning: "to visit; to call on"},
      {word: "訪問", reading: "ほうもん", meaning: "call; visit"}
    ],
  },
  {
    kanji: "送",
    keyword: "escort/send",
    reading: "おく.る / ソウ",
    radical: "送",
    componentHint: "classical radical 162",
    examples: [
      {word: "送る", reading: "おくる", meaning: "to send (a thing); to dispatch"},
      {word: "見送る", reading: "みおくる", meaning: "to see someone off (at a station, an airport, etc.); to escort (e.g. home)"},
      {word: "放送", reading: "ほうそう", meaning: "broadcast; broadcasting"}
    ],
  },
  {
    kanji: "券",
    keyword: "ticket",
    reading: "ケン",
    radical: "券",
    componentHint: "classical radical 18",
    examples: [
      {word: "証券", reading: "しょうけん", meaning: "securities; bonds"},
      {word: "馬券", reading: "ばけん", meaning: "(horse racing) betting ticket"},
      {word: "旅券", reading: "りょけん", meaning: "passport"}
    ],
  },
  {
    kanji: "包",
    keyword: "wrap/pack up",
    reading: "つつ.む / くる.む / ホウ",
    radical: "包",
    componentHint: "classical radical 20",
    examples: [
      {word: "包む", reading: "つつむ", meaning: "to wrap up; to tuck in"},
      {word: "包み", reading: "つつみ", meaning: "bundle; package"},
      {word: "包囲", reading: "ほうい", meaning: "siege; encirclement"}
    ],
  },
  {
    kanji: "巻",
    keyword: "scroll/volume",
    reading: "ま.く / まき / ま.き / カン / ケン",
    radical: "巻",
    componentHint: "classical radical 49",
    examples: [
      {word: "巻く", reading: "まく", meaning: "to wind; to coil"},
      {word: "巻き込む", reading: "まきこむ", meaning: "to roll up; to involve"},
      {word: "葉巻", reading: "はまき", meaning: "cigar"}
    ],
  },
  {
    kanji: "圏",
    keyword: "sphere/circle",
    reading: "かこ.い / ケン",
    radical: "圏",
    componentHint: "classical radical 31",
    examples: [
      {word: "圏内", reading: "けんない", meaning: "within the sphere"},
      {word: "大気圏", reading: "たいきけん", meaning: "the atmosphere"},
      {word: "圏外", reading: "けんがい", meaning: "outside range; outside orbit"}
    ],
  },
  {
    kanji: "勝",
    keyword: "victory/win",
    reading: "か.つ / -が.ち / まさ.る / すぐ.れる / ショウ",
    radical: "勝",
    componentHint: "classical radical 19",
    examples: [
      {word: "勝手", reading: "かって", meaning: "one's own convenience; one's way"},
      {word: "勝つ", reading: "かつ", meaning: "to win; to gain victory"},
      {word: "勝負", reading: "しょうぶ", meaning: "victory or defeat; match"}
    ],
  },
  {
    kanji: "戦",
    keyword: "war/battle",
    reading: "いくさ / たたか.う / おのの.く / そよ.ぐ / セン",
    radical: "戦",
    componentHint: "classical radical 62",
    examples: [
      {word: "戦争", reading: "せんそう", meaning: "war"},
      {word: "戦う", reading: "たたかう", meaning: "to make war (on); to wage war (against)"},
      {word: "戦闘", reading: "せんとう", meaning: "battle; fight"}
    ],
  },
  {
    kanji: "単",
    keyword: "simple/one",
    reading: "ひとえ / タン",
    radical: "単",
    componentHint: "classical radical 30",
    examples: [
      {word: "簡単", reading: "かんたん", meaning: "simple; easy"},
      {word: "単純", reading: "たんじゅん", meaning: "simplicity; simple"},
      {word: "単に", reading: "たんに", meaning: "simply; merely"}
    ],
  },
  {
    kanji: "簡",
    keyword: "simplicity/brevity",
    reading: "えら.ぶ / ふだ / カン / ケン",
    radical: "簡",
    componentHint: "classical radical 118",
    examples: [
      {word: "簡単", reading: "かんたん", meaning: "simple; easy"},
      {word: "簡潔", reading: "かんけつ", meaning: "brevity; conciseness"},
      {word: "書簡", reading: "しょかん", meaning: "letter; note"}
    ],
  },
  {
    kanji: "過",
    keyword: "overdo/exceed",
    reading: "す.ぎる / -す.ぎる / -す.ぎ / す.ごす / カ",
    radical: "過",
    componentHint: "classical radical 162",
    examples: [
      {word: "過ぎる", reading: "すぎる", meaning: "to pass through; to pass by"},
      {word: "過去", reading: "かこ", meaning: "the past; bygone days"},
      {word: "過ごす", reading: "すごす", meaning: "to pass (time); to spend"}
    ],
  },
  {
    kanji: "骨",
    keyword: "skeleton/bone",
    reading: "ほね / コツ",
    radical: "骨",
    componentHint: "classical radical 188",
    examples: [
      {word: "露骨", reading: "ろこつ", meaning: "frank; blunt"},
      {word: "頭蓋骨", reading: "ずがいこつ", meaning: "skull; cranium"},
      {word: "骨董", reading: "こっとう", meaning: "antique; curio"}
    ],
  },
  {
    kanji: "昼",
    keyword: "daytime/noon",
    reading: "ひる / チュウ",
    radical: "昼",
    componentHint: "classical radical 72",
    examples: [
      {word: "昼間", reading: "ひるま", meaning: "daytime; during the day"},
      {word: "昼食", reading: "ちゅうしょく", meaning: "lunch; midday meal"},
      {word: "お昼", reading: "おひる", meaning: "lunch; noon"}
    ],
  },
  {
    kanji: "夜",
    keyword: "night/evening",
    reading: "よ / よる / ヤ",
    radical: "夜",
    componentHint: "classical radical 36",
    examples: [
      {word: "今夜", reading: "こんや", meaning: "this evening; tonight"},
      {word: "昨夜", reading: "さくや", meaning: "evening; last night"},
      {word: "深夜", reading: "しんや", meaning: "late at night"}
    ],
  },
  {
    kanji: "液",
    keyword: "fluid/liquid",
    reading: "エキ",
    radical: "液",
    componentHint: "classical radical 85",
    examples: [
      {word: "血液", reading: "けつえき", meaning: "blood"},
      {word: "液体", reading: "えきたい", meaning: "liquid; fluid"},
      {word: "唾液", reading: "だえき", meaning: "saliva; sputum"}
    ],
  },
  {
    kanji: "戒",
    keyword: "commandment",
    reading: "いまし.める / カイ",
    radical: "戒",
    componentHint: "classical radical 62",
    examples: [
      {word: "警戒", reading: "けいかい", meaning: "vigilance; precaution"},
      {word: "戒める", reading: "いましめる", meaning: "to admonish; to warn"},
      {word: "戒律", reading: "かいりつ", meaning: "(religious) precept; discipline"}
    ],
  },
  {
    kanji: "幾",
    keyword: "how many/how much",
    reading: "いく- / いく.つ / いく.ら / キ",
    radical: "幾",
    componentHint: "classical radical 52",
    examples: [
      {word: "幾つ", reading: "いくつ", meaning: "how many?; how old?"},
      {word: "幾度", reading: "いくど", meaning: "(how) many times; (how) often"},
      {word: "幾分", reading: "いくぶん", meaning: "somewhat; to some extent"}
    ],
  },
  {
    kanji: "畿",
    keyword: "capital/suburbs of capital",
    reading: "みやこ / キ",
    radical: "畿",
    componentHint: "classical radical 52",
    examples: [
      {word: "畿内", reading: "きない", meaning: "territories in the vicinity of the capital and under direct imperial rule; (in Japanese history) the five kuni in the immediate vicinity of Kyoto"},
      {word: "近畿", reading: "きんき", meaning: "Kinki (region around Osaka, Kyoto, Nara)"},
      {word: "五畿", reading: "ごき", meaning: "the Five Home Provinces (Yamato, Yamashiro, Settsu, Kawachi, and Izumi)"}
    ],
  },
  {
    kanji: "磯",
    keyword: "seashore/beach",
    reading: "いそ / キ",
    radical: "磯",
    componentHint: "classical radical 112",
    examples: [
      {word: "磯辺", reading: "いそべ", meaning: "seashore; beach"},
      {word: "荒磯", reading: "あらいそ", meaning: "reefy coast; windswept and wave-beaten shore"},
      {word: "磯臭い", reading: "いそくさい", meaning: "smelling of the sea; smelling of the seashore"}
    ],
  },
  {
    kanji: "機",
    keyword: "loom/mechanism",
    reading: "はた / キ",
    radical: "機",
    componentHint: "classical radical 75",
    examples: [
      {word: "機会", reading: "きかい", meaning: "chance; opportunity"},
      {word: "機械", reading: "きかい", meaning: "machine; mechanism"},
      {word: "機関", reading: "からくり", meaning: "mechanism; machinery"}
    ],
  },
  {
    kanji: "械",
    keyword: "contraption/fetter",
    reading: "かせ / カイ",
    radical: "械",
    componentHint: "classical radical 75",
    examples: [
      {word: "機械", reading: "きかい", meaning: "machine; mechanism"},
      {word: "器械", reading: "きかい", meaning: "machine; mechanism"},
      {word: "器械体操", reading: "きかいたいそう", meaning: "apparatus gymnastics; artistic gymnastics"}
    ],
  },
  {
    kanji: "飛",
    keyword: "fly/skip (pages)",
    reading: "と.ぶ / と.ばす / -と.ばす / ヒ",
    radical: "飛",
    componentHint: "classical radical 183",
    examples: [
      {word: "飛ぶ", reading: "とぶ", meaning: "to fly; to soar"},
      {word: "飛び出す", reading: "とびだす", meaning: "to jump out; to rush out"},
      {word: "飛行機", reading: "ひこうき", meaning: "aeroplane; airplane"}
    ],
  },
  {
    kanji: "氏",
    keyword: "family name/surname",
    reading: "うじ / -うじ / シ",
    radical: "氏",
    componentHint: "classical radical 83",
    examples: [
      {word: "源氏", reading: "げんじ", meaning: "Genji (the character in the Genji Monogatari); the Minamoto family"},
      {word: "彼氏", reading: "かれし", meaning: "boyfriend"},
      {word: "氏族", reading: "しぞく", meaning: "clan; family"}
    ],
  },
  {
    kanji: "民",
    keyword: "people/nation",
    reading: "たみ / ミン",
    radical: "民",
    componentHint: "classical radical 83",
    examples: [
      {word: "国民", reading: "こくみん", meaning: "nation; nationality"},
      {word: "市民", reading: "しみん", meaning: "citizen; citizenry"},
      {word: "民族", reading: "みんぞく", meaning: "people; race"}
    ],
  },
  {
    kanji: "紙",
    keyword: "paper",
    reading: "かみ / シ",
    radical: "紙",
    componentHint: "classical radical 120",
    examples: [
      {word: "手紙", reading: "てがみ", meaning: "letter"},
      {word: "表紙", reading: "ひょうし", meaning: "front cover; binding"},
      {word: "用紙", reading: "ようし", meaning: "blank form; sheets of paper"}
    ],
  },
  {
    kanji: "低",
    keyword: "lower/short",
    reading: "ひく.い / ひく.める / ひく.まる / テイ",
    radical: "低",
    componentHint: "classical radical 9",
    examples: [
      {word: "低い", reading: "ひくい", meaning: "low (rank, degree, value, content, quality, etc.); low (position)"},
      {word: "最低", reading: "さいてい", meaning: "least; lowest"},
      {word: "低下", reading: "ていか", meaning: "fall; decline"}
    ],
  },
  {
    kanji: "抵",
    keyword: "resist/reach",
    reading: "テイ",
    radical: "抵",
    componentHint: "classical radical 64",
    examples: [
      {word: "抵抗", reading: "ていこう", meaning: "resistance; opposition"},
      {word: "大抵", reading: "たいてい", meaning: "mostly; ordinarily"},
      {word: "抵当", reading: "ていとう", meaning: "mortgage; security"}
    ],
  },
  {
    kanji: "邸",
    keyword: "residence/mansion",
    reading: "やしき / テイ",
    radical: "邸",
    componentHint: "classical radical 163",
    examples: [
      {word: "邸宅", reading: "ていたく", meaning: "mansion; residence"},
      {word: "官邸", reading: "かんてい", meaning: "official residence (e.g. of the prime minister)"},
      {word: "藩邸", reading: "はんてい", meaning: "residence maintained by a daimyo in Edo"}
    ],
  },
  {
    kanji: "底",
    keyword: "bottom/sole",
    reading: "そこ / テイ",
    radical: "底",
    componentHint: "classical radical 53",
    examples: [
      {word: "徹底的", reading: "てっていてき", meaning: "thorough; complete"},
      {word: "到底", reading: "とうてい", meaning: "(cannot) possibly; no matter how"},
      {word: "心底", reading: "しんそこ", meaning: "one's innermost depths; completely (from the bottom of one's heart)"}
    ],
  },
  {
    kanji: "巨",
    keyword: "gigantic/big",
    reading: "キョ",
    radical: "巨",
    componentHint: "classical radical 48",
    examples: [
      {word: "巨大", reading: "きょだい", meaning: "huge; gigantic"},
      {word: "巨人", reading: "きょじん", meaning: "giant; great man"},
      {word: "巨体", reading: "きょたい", meaning: "large build"}
    ],
  },
  {
    kanji: "臣",
    keyword: "retainer/subject",
    reading: "シン / ジン",
    radical: "臣",
    componentHint: "classical radical 131",
    examples: [
      {word: "大臣", reading: "だいじん", meaning: "cabinet minister"},
      {word: "家臣", reading: "かしん", meaning: "vassal; retainer"},
      {word: "重臣", reading: "じゅうしん", meaning: "chief vassal; senior statesman"}
    ],
  },
  {
    kanji: "基",
    keyword: "fundamentals/counter for machines",
    reading: "もと / もとい / キ",
    radical: "基",
    componentHint: "classical radical 32",
    examples: [
      {word: "基地", reading: "きち", meaning: "base"},
      {word: "基本", reading: "きほん", meaning: "foundation; basis"},
      {word: "基礎", reading: "きそ", meaning: "foundation; basis"}
    ],
  },
  {
    kanji: "期",
    keyword: "period/time",
    reading: "キ / ゴ",
    radical: "期",
    componentHint: "classical radical 74",
    examples: [
      {word: "期待", reading: "きたい", meaning: "expectation; anticipation"},
      {word: "期間", reading: "きかん", meaning: "period; term"},
      {word: "予期", reading: "よき", meaning: "expectation; assume will happen"}
    ],
  },
  {
    kanji: "毛",
    keyword: "fur/hair",
    reading: "け / モウ",
    radical: "毛",
    componentHint: "classical radical 82",
    examples: [
      {word: "髪の毛", reading: "かみのけ", meaning: "hair (head)"},
      {word: "毛布", reading: "もうふ", meaning: "blanket"},
      {word: "毛皮", reading: "けがわ", meaning: "fur; skin"}
    ],
  },
  {
    kanji: "尾",
    keyword: "tail/end",
    reading: "お / ビ",
    radical: "尾",
    componentHint: "classical radical 44",
    examples: [
      {word: "尻尾", reading: "しっぽ", meaning: "tail (animal)"},
      {word: "尾行", reading: "びこう", meaning: "shadow; tail"},
      {word: "首尾", reading: "しゅび", meaning: "issue; course of events"}
    ],
  },
  {
    kanji: "育",
    keyword: "bring up/grow up",
    reading: "そだ.つ / そだ.ち / そだ.てる / はぐく.む / イク",
    radical: "育",
    componentHint: "classical radical 130",
    examples: [
      {word: "教育", reading: "きょういく", meaning: "training; education"},
      {word: "育つ", reading: "そだつ", meaning: "to be raised (e.g. child); to be brought up"},
      {word: "育てる", reading: "そだてる", meaning: "to raise; to rear"}
    ],
  },
  {
    kanji: "羊",
    keyword: "sheep",
    reading: "ひつじ / ヨウ",
    radical: "羊",
    componentHint: "classical radical 123",
    examples: [
      {word: "山羊", reading: "やぎ", meaning: "goat"},
      {word: "羊皮紙", reading: "ようひし", meaning: "parchment"},
      {word: "羊毛", reading: "ようもう", meaning: "wool"}
    ],
  },
  {
    kanji: "洋",
    keyword: "ocean/western style",
    reading: "ヨウ",
    radical: "洋",
    componentHint: "classical radical 85",
    examples: [
      {word: "西洋", reading: "せいよう", meaning: "the west; Western countries"},
      {word: "洋服", reading: "ようふく", meaning: "Western-style clothes (cf traditional Japanese clothes)"},
      {word: "東洋", reading: "とうよう", meaning: "Orient"}
    ],
  },
  {
    kanji: "魚",
    keyword: "fish",
    reading: "うお / さかな / -ざかな / ギョ",
    radical: "魚",
    componentHint: "classical radical 195",
    examples: [
      {word: "魚雷", reading: "ぎょらい", meaning: "torpedo"},
      {word: "山椒魚", reading: "さんしょううお", meaning: "salamander"},
      {word: "金魚", reading: "きんぎょ", meaning: "goldfish"}
    ],
  },
  {
    kanji: "鮮",
    keyword: "fresh/vivid",
    reading: "あざ.やか / セン",
    radical: "鮮",
    componentHint: "classical radical 195",
    examples: [
      {word: "朝鮮", reading: "ちょうせん", meaning: "Korea"},
      {word: "鮮やか", reading: "あざやか", meaning: "vivid; bright"},
      {word: "新鮮", reading: "しんせん", meaning: "fresh"}
    ],
  },
  {
    kanji: "蘇",
    keyword: "be resuscitated/revived",
    reading: "よみがえ.る / ソ / ス",
    radical: "蘇",
    componentHint: "classical radical 140",
    examples: [
      {word: "蘇る", reading: "よみがえる", meaning: "to be resurrected; to be resuscitated"},
      {word: "蘇生", reading: "そせい", meaning: "rebirth; resuscitation"},
      {word: "蘇芳", reading: "すおう", meaning: "sappanwood (Caesalpinia sappan); sappanwood dye (red in colour) (color)"}
    ],
  },
  {
    kanji: "詳",
    keyword: "detailed/full",
    reading: "くわ.しい / つまび.らか / ショウ",
    radical: "詳",
    componentHint: "classical radical 149",
    examples: [
      {word: "詳しい", reading: "くわしい", meaning: "detailed; full"},
      {word: "詳細", reading: "しょうさい", meaning: "detail; particulars"},
      {word: "不詳", reading: "ふしょう", meaning: "unknown; unidentified"}
    ],
  },
  {
    kanji: "祥",
    keyword: "auspicious/happiness",
    reading: "さいわ.い / きざ.し / よ.い / つまび.らか / ショウ",
    radical: "祥",
    componentHint: "classical radical 113",
    examples: [
      {word: "不祥事", reading: "ふしょうじ", meaning: "scandal; deplorable event"},
      {word: "発祥", reading: "はっしょう", meaning: "origin; appearance of auspicious omen"},
      {word: "不祥", reading: "ふしょう", meaning: "disgraceful; inauspicious"}
    ],
  },
  {
    kanji: "美",
    keyword: "beauty/beautiful",
    reading: "うつく.しい / ビ / ミ",
    radical: "美",
    componentHint: "classical radical 123",
    examples: [
      {word: "美しい", reading: "うつくしい", meaning: "beautiful; lovely"},
      {word: "美人", reading: "びじん", meaning: "beautiful person (woman)"},
      {word: "美女", reading: "びじょ", meaning: "beautiful woman"}
    ],
  },
  {
    kanji: "業",
    keyword: "business/vocation",
    reading: "わざ / ギョウ / ゴウ",
    radical: "業",
    componentHint: "classical radical 75",
    examples: [
      {word: "作業", reading: "さぎょう", meaning: "work; operation"},
      {word: "卒業", reading: "そつぎょう", meaning: "graduation; completion (e.g. of a course)"},
      {word: "授業", reading: "じゅぎょう", meaning: "lesson; class work"}
    ],
  },
  {
    kanji: "実",
    keyword: "reality/truth",
    reading: "み / みの.る / まこと / みの / ジツ / シツ",
    radical: "実",
    componentHint: "classical radical 40",
    examples: [
      {word: "事実", reading: "じじつ", meaning: "fact; truth"},
      {word: "実際", reading: "じっさい", meaning: "practicality; practical"},
      {word: "実は", reading: "じつは", meaning: "as a matter of fact; by the way"}
    ],
  },
  {
    kanji: "養",
    keyword: "foster/bring up",
    reading: "やしな.う / ヨウ / リョウ",
    radical: "養",
    componentHint: "classical radical 184",
    examples: [
      {word: "養子", reading: "ようし", meaning: "adopted child (usu. male); son-in-law"},
      {word: "養う", reading: "やしなう", meaning: "to support; to maintain"},
      {word: "教養", reading: "きょうよう", meaning: "cultivation; refinement"}
    ],
  },
  {
    kanji: "様",
    keyword: "Esq./way",
    reading: "さま / さん / ヨウ / ショウ",
    radical: "様",
    componentHint: "classical radical 75",
    examples: [
      {word: "様子", reading: "ようす", meaning: "state; state of affairs"},
      {word: "同様", reading: "どうよう", meaning: "identical; equal to"},
      {word: "貴様", reading: "きさま", meaning: "you; you bastard"}
    ],
  },
  {
    kanji: "企",
    keyword: "undertake/scheme",
    reading: "くわだ.てる / たくら.む / キ",
    radical: "企",
    componentHint: "classical radical 9",
    examples: [
      {word: "企業", reading: "きぎょう", meaning: "enterprise; undertaking"},
      {word: "企画", reading: "きかく", meaning: "planning; project"},
      {word: "企む", reading: "たくらむ", meaning: "to scheme; to plan"}
    ],
  },
  {
    kanji: "曲",
    keyword: "bend/music",
    reading: "ま.がる / ま.げる / くま / キョク",
    radical: "曲",
    componentHint: "classical radical 73",
    examples: [
      {word: "曲がる", reading: "まがる", meaning: "to bend; to curve"},
      {word: "曲げる", reading: "まげる", meaning: "to bend; to crook"},
      {word: "曲る", reading: "まがる", meaning: "to bend; to curve"}
    ],
  },
  {
    kanji: "典",
    keyword: "code/ceremony",
    reading: "テン / デン",
    radical: "典",
    componentHint: "classical radical 12",
    examples: [
      {word: "古典", reading: "こてん", meaning: "old book; classics"},
      {word: "典型", reading: "てんけい", meaning: "type; pattern"},
      {word: "辞典", reading: "じてん", meaning: "dictionary"}
    ],
  },
  {
    kanji: "興",
    keyword: "entertain/revive",
    reading: "おこ.る / おこ.す / コウ / キョウ",
    radical: "興",
    componentHint: "classical radical 134",
    examples: [
      {word: "興味", reading: "きょうみ", meaning: "interest (in something); curiosity (about something)"},
      {word: "興奮", reading: "こうふん", meaning: "excitement; stimulation"},
      {word: "興味深い", reading: "きょうみぶかい", meaning: "very interesting; of great interest"}
    ],
  },
  {
    kanji: "輿",
    keyword: "palanquin/bier",
    reading: "かご / こし / ヨ",
    radical: "輿",
    componentHint: "classical radical 12",
    examples: [
      {word: "輿入れ", reading: "こしいれ", meaning: "wedding; bridal procession"},
      {word: "神輿", reading: "しんよ", meaning: "portable shrine (carried in festivals); palanquin"},
      {word: "玉の輿", reading: "たまのこし", meaning: "palanquin set with jewels; money and social status gained by marrying a rich and powerful man"}
    ],
  },
  {
    kanji: "竜",
    keyword: "dragon/imperial",
    reading: "たつ / いせ / リュウ / リョウ / ロウ",
    radical: "竜",
    componentHint: "classical radical 212",
    examples: [
      {word: "竜宮", reading: "りゅうぐう", meaning: "Palace of the Dragon King"},
      {word: "恐竜", reading: "きょうりゅう", meaning: "dinosaur"},
      {word: "竜巻", reading: "たつまき", meaning: "tornado; waterspout"}
    ],
  },
  {
    kanji: "滝",
    keyword: "waterfall/rapids",
    reading: "たき / ロウ / ソウ",
    radical: "滝",
    componentHint: "classical radical 85",
    examples: [
      {word: "滝川", reading: "たきがわ", meaning: "rapids"},
      {word: "滝口", reading: "たきぐち", meaning: "top of a waterfall"},
      {word: "滝壷", reading: "たきつぼ", meaning: "plunge basin; waterfall lake"}
    ],
  },
  {
    kanji: "籠",
    keyword: "basket/devote oneself",
    reading: "かご / こ.める / こも.る / こ.む / ロウ / ル",
    radical: "籠",
    componentHint: "classical radical 118",
    examples: [
      {word: "籠る", reading: "こもる", meaning: "to seclude oneself; to be confined in"},
      {word: "旅籠", reading: "はたご", meaning: "inn (originally a basket of woven bamboo in which travellers carried food) (travelers)"},
      {word: "籠もる", reading: "こもる", meaning: "to seclude oneself; to be confined in"}
    ],
  },
  {
    kanji: "辰",
    keyword: "sign of the dragon/7-9AM",
    reading: "たつ / シン / ジン",
    radical: "辰",
    componentHint: "classical radical 161",
    examples: [
      {word: "辰巳", reading: "たつみ", meaning: "southeast"},
      {word: "北辰", reading: "ほくしん", meaning: "North-Star"},
      {word: "星辰", reading: "せいしん", meaning: "celestial bodies; stars"}
    ],
  },
  {
    kanji: "農",
    keyword: "agriculture/farmers",
    reading: "ノウ",
    radical: "農",
    componentHint: "classical radical 161",
    examples: [
      {word: "農家", reading: "のうか", meaning: "farmer; farm family"},
      {word: "農民", reading: "のうみん", meaning: "farmers; peasants"},
      {word: "農場", reading: "のうじょう", meaning: "farm (agriculture)"}
    ],
  },
  {
    kanji: "濃",
    keyword: "concentrated/thick",
    reading: "こ.い / ノウ",
    radical: "濃",
    componentHint: "classical radical 85",
    examples: [
      {word: "濃い", reading: "こい", meaning: "deep (colour); dark"},
      {word: "濃厚", reading: "のうこう", meaning: "rich (in flavor, color, smell, etc.); thick"},
      {word: "濃密", reading: "のうみつ", meaning: "thick; dense"}
    ],
  },
  {
    kanji: "豊",
    keyword: "bountiful/excellent",
    reading: "ゆた.か / とよ / ホウ / ブ",
    radical: "豊",
    componentHint: "classical radical 151",
    examples: [
      {word: "豊か", reading: "ゆたか", meaning: "abundant; wealthy"},
      {word: "豊富", reading: "ほうふ", meaning: "abundance; wealth"},
      {word: "豊満", reading: "ほうまん", meaning: "stout; corpulent"}
    ],
  },
  {
    kanji: "吉",
    keyword: "good luck/joy",
    reading: "よし / キチ / キツ",
    radical: "吉",
    componentHint: "classical radical 30",
    examples: [
      {word: "不吉", reading: "ふきつ", meaning: "ominous; sinister"},
      {word: "小吉", reading: "しょうきち", meaning: "slightly good luck (as a fortune telling result)"},
      {word: "吉次", reading: "きちじ", meaning: "broadbanded thornyhead (Sebastolobus macrochir); broadfin thornyhead"}
    ],
  },
  {
    kanji: "詰",
    keyword: "packed/close",
    reading: "つ.める / つ.め / -づ.め / つ.まる / キツ / キチ",
    radical: "詰",
    componentHint: "classical radical 149",
    examples: [
      {word: "詰める", reading: "つめる", meaning: "to stuff into; to jam"},
      {word: "詰まる", reading: "つまる", meaning: "to be packed (with); to be full (space, schedule, etc.)"},
      {word: "見詰める", reading: "みつめる", meaning: "to stare at; to gaze at"}
    ],
  },
  {
    kanji: "結",
    keyword: "tie/bind",
    reading: "むす.ぶ / ゆ.う / ゆ.わえる / ケツ / ケチ",
    radical: "結",
    componentHint: "classical radical 120",
    examples: [
      {word: "結婚", reading: "けっこん", meaning: "marriage"},
      {word: "結果", reading: "けっか", meaning: "result; consequence"},
      {word: "結局", reading: "けっきょく", meaning: "after all; eventually"}
    ],
  },
  {
    kanji: "投",
    keyword: "throw/discard",
    reading: "な.げる / -な.げ / トウ",
    radical: "投",
    componentHint: "classical radical 64",
    examples: [
      {word: "投げる", reading: "なげる", meaning: "to throw; to cast away"},
      {word: "投げ出す", reading: "なげだす", meaning: "to throw down; to throw out"},
      {word: "投げつける", reading: "なげつける", meaning: "to throw at; to throw something at a person"}
    ],
  },
  {
    kanji: "役",
    keyword: "duty/war",
    reading: "ヤク / エキ",
    radical: "役",
    componentHint: "classical radical 60",
    examples: [
      {word: "役人", reading: "やくにん", meaning: "government official"},
      {word: "役に立つ", reading: "やくにたつ", meaning: "to be helpful; to be useful"},
      {word: "役目", reading: "やくめ", meaning: "duty; business"}
    ],
  },
  {
    kanji: "没",
    keyword: "drown/sink",
    reading: "おぼ.れる / しず.む / ない / ボツ / モツ",
    radical: "没",
    componentHint: "classical radical 85",
    examples: [
      {word: "没頭", reading: "ぼっとう", meaning: "immersing oneself"},
      {word: "沈没", reading: "ちんぼつ", meaning: "sinking; foundering"},
      {word: "日没", reading: "にちぼつ", meaning: "sunset"}
    ],
  },
  {
    kanji: "設",
    keyword: "establishment/provision",
    reading: "もう.ける / セツ",
    radical: "設",
    componentHint: "classical radical 149",
    examples: [
      {word: "建設", reading: "けんせつ", meaning: "construction; establishment"},
      {word: "施設", reading: "しせつ", meaning: "institution; establishment"},
      {word: "設計", reading: "せっけい", meaning: "plan; design"}
    ],
  },
  {
    kanji: "段",
    keyword: "grade/steps",
    reading: "ダン / タン",
    radical: "段",
    componentHint: "classical radical 79",
    examples: [
      {word: "階段", reading: "かいだん", meaning: "stairs; stairway"},
      {word: "手段", reading: "しゅだん", meaning: "means; way"},
      {word: "段階", reading: "だんかい", meaning: "grade; level"}
    ],
  },
  {
    kanji: "殺",
    keyword: "kill/murder",
    reading: "ころ.す / -ごろ.し / そ.ぐ / サツ / サイ / セツ",
    radical: "殺",
    componentHint: "classical radical 79",
    examples: [
      {word: "殺す", reading: "ころす", meaning: "to kill"},
      {word: "殺人", reading: "さつじん", meaning: "murder"},
      {word: "自殺", reading: "じさつ", meaning: "suicide"}
    ],
  },
  {
    kanji: "刹",
    keyword: "temple",
    reading: "セチ / セツ / サツ",
    radical: "刹",
    componentHint: "classical radical 18",
    examples: [
      {word: "刹那", reading: "せつな", meaning: "moment; instant"},
      {word: "羅刹", reading: "らせつ", meaning: "rakshasa (type of evil spirit)"},
      {word: "古刹", reading: "こさつ", meaning: "ancient temple"}
    ],
  },
  {
    kanji: "刈",
    keyword: "reap/cut",
    reading: "か.る / ガイ / カイ",
    radical: "刈",
    componentHint: "classical radical 18",
    examples: [
      {word: "刈る", reading: "かる", meaning: "to cut (hair); to mow (grass)"},
      {word: "刈り込む", reading: "かりこむ", meaning: "to cut; to dress"},
      {word: "刈り取る", reading: "かりとる", meaning: "to mow; to reap"}
    ],
  },
  {
    kanji: "絵",
    keyword: "picture/drawing",
    reading: "カイ / エ",
    radical: "絵",
    componentHint: "classical radical 120",
    examples: [
      {word: "絵画", reading: "かいが", meaning: "picture; painting"},
      {word: "絵本", reading: "えほん", meaning: "picture book"},
      {word: "挿絵", reading: "さしえ", meaning: "illustration (book, etc.); picture"}
    ],
  },
  {
    kanji: "給",
    keyword: "salary/wage",
    reading: "たま.う / たも.う / -たま.え / キュウ",
    radical: "給",
    componentHint: "classical radical 120",
    examples: [
      {word: "給仕", reading: "きゅうじ", meaning: "waiting on a table; serving (at dinner)"},
      {word: "給料", reading: "きゅうりょう", meaning: "salary; wages"},
      {word: "給う", reading: "たまう", meaning: "semi-polite or endearing auxiliary verb indicating reception by the speaker"}
    ],
  },
  {
    kanji: "巴",
    keyword: "comma-design",
    reading: "ともえ / うずまき / ハ",
    radical: "巴",
    componentHint: "classical radical 49",
    examples: [
      {word: "巴里", reading: "パリ", meaning: "Paris (France)"},
      {word: "巴旦杏", reading: "はたんきょう", meaning: "plum; almond"},
      {word: "三つ巴", reading: "みつどもえ", meaning: "3 fat-comma shapes arranged to form a circle; 3-way struggle (wrestling, etc.)"}
    ],
  },
  {
    kanji: "色",
    keyword: "color",
    reading: "いろ / ショク / シキ",
    radical: "色",
    componentHint: "classical radical 139",
    examples: [
      {word: "顔色", reading: "かおいろ", meaning: "complexion; one's colour"},
      {word: "灰色", reading: "はいいろ", meaning: "grey; gray"},
      {word: "色々", reading: "いろいろ", meaning: "various; various colors (colours)"}
    ],
  },
  {
    kanji: "声",
    keyword: "voice",
    reading: "こえ / こわ- / セイ / ショウ",
    radical: "声",
    componentHint: "classical radical 33",
    examples: [
      {word: "大声", reading: "おおごえ", meaning: "loud voice"},
      {word: "小声", reading: "こごえ", meaning: "low voice; whisper"},
      {word: "笑い声", reading: "わらいごえ", meaning: "laughter"}
    ],
  },
  {
    kanji: "眉",
    keyword: "eyebrow",
    reading: "まゆ / ビ / ミ",
    radical: "眉",
    componentHint: "classical radical 4",
    examples: [
      {word: "眉間", reading: "みけん", meaning: "brow; glabella"},
      {word: "眉毛", reading: "まゆげ", meaning: "eyebrows"},
      {word: "眉根", reading: "まゆね", meaning: "part of the eyebrow closest to the nose"}
    ],
  },
  {
    kanji: "里",
    keyword: "ri/village",
    reading: "さと / リ",
    radical: "里",
    componentHint: "classical radical 166",
    examples: [
      {word: "万里", reading: "ばんり", meaning: "thousands of miles"},
      {word: "郷里", reading: "きょうり", meaning: "birth-place; home town"},
      {word: "千里", reading: "せんり", meaning: "1000 ri; (a) long distance"}
    ],
  },
  {
    kanji: "理",
    keyword: "logic/arrangement",
    reading: "ことわり / リ",
    radical: "理",
    componentHint: "classical radical 96",
    examples: [
      {word: "理由", reading: "りゆう", meaning: "reason; pretext"},
      {word: "理解", reading: "りかい", meaning: "understanding; comprehension"},
      {word: "無理", reading: "むり", meaning: "unreasonable; unnatural"}
    ],
  },
  {
    kanji: "埋",
    keyword: "bury/be filled up",
    reading: "う.める / う.まる / う.もれる / うず.める / マイ",
    radical: "埋",
    componentHint: "classical radical 32",
    examples: [
      {word: "埋める", reading: "うずめる", meaning: "to cover; to bury (e.g. one's face in hands)"},
      {word: "埋まる", reading: "うまる", meaning: "to be buried; to be surrounded"},
      {word: "埋もれる", reading: "うずもれる", meaning: "to be buried; to be covered"}
    ],
  },
  {
    kanji: "野",
    keyword: "plains/field",
    reading: "の / の- / ヤ / ショ",
    radical: "野",
    componentHint: "classical radical 166",
    examples: [
      {word: "野郎", reading: "やろう", meaning: "guy; fellow"},
      {word: "野球", reading: "やきゅう", meaning: "baseball"},
      {word: "上野", reading: "うえの", meaning: "section of Tokyo"}
    ],
  },
  {
    kanji: "黒",
    keyword: "black",
    reading: "くろ / くろ.ずむ / くろ.い / コク",
    radical: "黒",
    componentHint: "classical radical 203",
    examples: [
      {word: "黒い", reading: "くろい", meaning: "black; dark"},
      {word: "暗黒", reading: "あんこく", meaning: "darkness"},
      {word: "黒人", reading: "くろうと", meaning: "expert; professional"}
    ],
  },
  {
    kanji: "墨",
    keyword: "black ink/India ink",
    reading: "すみ / ボク",
    radical: "墨",
    componentHint: "classical radical 32",
    examples: [
      {word: "入れ墨", reading: "いれずみ", meaning: "tattoo"},
      {word: "薄墨", reading: "うすずみ", meaning: "thin or diluted ink"},
      {word: "白墨", reading: "はくぼく", meaning: "blackboard chalk"}
    ],
  },
  {
    kanji: "童",
    keyword: "juvenile/child",
    reading: "わらべ / ドウ",
    radical: "童",
    componentHint: "classical radical 117",
    examples: [
      {word: "児童", reading: "じどう", meaning: "children; juvenile"},
      {word: "童子", reading: "どうじ", meaning: "boy; kid"},
      {word: "河童", reading: "かっぱ", meaning: "kappa; mythical water-dwelling creature"}
    ],
  },
  {
    kanji: "量",
    keyword: "quantity/measure",
    reading: "はか.る / リョウ",
    radical: "量",
    componentHint: "classical radical 166",
    examples: [
      {word: "大量", reading: "たいりょう", meaning: "large quantity; massive (quantity)"},
      {word: "重量", reading: "じゅうりょう", meaning: "weight; heavyweight boxer"},
      {word: "器量", reading: "きりょう", meaning: "looks; features"}
    ],
  },
  {
    kanji: "重",
    keyword: "heavy/heap up",
    reading: "え / おも.い / おも.り / おも.なう / ジュウ / チョウ",
    radical: "重",
    componentHint: "classical radical 166",
    examples: [
      {word: "重い", reading: "おもい", meaning: "heavy; weighty"},
      {word: "重要", reading: "じゅうよう", meaning: "important; momentous"},
      {word: "重ねる", reading: "かさねる", meaning: "to pile up; to put something on top of another"}
    ],
  },
  {
    kanji: "動",
    keyword: "move/motion",
    reading: "うご.く / うご.かす / ドウ",
    radical: "動",
    componentHint: "classical radical 19",
    examples: [
      {word: "動く", reading: "うごく", meaning: "to move; to stir"},
      {word: "行動", reading: "こうどう", meaning: "action; conduct"},
      {word: "動かす", reading: "うごかす", meaning: "to move; to shift"}
    ],
  },
  {
    kanji: "働",
    keyword: "work/(kokuji)",
    reading: "はたら.く / ドウ",
    radical: "働",
    componentHint: "classical radical 9",
    examples: [
      {word: "働く", reading: "はたらく", meaning: "to work; to labor"},
      {word: "労働", reading: "ろうどう", meaning: "manual labor; manual labour"},
      {word: "働き", reading: "はたらき", meaning: "work; labor"}
    ],
  },
  {
    kanji: "労",
    keyword: "labor/thank for",
    reading: "ろう.する / いたわ.る / いた.ずき / ねぎら / ロウ",
    radical: "労",
    componentHint: "classical radical 19",
    examples: [
      {word: "苦労", reading: "くろう", meaning: "troubles; hardships"},
      {word: "労働", reading: "ろうどう", meaning: "manual labor; manual labour"},
      {word: "疲労", reading: "ひろう", meaning: "fatigue; weariness"}
    ],
  },
  {
    kanji: "協",
    keyword: "co-/cooperation",
    reading: "キョウ",
    radical: "協",
    componentHint: "classical radical 24",
    examples: [
      {word: "協力", reading: "きょうりょく", meaning: "cooperation; collaboration"},
      {word: "協会", reading: "きょうかい", meaning: "association; society"},
      {word: "妥協", reading: "だきょう", meaning: "compromise; giving in"}
    ],
  },
  {
    kanji: "種",
    keyword: "species/kind",
    reading: "たね / -ぐさ / シュ",
    radical: "種",
    componentHint: "classical radical 115",
    examples: [
      {word: "一種", reading: "いっしゅ", meaning: "species; kind"},
      {word: "種類", reading: "しゅるい", meaning: "variety; kind"},
      {word: "種族", reading: "しゅぞく", meaning: "race; tribe"}
    ],
  },
  {
    kanji: "亜",
    keyword: "Asia/rank next",
    reading: "つ.ぐ / ア",
    radical: "亜",
    componentHint: "classical radical 7",
    examples: [
      {word: "東亜", reading: "とうあ", meaning: "East Asia; the Orient"},
      {word: "亜麻", reading: "あま", meaning: "flax (Linum usitatissimum); linseed"},
      {word: "白亜", reading: "はくあ", meaning: "chalk (mineral); white wall"}
    ],
  },
  {
    kanji: "悪",
    keyword: "bad/vice",
    reading: "わる.い / わる- / あ.し / にく.い / アク / オ",
    radical: "悪",
    componentHint: "classical radical 61",
    examples: [
      {word: "悪い", reading: "わるい", meaning: "bad; poor"},
      {word: "悪魔", reading: "あくま", meaning: "devil; demon"},
      {word: "憎悪", reading: "ぞうお", meaning: "hatred"}
    ],
  },
  {
    kanji: "要",
    keyword: "need/main point",
    reading: "い.る / かなめ / ヨウ",
    radical: "要",
    componentHint: "classical radical 146",
    examples: [
      {word: "必要", reading: "ひつよう", meaning: "necessary; needed"},
      {word: "重要", reading: "じゅうよう", meaning: "important; momentous"},
      {word: "要求", reading: "ようきゅう", meaning: "demand; firm request"}
    ],
  },
  {
    kanji: "価",
    keyword: "value/price",
    reading: "あたい / カ / ケ",
    radical: "価",
    componentHint: "classical radical 9",
    examples: [
      {word: "価値", reading: "かち", meaning: "value; worth"},
      {word: "評価", reading: "ひょうか", meaning: "valuation; estimation"},
      {word: "高価", reading: "こうか", meaning: "high price"}
    ],
  },
  {
    kanji: "必",
    keyword: "invariably/certain",
    reading: "かなら.ず / ヒツ",
    radical: "必",
    componentHint: "classical radical 61",
    examples: [
      {word: "必要", reading: "ひつよう", meaning: "necessary; needed"},
      {word: "必ず", reading: "かならず", meaning: "always; without exception"},
      {word: "必死", reading: "ひっし", meaning: "frantic; desperate"}
    ],
  },
  {
    kanji: "証",
    keyword: "evidence/proof",
    reading: "あかし / ショウ",
    radical: "証",
    componentHint: "classical radical 149",
    examples: [
      {word: "証拠", reading: "しょうこ", meaning: "evidence; proof"},
      {word: "証明", reading: "しょうめい", meaning: "proof; verification"},
      {word: "証言", reading: "しょうげん", meaning: "evidence; testimony"}
    ],
  },
  {
    kanji: "歪",
    keyword: "warp/bend",
    reading: "いが.む / いびつ / ひず.む / ゆが.む / ワイ / エ",
    radical: "歪",
    componentHint: "classical radical 1",
    examples: [
      {word: "歪む", reading: "いがむ", meaning: "to warp; to swerve"},
      {word: "歪める", reading: "ゆがめる", meaning: "to bend; to curve"},
      {word: "歪み", reading: "ゆがみ", meaning: "strain; distortion"}
    ],
  },
  {
    kanji: "否",
    keyword: "negate/no",
    reading: "いな / いや / ヒ",
    radical: "否",
    componentHint: "classical radical 30",
    examples: [
      {word: "否定", reading: "ひてい", meaning: "negation; denial"},
      {word: "拒否", reading: "きょひ", meaning: "denial; veto"},
      {word: "否や", reading: "いなや", meaning: "as soon as; no sooner than"}
    ],
  },
  {
    kanji: "処",
    keyword: "dispose/manage",
    reading: "ところ / -こ / お.る / ショ",
    radical: "処",
    componentHint: "classical radical 34",
    examples: [
      {word: "何処", reading: "どこ", meaning: "where; what place"},
      {word: "処理", reading: "しょり", meaning: "processing; dealing with"},
      {word: "処置", reading: "しょち", meaning: "treatment; measure"}
    ],
  },
  {
    kanji: "拠",
    keyword: "foothold/based on",
    reading: "よ.る / キョ / コ",
    radical: "拠",
    componentHint: "classical radical 64",
    examples: [
      {word: "証拠", reading: "しょうこ", meaning: "evidence; proof"},
      {word: "根拠", reading: "こんきょ", meaning: "basis; foundation"},
      {word: "拠点", reading: "きょてん", meaning: "position; location"}
    ],
  },
  {
    kanji: "計",
    keyword: "plot/plan",
    reading: "はか.る / はか.らう / ケイ",
    radical: "計",
    componentHint: "classical radical 149",
    examples: [
      {word: "計画", reading: "けいかく", meaning: "plan; project"},
      {word: "時計", reading: "とけい", meaning: "watch; clock"},
      {word: "計算", reading: "けいさん", meaning: "calculation; reckoning"}
    ],
  },
  {
    kanji: "針",
    keyword: "needle/pin",
    reading: "はり / シン",
    radical: "針",
    componentHint: "classical radical 167",
    examples: [
      {word: "方針", reading: "ほうしん", meaning: "objective; plan"},
      {word: "針金", reading: "はりがね", meaning: "wire"},
      {word: "針路", reading: "しんろ", meaning: "course; direction"}
    ],
  },
  {
    kanji: "総",
    keyword: "general/whole",
    reading: "す.べて / すべ.て / ふさ / ソウ",
    radical: "総",
    componentHint: "classical radical 120",
    examples: [
      {word: "総理", reading: "そうり", meaning: "prime minister (as the head of a cabinet government); premier"},
      {word: "総督", reading: "そうとく", meaning: "governor-general; governor"},
      {word: "総合", reading: "そうごう", meaning: "synthesis; coordination"}
    ],
  },
  {
    kanji: "窓",
    keyword: "window/pane",
    reading: "まど / てんまど / けむだし / ソウ / ス",
    radical: "窓",
    componentHint: "classical radical 116",
    examples: [
      {word: "窓際", reading: "まどぎわ", meaning: "(at the) window"},
      {word: "窓辺", reading: "まどべ", meaning: "by the window"},
      {word: "窓口", reading: "まどぐち", meaning: "ticket window; teller window"}
    ],
  },
  {
    kanji: "矢",
    keyword: "dart/arrow",
    reading: "や / シ",
    radical: "矢",
    componentHint: "classical radical 111",
    examples: [
      {word: "無理矢理", reading: "むりやり", meaning: "forcibly; against one's will"},
      {word: "矢先", reading: "やさき", meaning: "arrowhead; brunt"},
      {word: "弓矢", reading: "ゆみや", meaning: "bow and arrow"}
    ],
  },
  {
    kanji: "知",
    keyword: "know/wisdom",
    reading: "し.る / し.らせる / チ",
    radical: "知",
    componentHint: "classical radical 111",
    examples: [
      {word: "知る", reading: "しる", meaning: "to be aware of; to know"},
      {word: "知れる", reading: "しれる", meaning: "to become known; to come to light"},
      {word: "承知", reading: "しょうち", meaning: "knowledge; awareness"}
    ],
  },
  {
    kanji: "医",
    keyword: "doctor/medicine",
    reading: "い.やす / い.する / くすし / イ",
    radical: "医",
    componentHint: "classical radical 23",
    examples: [
      {word: "医者", reading: "いしゃ", meaning: "(medical) doctor; physician"},
      {word: "医師", reading: "いし", meaning: "doctor; physician"},
      {word: "医学", reading: "いがく", meaning: "medical science; medicine"}
    ],
  },
  {
    kanji: "短",
    keyword: "short/brevity",
    reading: "みじか.い / タン",
    radical: "短",
    componentHint: "classical radical 111",
    examples: [
      {word: "短い", reading: "みじかい", meaning: "short"},
      {word: "短剣", reading: "たんけん", meaning: "short sword; dagger"},
      {word: "短刀", reading: "たんとう", meaning: "short sword; dagger"}
    ],
  },
  {
    kanji: "失",
    keyword: "lose/error",
    reading: "うしな.う / う.せる / シツ",
    radical: "失",
    componentHint: "classical radical 37",
    examples: [
      {word: "失う", reading: "うしなう", meaning: "to lose; to part with"},
      {word: "失礼", reading: "しつれい", meaning: "discourtesy; impoliteness"},
      {word: "失敗", reading: "しっぱい", meaning: "failure; mistake"}
    ],
  },
  {
    kanji: "鉄",
    keyword: "iron",
    reading: "くろがね / テツ",
    radical: "鉄",
    componentHint: "classical radical 167",
    examples: [
      {word: "鉄道", reading: "てつどう", meaning: "railroad; railway"},
      {word: "鉄砲", reading: "てっぽう", meaning: "gun; wooden pole that wrestlers strike in practice"},
      {word: "地下鉄", reading: "ちかてつ", meaning: "underground train; subway"}
    ],
  },
  {
    kanji: "夫",
    keyword: "husband/man",
    reading: "おっと / それ / フ / フウ / ブ",
    radical: "夫",
    componentHint: "classical radical 37",
    examples: [
      {word: "夫人", reading: "ふじん", meaning: "wife; Mrs"},
      {word: "大丈夫", reading: "だいじょうぶ", meaning: "safe; all right"},
      {word: "夫婦", reading: "ふうふ", meaning: "married couple; spouses"}
    ],
  },
  {
    kanji: "朱",
    keyword: "vermilion/cinnabar",
    reading: "あけ / シュ",
    radical: "朱",
    componentHint: "classical radical 75",
    examples: [
      {word: "朱鷺", reading: "とき", meaning: "Japanese crested ibis (Nipponia nippon); crested ibis"},
      {word: "朱色", reading: "しゅいろ", meaning: "vermilion; scarlet"},
      {word: "朱雀", reading: "すざく", meaning: "Vermilion Bird (god said to rule over the southern heavens); seven mansions (Chinese constellations) of the southern heavens"}
    ],
  },
  {
    kanji: "株",
    keyword: "stocks/stump",
    reading: "かぶ / シュ",
    radical: "株",
    componentHint: "classical radical 75",
    examples: [
      {word: "株式会社", reading: "かぶしきがいしゃ", meaning: "public company; corporation"},
      {word: "株式", reading: "かぶしき", meaning: "stock (company)"},
      {word: "株主", reading: "かぶぬし", meaning: "shareholder; stockholder"}
    ],
  },
  {
    kanji: "族",
    keyword: "tribe/family",
    reading: "ゾク",
    radical: "族",
    componentHint: "classical radical 70",
    examples: [
      {word: "家族", reading: "かぞく", meaning: "family; members of a family"},
      {word: "貴族", reading: "きぞく", meaning: "noble; aristocrat"},
      {word: "一族", reading: "いちぞく", meaning: "family; relatives"}
    ],
  },
  {
    kanji: "旅",
    keyword: "trip/travel",
    reading: "たび / リョ",
    radical: "旅",
    componentHint: "classical radical 70",
    examples: [
      {word: "旅行", reading: "りょこう", meaning: "travel; trip"},
      {word: "旅館", reading: "りょかん", meaning: "ryokan; Japanese-style lodging, usu. professionally-run"},
      {word: "旅人", reading: "たびびと", meaning: "traveller; traveler"}
    ],
  },
  {
    kanji: "遊",
    keyword: "play",
    reading: "あそ.ぶ / あそ.ばす / ユウ / ユ",
    radical: "遊",
    componentHint: "classical radical 162",
    examples: [
      {word: "遊ぶ", reading: "あそぶ", meaning: "to play; to enjoy oneself"},
      {word: "遊び", reading: "あそび", meaning: "playing; play (margin between on and off, gap before pressing button or lever has an effect)"},
      {word: "遊ばす", reading: "あそばす", meaning: "to let one play; to leave idle"}
    ],
  },
  {
    kanji: "施",
    keyword: "give/bestow",
    reading: "ほどこ.す / シ / セ",
    radical: "施",
    componentHint: "classical radical 70",
    examples: [
      {word: "施設", reading: "しせつ", meaning: "institution; establishment"},
      {word: "施す", reading: "ほどこす", meaning: "to give (time, money, goods); to donate"},
      {word: "実施", reading: "じっし", meaning: "enforcement; implementation"}
    ],
  },
  {
    kanji: "旋",
    keyword: "rotation/go around",
    reading: "セン",
    radical: "旋",
    componentHint: "classical radical 70",
    examples: [
      {word: "旋回", reading: "せんかい", meaning: "revolution; rotation"},
      {word: "螺旋", reading: "ねじ", meaning: "screw; key (of a clock, watch, etc.)"},
      {word: "旋律", reading: "せんりつ", meaning: "melody; tune"}
    ],
  },
  {
    kanji: "旗",
    keyword: "national flag/banner",
    reading: "はた / キ",
    radical: "旗",
    componentHint: "classical radical 70",
    examples: [
      {word: "旗本", reading: "はたもと", meaning: "shogunal vassal; direct retainer of a shogun"},
      {word: "旗艦", reading: "きかん", meaning: "flagship"},
      {word: "国旗", reading: "こっき", meaning: "national flag"}
    ],
  },
  {
    kanji: "放",
    keyword: "set free/release",
    reading: "はな.す / -っぱな.し / はな.つ / はな.れる / ホウ",
    radical: "放",
    componentHint: "classical radical 66",
    examples: [
      {word: "放つ", reading: "はなつ", meaning: "to fire (e.g. an arrow); to hit (e.g. baseball)"},
      {word: "解放", reading: "かいほう", meaning: "release; unleashing"},
      {word: "放送", reading: "ほうそう", meaning: "broadcast; broadcasting"}
    ],
  },
  {
    kanji: "激",
    keyword: "violent/get excited",
    reading: "はげ.しい / ゲキ",
    radical: "激",
    componentHint: "classical radical 85",
    examples: [
      {word: "激しい", reading: "はげしい", meaning: "violent; furious"},
      {word: "刺激", reading: "しげき", meaning: "stimulus; impetus"},
      {word: "感激", reading: "かんげき", meaning: "deep emotion; impression"}
    ],
  },
  {
    kanji: "牧",
    keyword: "breed/care for",
    reading: "まき / ボク",
    radical: "牧",
    componentHint: "classical radical 93",
    examples: [
      {word: "牧師", reading: "ぼくし", meaning: "pastor; minister"},
      {word: "牧場", reading: "ぼくじょう", meaning: "farm (livestock); ranch (US)"},
      {word: "牧草", reading: "ぼくそう", meaning: "pasture; grass"}
    ],
  },
  {
    kanji: "位",
    keyword: "rank/grade",
    reading: "くらい / ぐらい / イ",
    radical: "位",
    componentHint: "classical radical 9",
    examples: [
      {word: "位置", reading: "いち", meaning: "place; situation"},
      {word: "地位", reading: "ちい", meaning: "(social) position; status"},
      {word: "単位", reading: "たんい", meaning: "unit; denomination"}
    ],
  },
  {
    kanji: "泣",
    keyword: "cry/weep",
    reading: "な.く / キュウ",
    radical: "泣",
    componentHint: "classical radical 85",
    examples: [
      {word: "泣く", reading: "なく", meaning: "to cry; to weep"},
      {word: "泣き声", reading: "なきごえ", meaning: "cry; crying voice"},
      {word: "泣き", reading: "なき", meaning: "weeping; lamenting"}
    ],
  },
  {
    kanji: "笑",
    keyword: "laugh",
    reading: "わら.う / え.む / ショウ",
    radical: "笑",
    componentHint: "classical radical 118",
    examples: [
      {word: "笑う", reading: "わらう", meaning: "to laugh; to smile"},
      {word: "微笑", reading: "びしょう", meaning: "smile"},
      {word: "笑顔", reading: "えがお", meaning: "smiling face; smile"}
    ],
  },
  {
    kanji: "専",
    keyword: "specialty/exclusive",
    reading: "もっぱ.ら / セン",
    radical: "専",
    componentHint: "classical radical 41",
    examples: [
      {word: "専門", reading: "せんもん", meaning: "speciality; specialty"},
      {word: "専用", reading: "せんよう", meaning: "exclusive use; personal use"},
      {word: "専務", reading: "せんむ", meaning: "managing director; special duty"}
    ],
  },
  {
    kanji: "恵",
    keyword: "favor/blessing",
    reading: "めぐ.む / めぐ.み / ケイ / エ",
    radical: "恵",
    componentHint: "classical radical 61",
    examples: [
      {word: "知恵", reading: "ちえ", meaning: "wisdom; wit"},
      {word: "恵まれる", reading: "めぐまれる", meaning: "to be blessed with; to be rich in"},
      {word: "恵み", reading: "めぐみ", meaning: "blessing; grace"}
    ],
  },
  {
    kanji: "連",
    keyword: "take along/lead",
    reading: "つら.なる / つら.ねる / つ.れる / -づ.れ / レン",
    radical: "連",
    componentHint: "classical radical 162",
    examples: [
      {word: "連中", reading: "れんちゅう", meaning: "colleagues; company"},
      {word: "連れる", reading: "つれる", meaning: "to lead; to take (a person)"},
      {word: "連絡", reading: "れんらく", meaning: "to contact; to get in touch"}
    ],
  },
  {
    kanji: "軍",
    keyword: "army/force",
    reading: "いくさ / グン",
    radical: "軍",
    componentHint: "classical radical 159",
    examples: [
      {word: "将軍", reading: "しょうぐん", meaning: "general; shogun"},
      {word: "海軍", reading: "かいぐん", meaning: "navy"},
      {word: "陸軍", reading: "りくぐん", meaning: "army"}
    ],
  },
  {
    kanji: "運",
    keyword: "carry/luck",
    reading: "はこ.ぶ / ウン",
    radical: "運",
    componentHint: "classical radical 162",
    examples: [
      {word: "運ぶ", reading: "はこぶ", meaning: "to carry; to transport"},
      {word: "運命", reading: "うんめい", meaning: "fate; destiny"},
      {word: "運動", reading: "うんどう", meaning: "exercise; physical training"}
    ],
  },
  {
    kanji: "蓮",
    keyword: "lotus",
    reading: "はす / はちす / レン",
    radical: "蓮",
    componentHint: "classical radical 162",
    examples: [
      {word: "蓮華", reading: "れんげ", meaning: "lotus flower; Chinese milk vetch (Astragalus sinicus)"},
      {word: "紅蓮", reading: "ぐれん", meaning: "crimson; crimson lotus flower"},
      {word: "睡蓮", reading: "すいれん", meaning: "water lily (any plant of genus Nymphaea); pygmy waterlily (Nymphaea tetragona)"}
    ],
  },
  {
    kanji: "隊",
    keyword: "regiment/party",
    reading: "タイ",
    radical: "隊",
    componentHint: "classical radical 170",
    examples: [
      {word: "部隊", reading: "ぶたい", meaning: "force; unit"},
      {word: "艦隊", reading: "かんたい", meaning: "(naval) fleet; armada"},
      {word: "隊長", reading: "たいちょう", meaning: "commanding officer"}
    ],
  },
  {
    kanji: "呈",
    keyword: "display/offer",
    reading: "テイ",
    radical: "呈",
    componentHint: "classical radical 30",
    examples: [
      {word: "呈す", reading: "ていす", meaning: "to present; to offer"},
      {word: "露呈", reading: "ろてい", meaning: "exposure; disclosure"},
      {word: "進呈", reading: "しんてい", meaning: "presentation (e.g. of a gift)"}
    ],
  },
  {
    kanji: "程",
    keyword: "extent/degree",
    reading: "ほど / -ほど / テイ",
    radical: "程",
    componentHint: "classical radical 115",
    examples: [
      {word: "程度", reading: "ていど", meaning: "degree; amount"},
      {word: "ある程度", reading: "あるていど", meaning: "to some extent; to a certain extent"},
      {word: "過程", reading: "かてい", meaning: "process; course"}
    ],
  },
  {
    kanji: "聖",
    keyword: "holy/saint",
    reading: "ひじり / セイ / ショウ",
    radical: "聖",
    componentHint: "classical radical 128",
    examples: [
      {word: "神聖", reading: "しんせい", meaning: "holiness; sacredness"},
      {word: "聖書", reading: "せいしょ", meaning: "Bible; scriptures"},
      {word: "聖堂", reading: "せいどう", meaning: "(Confucian) temple; church"}
    ],
  },
  {
    kanji: "丑",
    keyword: "sign of the ox or cow/1-3AM",
    reading: "うし / チュウ",
    radical: "丑",
    componentHint: "classical radical 1",
    examples: [
      {word: "丑寅", reading: "うしとら", meaning: "northeast"},
      {word: "丑の刻参り", reading: "うしのこくまいり", meaning: "cursing ritual where one visits a shrine at 2 in the morning and nails a doll representing a person to a tree, praying for said person's death"},
      {word: "丑の日", reading: "うしのひ", meaning: "day of the ox (esp. in midsummer or midwinter)"}
    ],
  },
  {
    kanji: "紐",
    keyword: "string/cord",
    reading: "ひも / チュウ / ジュウ",
    radical: "紐",
    componentHint: "classical radical 120",
    examples: [
      {word: "腰紐", reading: "こしひも", meaning: "cord tied around the waist of a kimono before an obi is tied"},
      {word: "紐解く", reading: "ひもとく", meaning: "to peruse (a book); to untie a scroll"},
      {word: "紐帯", reading: "ちゅうたい", meaning: "important connection; important social foundation"}
    ],
  },
  {
    kanji: "革",
    keyword: "leather/skin",
    reading: "かわ / カク",
    radical: "革",
    componentHint: "classical radical 177",
    examples: [
      {word: "革命", reading: "かくめい", meaning: "revolution; 58th year of the sexagenary cycle (in onmyou-dou)"},
      {word: "改革", reading: "かいかく", meaning: "reform; reformation"},
      {word: "革新", reading: "かくしん", meaning: "reform; innovation"}
    ],
  },
  {
    kanji: "靴",
    keyword: "shoes",
    reading: "くつ / カ",
    radical: "靴",
    componentHint: "classical radical 177",
    examples: [
      {word: "靴下", reading: "くつした", meaning: "socks; sock"},
      {word: "長靴", reading: "ながぐつ", meaning: "leather boots; rubber boots"},
      {word: "靴音", reading: "くつおと", meaning: "walking sound; footsteps"}
    ],
  },
  {
    kanji: "鞄",
    keyword: "suitcase/bag",
    reading: "かばん / ハク / ホウ / ビョウ",
    radical: "鞄",
    componentHint: "classical radical 177",
    examples: [
      {word: "鞄持", reading: "かばんもち", meaning: "private secretary; flunky"},
      {word: "鞄語", reading: "かばんご", meaning: "portmanteau word; combination of two words (often first half of one, second half of another)"},
      {word: "小鞄", reading: "こかばん", meaning: "small bag; small satchel"}
    ],
  },
  {
    kanji: "皮",
    keyword: "pelt/skin",
    reading: "かわ / ヒ",
    radical: "皮",
    componentHint: "classical radical 107",
    examples: [
      {word: "皮肉", reading: "ひにく", meaning: "cynicism; sarcasm"},
      {word: "皮膚", reading: "ひふ", meaning: "skin"},
      {word: "毛皮", reading: "けがわ", meaning: "fur; skin"}
    ],
  },
  {
    kanji: "破",
    keyword: "rend/rip",
    reading: "やぶ.る / やぶ.れる / わ.れる / ハ",
    radical: "破",
    componentHint: "classical radical 112",
    examples: [
      {word: "破る", reading: "やぶる", meaning: "to tear; to break"},
      {word: "破壊", reading: "はかい", meaning: "destruction; disruption"},
      {word: "破片", reading: "はへん", meaning: "fragment; splinter"}
    ],
  },
  {
    kanji: "彼",
    keyword: "he/that",
    reading: "かれ / かの / か.の / ヒ",
    radical: "彼",
    componentHint: "classical radical 60",
    examples: [
      {word: "彼女", reading: "かのじょ", meaning: "she; her"},
      {word: "彼ら", reading: "かれら", meaning: "they (usually male); them"},
      {word: "彼等", reading: "かれら", meaning: "they (usually male); them"}
    ],
  },
  {
    kanji: "波",
    keyword: "waves/billows",
    reading: "なみ / ハ",
    radical: "波",
    componentHint: "classical radical 85",
    examples: [
      {word: "電波", reading: "でんぱ", meaning: "electromagnetic wave; radio wave"},
      {word: "波打つ", reading: "なみうつ", meaning: "to dash against; to undulate"},
      {word: "波紋", reading: "はもん", meaning: "ripple; ring on the water"}
    ],
  },
  {
    kanji: "果",
    keyword: "fruit/reward",
    reading: "は.たす / はた.す / -は.たす / は.てる / カ",
    radical: "果",
    componentHint: "classical radical 75",
    examples: [
      {word: "結果", reading: "けっか", meaning: "result; consequence"},
      {word: "効果", reading: "こうか", meaning: "effect; effectiveness"},
      {word: "果たす", reading: "はたす", meaning: "to accomplish; to achieve"}
    ],
  },
  {
    kanji: "課",
    keyword: "chapter/lesson",
    reading: "カ",
    radical: "課",
    componentHint: "classical radical 149",
    examples: [
      {word: "課長", reading: "かちょう", meaning: "section manager; section chief"},
      {word: "放課後", reading: "ほうかご", meaning: "after school"},
      {word: "課題", reading: "かだい", meaning: "subject; theme"}
    ],
  },
  {
    kanji: "巣",
    keyword: "nest/rookery",
    reading: "す / す.くう / ソウ",
    radical: "巣",
    componentHint: "classical radical 75",
    examples: [
      {word: "蜘蛛の巣", reading: "くものす", meaning: "spiderweb"},
      {word: "蜂の巣", reading: "はちのす", meaning: "beehive; hive"},
      {word: "巣窟", reading: "そうくつ", meaning: "den; haunt"}
    ],
  },
  {
    kanji: "菓",
    keyword: "candy/cakes",
    reading: "カ",
    radical: "菓",
    componentHint: "classical radical 140",
    examples: [
      {word: "菓子", reading: "かし", meaning: "pastry; confectionery"},
      {word: "お菓子", reading: "おかし", meaning: "confections; sweets"},
      {word: "駄菓子", reading: "だがし", meaning: "cheap sweets"}
    ],
  },
  {
    kanji: "茶",
    keyword: "tea",
    reading: "チャ / サ",
    radical: "茶",
    componentHint: "classical radical 140",
    examples: [
      {word: "お茶", reading: "おちゃ", meaning: "tea (usu. green); tea break (at work)"},
      {word: "喫茶店", reading: "きっさてん", meaning: "coffee shop; tearoom"},
      {word: "茶色", reading: "ちゃいろ", meaning: "light brown; tawny"}
    ],
  },
  {
    kanji: "世",
    keyword: "generation/world",
    reading: "よ / さんじゅう / セイ / セ / ソウ",
    radical: "世",
    componentHint: "classical radical 1",
    examples: [
      {word: "世界", reading: "せかい", meaning: "the world; society"},
      {word: "世間", reading: "せけん", meaning: "world; society"},
      {word: "この世", reading: "このよ", meaning: "this world; the present life (in contrast to the land of the dead)"}
    ],
  },
  {
    kanji: "葉",
    keyword: "leaf/plane",
    reading: "は / ヨウ",
    radical: "葉",
    componentHint: "classical radical 140",
    examples: [
      {word: "言葉", reading: "ことば", meaning: "language; dialect"},
      {word: "千葉", reading: "ちば", meaning: "Chiba (city)"},
      {word: "葉巻", reading: "はまき", meaning: "cigar"}
    ],
  },
  {
    kanji: "棄",
    keyword: "abandon/throw away",
    reading: "す.てる / キ",
    radical: "棄",
    componentHint: "classical radical 75",
    examples: [
      {word: "棄てる", reading: "すてる", meaning: "to throw away; to cast away"},
      {word: "放棄", reading: "ほうき", meaning: "abandonment; renunciation"},
      {word: "破棄", reading: "はき", meaning: "tearing up and discarding (e.g. documents); disposal (e.g. weaponry)"}
    ],
  },
  {
    kanji: "緑",
    keyword: "green",
    reading: "みどり / リョク / ロク",
    radical: "緑",
    componentHint: "classical radical 120",
    examples: [
      {word: "緑色", reading: "りょくしょく", meaning: "green; emerald green"},
      {word: "新緑", reading: "しんりょく", meaning: "fresh verdure; new green leaves"},
      {word: "深緑", reading: "ふかみどり", meaning: "dark (deep) green"}
    ],
  },
  {
    kanji: "録",
    keyword: "record",
    reading: "しる.す / と.る / ロク",
    radical: "録",
    componentHint: "classical radical 167",
    examples: [
      {word: "記録", reading: "きろく", meaning: "record; minutes"},
      {word: "録音", reading: "ろくおん", meaning: "(audio) recording"},
      {word: "登録", reading: "とうろく", meaning: "registration; accession"}
    ],
  },
  {
    kanji: "剝",
    keyword: "strip off",
    reading: "はぐ / むく / はげる / ハク",
    radical: "剝",
    componentHint: "classical radical 18",
    examples: [
      {word: "剝く", reading: "むく", meaning: "to peel; to skin"},
      {word: "剝", reading: "はぐ", meaning: "kanji entry"},
      {word: "剝", reading: "はぐ", meaning: "kanji entry"}
    ],
  },
  {
    kanji: "縁",
    keyword: "affinity/relation",
    reading: "ふち / ふちど.る / ゆかり / よすが / エン / -ネン",
    radical: "縁",
    componentHint: "classical radical 120",
    examples: [
      {word: "縁側", reading: "えんがわ", meaning: "veranda; porch"},
      {word: "無縁", reading: "むえん", meaning: "unrelated; irrelevant"},
      {word: "因縁", reading: "いんねん", meaning: "fate; destiny"}
    ],
  },
  {
    kanji: "介",
    keyword: "jammed in/shellfish",
    reading: "カイ",
    radical: "介",
    componentHint: "classical radical 9",
    examples: [
      {word: "紹介", reading: "しょうかい", meaning: "introduction; presentation"},
      {word: "厄介", reading: "やっかい", meaning: "trouble; burden"},
      {word: "介す", reading: "かいす", meaning: "to use as an intermediary; to mediate"}
    ],
  },
  {
    kanji: "界",
    keyword: "world/boundary",
    reading: "カイ",
    radical: "界",
    componentHint: "classical radical 102",
    examples: [
      {word: "世界", reading: "せかい", meaning: "the world; society"},
      {word: "視界", reading: "しかい", meaning: "field of vision; visibility"},
      {word: "限界", reading: "げんかい", meaning: "limit; bound"}
    ],
  },
  {
    kanji: "浮",
    keyword: "floating/float",
    reading: "う.く / う.かれる / う.かぶ / む / フ",
    radical: "浮",
    componentHint: "classical radical 85",
    examples: [
      {word: "浮かぶ", reading: "うかぶ", meaning: "to float; to be suspended"},
      {word: "浮かべる", reading: "うかべる", meaning: "to float; to express"},
      {word: "浮く", reading: "うく", meaning: "to float; to become merry"}
    ],
  },
  {
    kanji: "将",
    keyword: "leader/commander",
    reading: "まさ.に / はた / まさ / ひきい.る / ショウ / ソウ",
    radical: "将",
    componentHint: "classical radical 41",
    examples: [
      {word: "将軍", reading: "しょうぐん", meaning: "general; shogun"},
      {word: "将来", reading: "しょうらい", meaning: "future (usually near); prospects"},
      {word: "大将", reading: "たいしょう", meaning: "general; admiral"}
    ],
  },
  {
    kanji: "奨",
    keyword: "exhort/urge",
    reading: "すす.める / ショウ / ソウ",
    radical: "奨",
    componentHint: "classical radical 37",
    examples: [
      {word: "奨励", reading: "しょうれい", meaning: "encouragement; promotion"},
      {word: "奨学", reading: "しょうがく", meaning: "encouragement to study"},
      {word: "推奨", reading: "すいしょう", meaning: "recommendation; endorsement"}
    ],
  },
  {
    kanji: "状",
    keyword: "status quo/conditions",
    reading: "ジョウ",
    radical: "状",
    componentHint: "classical radical 94",
    examples: [
      {word: "状態", reading: "じょうたい", meaning: "current status; condition"},
      {word: "状況", reading: "じょうきょう", meaning: "state of affairs (around you); situation"},
      {word: "白状", reading: "はくじょう", meaning: "confession"}
    ],
  },
  {
    kanji: "病",
    keyword: "ill/sick",
    reading: "や.む / -や.み / やまい / ビョウ / ヘイ",
    radical: "病",
    componentHint: "classical radical 104",
    examples: [
      {word: "病院", reading: "びょういん", meaning: "hospital"},
      {word: "病気", reading: "びょうき", meaning: "illness; disease"},
      {word: "病人", reading: "びょうにん", meaning: "sick person; patient"}
    ],
  },
  {
    kanji: "症",
    keyword: "symptoms/illness",
    reading: "ショウ",
    radical: "症",
    componentHint: "classical radical 104",
    examples: [
      {word: "症状", reading: "しょうじょう", meaning: "symptoms; condition"},
      {word: "恐怖症", reading: "きょうふしょう", meaning: "morbid fear; phobia"},
      {word: "症候群", reading: "しょうこうぐん", meaning: "syndrome"}
    ],
  },
  {
    kanji: "痛",
    keyword: "pain/hurt",
    reading: "いた.い / いた.む / いた.ましい / いた.める / ツウ",
    radical: "痛",
    componentHint: "classical radical 104",
    examples: [
      {word: "痛い", reading: "いたい", meaning: "painful; sore"},
      {word: "痛み", reading: "いたみ", meaning: "pain; ache"},
      {word: "苦痛", reading: "くつう", meaning: "pain; agony"}
    ],
  },
  {
    kanji: "憶",
    keyword: "recollection/think",
    reading: "オク",
    radical: "憶",
    componentHint: "classical radical 61",
    examples: [
      {word: "記憶", reading: "きおく", meaning: "memory; recollection"},
      {word: "憶える", reading: "おぼえる", meaning: "to memorize; to memorise"},
      {word: "憶測", reading: "おくそく", meaning: "guess; speculation"}
    ],
  },
  {
    kanji: "臆",
    keyword: "timidity/heart",
    reading: "むね / おくする / オク / ヨク",
    radical: "臆",
    componentHint: "classical radical 130",
    examples: [
      {word: "臆病", reading: "おくびょう", meaning: "cowardice; timidity"},
      {word: "臆病者", reading: "おくびょうもの", meaning: "coward"},
      {word: "臆測", reading: "おくそく", meaning: "guess; speculation"}
    ],
  },
  {
    kanji: "億",
    keyword: "hundred million/10**8",
    reading: "オク",
    radical: "億",
    componentHint: "classical radical 9",
    examples: [
      {word: "億劫", reading: "おっくう", meaning: "troublesome; annoying"},
      {word: "億万", reading: "おくまん", meaning: "millions and millions"},
      {word: "十万億土", reading: "じゅうまんおくど", meaning: "eternity; paradise"}
    ],
  },
  {
    kanji: "視",
    keyword: "inspection/regard as",
    reading: "み.る / シ",
    radical: "視",
    componentHint: "classical radical 147",
    examples: [
      {word: "視線", reading: "しせん", meaning: "one's line of sight; one's gaze"},
      {word: "無視", reading: "むし", meaning: "disregarding; ignoring"},
      {word: "視界", reading: "しかい", meaning: "field of vision; visibility"}
    ],
  },
  {
    kanji: "規",
    keyword: "standard/measure",
    reading: "キ",
    radical: "規",
    componentHint: "classical radical 147",
    examples: [
      {word: "規模", reading: "きぼ", meaning: "scale; scope"},
      {word: "規則", reading: "きそく", meaning: "rules; regulations"},
      {word: "規定", reading: "きてい", meaning: "stipulation; prescription"}
    ],
  },
  {
    kanji: "則",
    keyword: "rule/follow",
    reading: "のっと.る / ソク",
    radical: "則",
    componentHint: "classical radical 18",
    examples: [
      {word: "規則", reading: "きそく", meaning: "rules; regulations"},
      {word: "法則", reading: "ほうそく", meaning: "law; rule"},
      {word: "原則", reading: "げんそく", meaning: "principle; general rule"}
    ],
  },
  {
    kanji: "側",
    keyword: "side/lean",
    reading: "かわ / がわ / そば / ソク",
    radical: "側",
    componentHint: "classical radical 9",
    examples: [
      {word: "内側", reading: "うちがわ", meaning: "inside; interior"},
      {word: "両側", reading: "りょうがわ", meaning: "both sides"},
      {word: "外側", reading: "そとがわ", meaning: "exterior; outside"}
    ],
  },
  {
    kanji: "測",
    keyword: "fathom/plan",
    reading: "はか.る / ソク",
    radical: "測",
    componentHint: "classical radical 85",
    examples: [
      {word: "推測", reading: "すいそく", meaning: "guess; conjecture"},
      {word: "予測", reading: "よそく", meaning: "prediction; estimation"},
      {word: "観測", reading: "かんそく", meaning: "observation; survey"}
    ],
  },
  {
    kanji: "考",
    keyword: "consider/think over",
    reading: "かんが.える / かんが.え / コウ",
    radical: "考",
    componentHint: "classical radical 125",
    examples: [
      {word: "考える", reading: "かんがえる", meaning: "to think about; to take into consideration"},
      {word: "考え", reading: "かんがえ", meaning: "thinking; thought"},
      {word: "思考", reading: "しこう", meaning: "thought; consideration"}
    ],
  },
  {
    kanji: "老",
    keyword: "old man/old age",
    reading: "お.いる / ふ.ける / ロウ",
    radical: "老",
    componentHint: "classical radical 125",
    examples: [
      {word: "老人", reading: "ろうじん", meaning: "the aged; old person"},
      {word: "老婆", reading: "ろうば", meaning: "old woman"},
      {word: "家老", reading: "かろう", meaning: "chief retainer; daimyo's minister"}
    ],
  },
  {
    kanji: "孝",
    keyword: "filial piety/child's respect",
    reading: "コウ / キョウ",
    radical: "孝",
    componentHint: "classical radical 39",
    examples: [
      {word: "親孝行", reading: "おやこうこう", meaning: "filial piety"},
      {word: "孝行", reading: "こうこう", meaning: "filial piety"},
      {word: "親不孝", reading: "おやふこう", meaning: "lack of filial piety"}
    ],
  },
  {
    kanji: "厚",
    keyword: "thick/heavy",
    reading: "あつ.い / あか / コウ",
    radical: "厚",
    componentHint: "classical radical 27",
    examples: [
      {word: "厚い", reading: "あつい", meaning: "thick; deep"},
      {word: "分厚い", reading: "ぶあつい", meaning: "bulky; massive"},
      {word: "厚志", reading: "こうし", meaning: "kind intention; kind thought"}
    ],
  },
  {
    kanji: "教",
    keyword: "teach/faith",
    reading: "おし.える / おそ.わる / キョウ",
    radical: "教",
    componentHint: "classical radical 66",
    examples: [
      {word: "教える", reading: "おしえる", meaning: "to teach; to inform"},
      {word: "教授", reading: "きょうじゅ", meaning: "professor; teaching"},
      {word: "教師", reading: "きょうし", meaning: "teacher (classroom)"}
    ],
  },
  {
    kanji: "完",
    keyword: "perfect/completion",
    reading: "カン",
    radical: "完",
    componentHint: "classical radical 40",
    examples: [
      {word: "完全", reading: "かんぜん", meaning: "perfection; completeness"},
      {word: "完成", reading: "かんせい", meaning: "complete; completion"},
      {word: "完璧", reading: "かんぺき", meaning: "perfect; complete"}
    ],
  },
  {
    kanji: "院",
    keyword: "Inst./institution",
    reading: "イン",
    radical: "院",
    componentHint: "classical radical 170",
    examples: [
      {word: "病院", reading: "びょういん", meaning: "hospital"},
      {word: "入院", reading: "にゅういん", meaning: "hospitalization; hospitalisation"},
      {word: "院長", reading: "いんちょう", meaning: "director"}
    ],
  },
  {
    kanji: "奈",
    keyword: "Nara/what?",
    reading: "いかん / からなし / ナ / ナイ / ダイ",
    radical: "奈",
    componentHint: "classical radical 37",
    examples: [
      {word: "奈落", reading: "ならく", meaning: "Naraka; hell"},
      {word: "奈何", reading: "いかん", meaning: "how; in what way"},
      {word: "奈良漬", reading: "ならづけ", meaning: "vegetables pickled in sake lees"}
    ],
  },
  {
    kanji: "宗",
    keyword: "religion/sect",
    reading: "むね / シュウ / ソウ",
    radical: "宗",
    componentHint: "classical radical 40",
    examples: [
      {word: "宗教", reading: "しゅうきょう", meaning: "religion; religious affiliation"},
      {word: "宗家", reading: "そうけ", meaning: "head of family; originator"},
      {word: "正宗", reading: "まさむね", meaning: "famous sword; sword blade by Masamune"}
    ],
  },
  {
    kanji: "祭",
    keyword: "ritual/offer prayers",
    reading: "まつ.る / まつ.り / まつり / サイ",
    radical: "祭",
    componentHint: "classical radical 113",
    examples: [
      {word: "司祭", reading: "しさい", meaning: "priest; minister"},
      {word: "祭り", reading: "まつり", meaning: "festival; feast"},
      {word: "祭壇", reading: "さいだん", meaning: "altar"}
    ],
  },
  {
    kanji: "際",
    keyword: "occasion/side",
    reading: "きわ / -ぎわ / サイ",
    radical: "際",
    componentHint: "classical radical 170",
    examples: [
      {word: "実際", reading: "じっさい", meaning: "practicality; practical"},
      {word: "国際", reading: "こくさい", meaning: "international"},
      {word: "交際", reading: "こうさい", meaning: "company; friendship"}
    ],
  },
  {
    kanji: "察",
    keyword: "guess/presume",
    reading: "サツ",
    radical: "察",
    componentHint: "classical radical 40",
    examples: [
      {word: "警察", reading: "けいさつ", meaning: "police; police officer"},
      {word: "観察", reading: "かんさつ", meaning: "observation; survey"},
      {word: "察す", reading: "さっす", meaning: "to guess; to sense"}
    ],
  },
  {
    kanji: "祈",
    keyword: "pray/wish",
    reading: "いの.る / キ",
    radical: "祈",
    componentHint: "classical radical 113",
    examples: [
      {word: "祈る", reading: "いのる", meaning: "to pray; to wish"},
      {word: "祈り", reading: "いのり", meaning: "prayer; supplication"},
      {word: "祈祷", reading: "きとう", meaning: "prayer; grace (at meals)"}
    ],
  },
  {
    kanji: "祖",
    keyword: "ancestor/pioneer",
    reading: "ソ",
    radical: "祖",
    componentHint: "classical radical 113",
    examples: [
      {word: "祖父", reading: "そふ", meaning: "grandfather; old man"},
      {word: "祖母", reading: "そぼ", meaning: "grandmother"},
      {word: "先祖", reading: "せんぞ", meaning: "ancestor"}
    ],
  },
  {
    kanji: "助",
    keyword: "help/rescue",
    reading: "たす.ける / たす.かる / す.ける / すけ / ジョ",
    radical: "助",
    componentHint: "classical radical 19",
    examples: [
      {word: "助ける", reading: "たすける", meaning: "to help; to save"},
      {word: "助かる", reading: "たすかる", meaning: "to be saved; to be rescued"},
      {word: "助け", reading: "たすけ", meaning: "assistance; help"}
    ],
  },
  {
    kanji: "仲",
    keyword: "go-between/relationship",
    reading: "なか / チュウ",
    radical: "仲",
    componentHint: "classical radical 9",
    examples: [
      {word: "仲間", reading: "ちゅうげん", meaning: "samurai's attendant; footman"},
      {word: "仲良く", reading: "なかよく", meaning: "on good terms with; on cordial terms with"},
      {word: "仲よく", reading: "なかよく", meaning: "on good terms with; on cordial terms with"}
    ],
  },
  {
    kanji: "忠",
    keyword: "loyalty/fidelity",
    reading: "チュウ",
    radical: "忠",
    componentHint: "classical radical 61",
    examples: [
      {word: "忠告", reading: "ちゅうこく", meaning: "advice; warning"},
      {word: "忠実", reading: "ちゅうじつ", meaning: "faithful; loyal"},
      {word: "忠誠", reading: "ちゅうせい", meaning: "loyalty; sincerity"}
    ],
  },
  {
    kanji: "沖",
    keyword: "open sea/offing",
    reading: "おき / おきつ / ちゅう.する / わく / チュウ",
    radical: "沖",
    componentHint: "classical radical 85",
    examples: [
      {word: "沖縄", reading: "おきなわ", meaning: "Okinawa (prefecture); region comprising most of Japan's southwestern archipelago (esp. Okinawa Island)"},
      {word: "沖合", reading: "おきあい", meaning: "coast; offing"},
      {word: "沖合い", reading: "おきあい", meaning: "coast; offing"}
    ],
  },
  {
    kanji: "保",
    keyword: "protect/guarantee",
    reading: "たも.つ / ホ / ホウ",
    radical: "保",
    componentHint: "classical radical 9",
    examples: [
      {word: "保つ", reading: "たもつ", meaning: "to keep; to preserve"},
      {word: "保護", reading: "ほご", meaning: "care; protection"},
      {word: "保証", reading: "ほしょう", meaning: "guarantee; security"}
    ],
  },
  {
    kanji: "呆",
    keyword: "be amazed/disgusted",
    reading: "ほけ.る / ぼ.ける / あき.れる / おろか / ホウ",
    radical: "呆",
    componentHint: "classical radical 30",
    examples: [
      {word: "呆れる", reading: "あきれる", meaning: "to be amazed; to be shocked"},
      {word: "阿呆", reading: "あほう", meaning: "fool; simpleton"},
      {word: "呆気", reading: "あっけ", meaning: "taken aback; dumbfounded"}
    ],
  },
  {
    kanji: "守",
    keyword: "guard/protect",
    reading: "まも.る / まも.り / もり / -もり / シュ / ス",
    radical: "守",
    componentHint: "classical radical 40",
    examples: [
      {word: "守る", reading: "まもる", meaning: "to protect; to guard"},
      {word: "見守る", reading: "みまもる", meaning: "to watch over; to watch attentively"},
      {word: "留守", reading: "るす", meaning: "absence; being away from home"}
    ],
  },
  {
    kanji: "団",
    keyword: "group/association",
    reading: "かたまり / まる.い / ダン / トン",
    radical: "団",
    componentHint: "classical radical 31",
    examples: [
      {word: "集団", reading: "しゅうだん", meaning: "group; mass"},
      {word: "布団", reading: "ふとん", meaning: "futon (quilted Japanese-style mattress laid out on the floor); round cushion used for Zen meditation (traditionally made of woven bulrush leaves)"},
      {word: "師団", reading: "しだん", meaning: "(army) division"}
    ],
  },
  {
    kanji: "対",
    keyword: "vis-a-vis/opposite",
    reading: "あいて / こた.える / そろ.い / つれあ.い / タイ / ツイ",
    radical: "対",
    componentHint: "classical radical 41",
    examples: [
      {word: "に対して", reading: "にたいして", meaning: "towards; against"},
      {word: "に対する", reading: "にたいする", meaning: "regarding; in"},
      {word: "絶対", reading: "ぜったい", meaning: "absolutely; unconditionally"}
    ],
  },
  {
    kanji: "村",
    keyword: "village/town",
    reading: "むら / ソン",
    radical: "村",
    componentHint: "classical radical 75",
    examples: [
      {word: "村人", reading: "むらびと", meaning: "villager"},
      {word: "村長", reading: "そんちょう", meaning: "village headman; village mayor"},
      {word: "農村", reading: "のうそん", meaning: "agricultural community; farm village"}
    ],
  },
  {
    kanji: "才",
    keyword: "genius/years old",
    reading: "サイ",
    radical: "才",
    componentHint: "classical radical 64",
    examples: [
      {word: "才能", reading: "さいのう", meaning: "talent; ability"},
      {word: "才人", reading: "さいじん", meaning: "talented person; clever person"},
      {word: "天才", reading: "てんさい", meaning: "genius; prodigy"}
    ],
  },
  {
    kanji: "財",
    keyword: "property/money",
    reading: "たから / ザイ / サイ / ゾク",
    radical: "財",
    componentHint: "classical radical 154",
    examples: [
      {word: "財産", reading: "ざいさん", meaning: "property; fortune"},
      {word: "財布", reading: "さいふ", meaning: "purse; handbag"},
      {word: "財宝", reading: "ざいほう", meaning: "treasure"}
    ],
  },
  {
    kanji: "材",
    keyword: "lumber/log",
    reading: "ザイ",
    radical: "材",
    componentHint: "classical radical 75",
    examples: [
      {word: "材料", reading: "ざいりょう", meaning: "ingredients; material"},
      {word: "取材", reading: "しゅざい", meaning: "news coverage; collecting data (e.g. for an article)"},
      {word: "材木", reading: "ざいもく", meaning: "lumber; timber"}
    ],
  },
  {
    kanji: "沈",
    keyword: "sink/be submerged",
    reading: "しず.む / しず.める / チン / ジン",
    radical: "沈",
    componentHint: "classical radical 85",
    examples: [
      {word: "沈黙", reading: "ちんもく", meaning: "silence; being silent"},
      {word: "沈む", reading: "しずむ", meaning: "to sink; to go under"},
      {word: "沈める", reading: "しずめる", meaning: "to sink; to submerge"}
    ],
  },
  {
    kanji: "枕",
    keyword: "pillow",
    reading: "まくら / チン / シン",
    radical: "枕",
    componentHint: "classical radical 75",
    examples: [
      {word: "枕元", reading: "まくらもと", meaning: "near one's pillow; at one's bedside"},
      {word: "枕許", reading: "まくらもと", meaning: "near one's pillow; at one's bedside"},
      {word: "枕頭", reading: "ちんとう", meaning: "bedside"}
    ],
  },
  {
    kanji: "丈",
    keyword: "length/ten shaku",
    reading: "たけ / だけ / ジョウ",
    radical: "丈",
    componentHint: "classical radical 1",
    examples: [
      {word: "大丈夫", reading: "だいじょうぶ", meaning: "safe; all right"},
      {word: "頑丈", reading: "がんじょう", meaning: "solid; firm"},
      {word: "丈夫", reading: "じょうぶ", meaning: "healthy; robust"}
    ],
  },
  {
    kanji: "杖",
    keyword: "staff/cane",
    reading: "つえ / ジョウ",
    radical: "杖",
    componentHint: "classical radical 75",
    examples: [
      {word: "頬杖", reading: "ほおづえ", meaning: "resting one's chin in one's hands; bracing (in building)"},
      {word: "松葉杖", reading: "まつばづえ", meaning: "crutch; crutches"},
      {word: "錫杖", reading: "しゃくじょう", meaning: "bishop's staff; khakkhara"}
    ],
  },
  {
    kanji: "偉",
    keyword: "admirable/greatness",
    reading: "えら.い / イ",
    radical: "偉",
    componentHint: "classical radical 9",
    examples: [
      {word: "偉い", reading: "えらい", meaning: "great; excellent"},
      {word: "偉大", reading: "いだい", meaning: "greatness"},
      {word: "偉業", reading: "いぎょう", meaning: "great enterprise; exploits"}
    ],
  },
  {
    kanji: "緯",
    keyword: "horizontal/woof",
    reading: "よこいと / ぬき / イ",
    radical: "緯",
    componentHint: "classical radical 120",
    examples: [
      {word: "経緯", reading: "けいい", meaning: "details; particulars"},
      {word: "緯度", reading: "いど", meaning: "latitude (nav.)"},
      {word: "北緯", reading: "ほくい", meaning: "north latitude"}
    ],
  },
  {
    kanji: "衛",
    keyword: "defense/protection",
    reading: "エイ / エ",
    radical: "衛",
    componentHint: "classical radical 144",
    examples: [
      {word: "兵衛", reading: "ひょうえい", meaning: "middle palace guard (ritsuryo system)"},
      {word: "護衛", reading: "ごえい", meaning: "guard; convoy"},
      {word: "近衛", reading: "このえ", meaning: "Imperial Guards"}
    ],
  },
  {
    kanji: "韓",
    keyword: "Korea",
    reading: "から / いげた / カン",
    radical: "韓",
    componentHint: "classical radical 178",
    examples: [
      {word: "韓国", reading: "かんこく", meaning: "South Korea; Republic of Korea"},
      {word: "大韓航空", reading: "たいかんこうくう", meaning: "Korean Airways"},
      {word: "大韓民国", reading: "だいかんみんこく", meaning: "Republic of Korea"}
    ],
  },
  {
    kanji: "違",
    keyword: "difference/differ",
    reading: "ちが.う / ちが.い / ちが.える / -ちが.える / イ",
    radical: "違",
    componentHint: "classical radical 162",
    examples: [
      {word: "違う", reading: "ちがう", meaning: "to differ (from); to vary"},
      {word: "違い", reading: "ちがい", meaning: "difference; discrepancy"},
      {word: "間違い", reading: "まちがい", meaning: "mistake; error"}
    ],
  },
  {
    kanji: "抱",
    keyword: "embrace/hug",
    reading: "だ.く / いだ.く / かか.える / ホウ",
    radical: "抱",
    componentHint: "classical radical 64",
    examples: [
      {word: "抱く", reading: "いだく", meaning: "to embrace; to hold in the arms (e.g. a baby)"},
      {word: "抱える", reading: "かかえる", meaning: "to hold or carry under or in the arms; to have (esp. problems, debts, etc.)"},
      {word: "抱きしめる", reading: "だきしめる", meaning: "to hug someone close; to hold someone tight"}
    ],
  },
  {
    kanji: "砲",
    keyword: "cannon/gun",
    reading: "ホウ",
    radical: "砲",
    componentHint: "classical radical 112",
    examples: [
      {word: "鉄砲", reading: "てっぽう", meaning: "gun; wooden pole that wrestlers strike in practice"},
      {word: "大砲", reading: "たいほう", meaning: "gun; cannon"},
      {word: "砲弾", reading: "ほうだん", meaning: "shell; cannonball"}
    ],
  },
  {
    kanji: "泡",
    keyword: "bubbles/foam",
    reading: "あわ / ホウ",
    radical: "泡",
    componentHint: "classical radical 85",
    examples: [
      {word: "泡立つ", reading: "あわだつ", meaning: "to have gooseflesh (e.g. from cold or horror)"},
      {word: "水泡", reading: "すいほう", meaning: "foam; bubble"},
      {word: "水の泡", reading: "みずのあわ", meaning: "coming to nothing"}
    ],
  },
  {
    kanji: "丹",
    keyword: "rust-colored/red",
    reading: "に / タン",
    radical: "丹",
    componentHint: "classical radical 3",
    examples: [
      {word: "丹念", reading: "たんねん", meaning: "assiduity; diligence"},
      {word: "牡丹", reading: "ぼたん", meaning: "tree peony (Paeonia suffruticosa); moutan"},
      {word: "切支丹", reading: "きりしたん", meaning: "early Japanese Christianity (from the later Muromachi period); early Japanese Christian"}
    ],
  },
  {
    kanji: "舟",
    keyword: "boat/ship",
    reading: "ふね / ふな- / -ぶね / シュウ",
    radical: "舟",
    componentHint: "classical radical 137",
    examples: [
      {word: "小舟", reading: "こぶね", meaning: "boat; small craft"},
      {word: "助け舟", reading: "たすけぶね", meaning: "lifeboat; friend in need"},
      {word: "湯舟", reading: "ゆぶね", meaning: "bathtub; boat with a bathtub rented to customers (Edo period)"}
    ],
  },
  {
    kanji: "船",
    keyword: "ship/boat",
    reading: "ふね / ふな- / セン",
    radical: "船",
    componentHint: "classical radical 137",
    examples: [
      {word: "船長", reading: "せんちょう", meaning: "ship's captain"},
      {word: "宇宙船", reading: "うちゅうせん", meaning: "space ship"},
      {word: "船頭", reading: "せんどう", meaning: "boatman"}
    ],
  },
  {
    kanji: "舶",
    keyword: "liner/ship",
    reading: "ハク",
    radical: "舶",
    componentHint: "classical radical 137",
    examples: [
      {word: "船舶", reading: "せんぱく", meaning: "ship"},
      {word: "舶来", reading: "はくらい", meaning: "imported; foreign-made"},
      {word: "舶載", reading: "はくさい", meaning: "ocean transportation; importation"}
    ],
  },
  {
    kanji: "般",
    keyword: "carrier/carry",
    reading: "ハン",
    radical: "般",
    componentHint: "classical radical 137",
    examples: [
      {word: "一般", reading: "いっぱん", meaning: "general; universal"},
      {word: "一般人", reading: "いっぱんじん", meaning: "ordinary person; member of the general public"},
      {word: "全般", reading: "ぜんぱん", meaning: "(the) whole; universal"}
    ],
  },
  {
    kanji: "搬",
    keyword: "conveyor/carry",
    reading: "ハン",
    radical: "搬",
    componentHint: "classical radical 64",
    examples: [
      {word: "運搬", reading: "うんぱん", meaning: "transport; carriage"},
      {word: "搬入", reading: "はんにゅう", meaning: "taking in; bringing in (esp. heavy objects, artwork, furniture)"},
      {word: "搬送", reading: "はんそう", meaning: "transportation; conveyance"}
    ],
  },
  {
    kanji: "盤",
    keyword: "tray/shallow bowl",
    reading: "バン",
    radical: "盤",
    componentHint: "classical radical 108",
    examples: [
      {word: "円盤", reading: "えんばん", meaning: "disk; discus"},
      {word: "基盤", reading: "きばん", meaning: "foundation; basis"},
      {word: "地盤", reading: "じばん", meaning: "ground; crust (earth)"}
    ],
  },
  {
    kanji: "歯",
    keyword: "tooth/cog",
    reading: "よわい / は / よわ.い / よわい.する / シ",
    radical: "歯",
    componentHint: "classical radical 211",
    examples: [
      {word: "奥歯", reading: "おくば", meaning: "molars; back teeth"},
      {word: "歯ぎしり", reading: "はぎしり", meaning: "involuntary nocturnal tooth grinding; bruxism"},
      {word: "歯車", reading: "はぐるま", meaning: "gear; cog-wheel"}
    ],
  },
  {
    kanji: "冷",
    keyword: "cool/cold (beer, person)",
    reading: "つめ.たい / ひ.える / ひ.や / ひ.ややか / レイ",
    radical: "冷",
    componentHint: "classical radical 15",
    examples: [
      {word: "冷たい", reading: "つめたい", meaning: "cold (to the touch); chilly"},
      {word: "冷静", reading: "れいせい", meaning: "calm; composure"},
      {word: "冷える", reading: "ひえる", meaning: "to grow cold (from room temperature, e.g. in refrigerator); to get chilly"}
    ],
  },
  {
    kanji: "齢",
    keyword: "age",
    reading: "よわい / とし / レイ",
    radical: "齢",
    componentHint: "classical radical 211",
    examples: [
      {word: "年齢", reading: "ねんれい", meaning: "age; years"},
      {word: "高齢", reading: "こうれい", meaning: "advanced (old) age"},
      {word: "老齢", reading: "ろうれい", meaning: "advanced age; senility"}
    ],
  },
  {
    kanji: "少",
    keyword: "few/little",
    reading: "すく.ない / すこ.し / ショウ",
    radical: "少",
    componentHint: "classical radical 42",
    examples: [
      {word: "少し", reading: "すこし", meaning: "small quantity; little"},
      {word: "少女", reading: "しょうじょ", meaning: "little girl; maiden"},
      {word: "少年", reading: "しょうねん", meaning: "boy; juvenile"}
    ],
  },
  {
    kanji: "砂",
    keyword: "sand",
    reading: "すな / サ / シャ",
    radical: "砂",
    componentHint: "classical radical 112",
    examples: [
      {word: "砂漠", reading: "さばく", meaning: "desert"},
      {word: "砂糖", reading: "さとう", meaning: "sugar"},
      {word: "砂浜", reading: "すなはま", meaning: "sandy beach"}
    ],
  },
  {
    kanji: "歩",
    keyword: "walk/counter for steps",
    reading: "ある.く / あゆ.む / ホ / ブ / フ",
    radical: "歩",
    componentHint: "classical radical 77",
    examples: [
      {word: "歩く", reading: "あるく", meaning: "to walk"},
      {word: "散歩", reading: "さんぽ", meaning: "walk; stroll"},
      {word: "歩む", reading: "あゆむ", meaning: "to walk; to go on foot"}
    ],
  },
  {
    kanji: "渉",
    keyword: "ford/go cross",
    reading: "わた.る / ショウ",
    radical: "渉",
    componentHint: "classical radical 85",
    examples: [
      {word: "交渉", reading: "こうしょう", meaning: "negotiations; discussions"},
      {word: "干渉", reading: "かんしょう", meaning: "interference; intervention"},
      {word: "渉外", reading: "しょうがい", meaning: "public relations; client liaison"}
    ],
  },
  {
    kanji: "省",
    keyword: "focus/government ministry",
    reading: "かえり.みる / はぶ.く / セイ / ショウ",
    radical: "省",
    componentHint: "classical radical 109",
    examples: [
      {word: "反省", reading: "はんせい", meaning: "reflection; reconsideration"},
      {word: "省略", reading: "しょうりゃく", meaning: "omission; abbreviation"},
      {word: "外務省", reading: "がいむしょう", meaning: "Ministry of Foreign Affairs"}
    ],
  },
  {
    kanji: "相",
    keyword: "inter-/mutual",
    reading: "あい- / ソウ / ショウ",
    radical: "相",
    componentHint: "classical radical 109",
    examples: [
      {word: "相手", reading: "あいて", meaning: "companion; partner"},
      {word: "相談", reading: "そうだん", meaning: "consultation; discussion"},
      {word: "相当", reading: "そうとう", meaning: "befitting; becoming"}
    ],
  },
  {
    kanji: "想",
    keyword: "concept/think",
    reading: "おも.う / ソウ / ソ",
    radical: "想",
    componentHint: "classical radical 61",
    examples: [
      {word: "想像", reading: "そうぞう", meaning: "imagination; guess"},
      {word: "予想", reading: "よそう", meaning: "expectation; anticipation"},
      {word: "思想", reading: "しそう", meaning: "thought; idea"}
    ],
  },
  {
    kanji: "称",
    keyword: "appellation/praise",
    reading: "たた.える / とな.える / あ.げる / かな.う / ショウ",
    radical: "称",
    componentHint: "classical radical 115",
    examples: [
      {word: "称す", reading: "しょうす", meaning: "to take the name of; to call oneself"},
      {word: "称する", reading: "しょうする", meaning: "to take the name of; to call oneself"},
      {word: "名称", reading: "めいしょう", meaning: "name; title"}
    ],
  },
  {
    kanji: "弥",
    keyword: "all the more/increasingly",
    reading: "いや / や / あまねし / いよいよ / ミ / ビ",
    radical: "弥",
    componentHint: "classical radical 57",
    examples: [
      {word: "弥生", reading: "やよい", meaning: "third month of the lunar calendar; thick growth (of grass, etc.)"},
      {word: "阿弥陀", reading: "あみだ", meaning: "Amitabha; ghostleg lottery"},
      {word: "沙弥", reading: "しゃみ", meaning: "male Buddhist novice"}
    ],
  },
  {
    kanji: "互",
    keyword: "mutually/reciprocally",
    reading: "たが.い / かたみ.に / ゴ",
    radical: "互",
    componentHint: "classical radical 7",
    examples: [
      {word: "お互い", reading: "おたがい", meaning: "mutual; reciprocal"},
      {word: "互いに", reading: "たがいに", meaning: "mutually; with each other"},
      {word: "互い", reading: "たがい", meaning: "mutual; reciprocal"}
    ],
  },
  {
    kanji: "務",
    keyword: "task/duties",
    reading: "つと.める / ム",
    radical: "務",
    componentHint: "classical radical 19",
    examples: [
      {word: "事務所", reading: "じむしょ", meaning: "office"},
      {word: "事務", reading: "じむ", meaning: "business; office work"},
      {word: "義務", reading: "ぎむ", meaning: "duty; obligation"}
    ],
  },
  {
    kanji: "柔",
    keyword: "tender/weakness",
    reading: "やわ.らか / やわ.らかい / やわ / やわ.ら / ジュウ / ニュウ",
    radical: "柔",
    componentHint: "classical radical 75",
    examples: [
      {word: "柔らかい", reading: "やわらかい", meaning: "soft; tender"},
      {word: "柔らか", reading: "やわらか", meaning: "soft; tender"},
      {word: "柔道", reading: "じゅうどう", meaning: "judo"}
    ],
  },
  {
    kanji: "軟",
    keyword: "soft",
    reading: "やわ.らか / やわ.らかい / ナン",
    radical: "軟",
    componentHint: "classical radical 159",
    examples: [
      {word: "柔軟", reading: "じゅうなん", meaning: "flexible; lithe"},
      {word: "軟弱", reading: "なんじゃく", meaning: "weakness"},
      {word: "軟禁", reading: "なんきん", meaning: "lenient confinement or house arrest"}
    ],
  },
  {
    kanji: "軌",
    keyword: "rut/wheel",
    reading: "キ",
    radical: "軌",
    componentHint: "classical radical 159",
    examples: [
      {word: "軌道", reading: "きどう", meaning: "orbit; trajectory"},
      {word: "軌跡", reading: "きせき", meaning: "tire track; traces of a person or thing"},
      {word: "常軌", reading: "じょうき", meaning: "proper course; beaten track"}
    ],
  },
  {
    kanji: "軒",
    keyword: "flats/counter for houses",
    reading: "のき / ケン",
    radical: "軒",
    componentHint: "classical radical 159",
    examples: [
      {word: "一軒", reading: "いっけん", meaning: "one house"},
      {word: "軒下", reading: "のきした", meaning: "under the overhang of a Japanese roof"},
      {word: "軒先", reading: "のきさき", meaning: "edge of the eaves; house frontage"}
    ],
  },
  {
    kanji: "軸",
    keyword: "axis/pivot",
    reading: "ジク",
    radical: "軸",
    componentHint: "classical radical 159",
    examples: [
      {word: "掛け軸", reading: "かけじく", meaning: "hanging scroll"},
      {word: "枢軸", reading: "すうじく", meaning: "axle; pivot"},
      {word: "掛軸", reading: "かけじく", meaning: "hanging scroll"}
    ],
  },
  {
    kanji: "較",
    keyword: "contrast/compare",
    reading: "くら.べる / カク / コウ",
    radical: "較",
    componentHint: "classical radical 159",
    examples: [
      {word: "比較", reading: "ひかく", meaning: "comparison"},
      {word: "比較的", reading: "ひかくてき", meaning: "comparative; relative"},
      {word: "較べる", reading: "くらべる", meaning: "to compare; to make a comparison"}
    ],
  },
  {
    kanji: "庫",
    keyword: "warehouse/storehouse",
    reading: "くら / コ / ク",
    radical: "庫",
    componentHint: "classical radical 53",
    examples: [
      {word: "倉庫", reading: "そうこ", meaning: "storehouse; warehouse"},
      {word: "冷蔵庫", reading: "れいぞうこ", meaning: "refrigerator"},
      {word: "金庫", reading: "きんこ", meaning: "safe; strongbox"}
    ],
  },
  {
    kanji: "蔵",
    keyword: "storehouse/hide",
    reading: "くら / おさ.める / かく.れる / ゾウ / ソウ",
    radical: "蔵",
    componentHint: "classical radical 140",
    examples: [
      {word: "武蔵", reading: "むさし", meaning: "Musashi; historical region consisting of modern Tokyo, Saitama and eastern Kanagawa prefectures"},
      {word: "冷蔵庫", reading: "れいぞうこ", meaning: "refrigerator"},
      {word: "土蔵", reading: "どぞう", meaning: "storehouse with thick (earthen) walls; godown"}
    ],
  },
  {
    kanji: "倉",
    keyword: "godown/warehouse",
    reading: "くら / ソウ",
    radical: "倉",
    componentHint: "classical radical 9",
    examples: [
      {word: "倉庫", reading: "そうこ", meaning: "storehouse; warehouse"},
      {word: "弾倉", reading: "だんそう", meaning: "magazine (of a firearm)"},
      {word: "岩倉", reading: "やぐら", meaning: "caves dug as tombs in and around Kamakura during the Kamakura and Muromachi periods"}
    ],
  },
  {
    kanji: "創",
    keyword: "genesis/wound",
    reading: "つく.る / はじ.める / きず / けず.しける / ソウ / ショウ",
    radical: "創",
    componentHint: "classical radical 18",
    examples: [
      {word: "創造", reading: "そうぞう", meaning: "creation"},
      {word: "創作", reading: "そうさく", meaning: "production; literary creation"},
      {word: "創る", reading: "つくる", meaning: "to make; to produce"}
    ],
  },
  {
    kanji: "告",
    keyword: "revelation/tell",
    reading: "つ.げる / コク",
    radical: "告",
    componentHint: "classical radical 30",
    examples: [
      {word: "報告", reading: "ほうこく", meaning: "report; information"},
      {word: "告げる", reading: "つげる", meaning: "to tell; to inform"},
      {word: "告白", reading: "こくはく", meaning: "confession; acknowledgement"}
    ],
  },
  {
    kanji: "造",
    keyword: "create/make",
    reading: "つく.る / つく.り / -づく.り / ゾウ",
    radical: "造",
    componentHint: "classical radical 162",
    examples: [
      {word: "構造", reading: "こうぞう", meaning: "structure; construction"},
      {word: "造る", reading: "つくる", meaning: "to make; to produce"},
      {word: "創造", reading: "そうぞう", meaning: "creation"}
    ],
  },
  {
    kanji: "衣",
    keyword: "garment/clothes",
    reading: "ころも / きぬ / -ぎ / イ / エ",
    radical: "衣",
    componentHint: "classical radical 145",
    examples: [
      {word: "衣服", reading: "いふく", meaning: "clothes"},
      {word: "衣装", reading: "いしょう", meaning: "clothing; costume"},
      {word: "衣裳", reading: "いしょう", meaning: "clothing; costume"}
    ],
  },
  {
    kanji: "依",
    keyword: "reliant/depend on",
    reading: "よ.る / イ / エ",
    radical: "依",
    componentHint: "classical radical 9",
    examples: [
      {word: "依頼", reading: "いらい", meaning: "request; commission"},
      {word: "依る", reading: "よる", meaning: "to be due to; to be caused by"},
      {word: "依然として", reading: "いぜんとして", meaning: "still; as yet"}
    ],
  },
  {
    kanji: "袋",
    keyword: "sack/bag",
    reading: "ふくろ / タイ / ダイ",
    radical: "袋",
    componentHint: "classical radical 145",
    examples: [
      {word: "手袋", reading: "てぶくろ", meaning: "glove; mitten"},
      {word: "紙袋", reading: "かみぶくろ", meaning: "paper bag"},
      {word: "お袋", reading: "おふくろ", meaning: "one's mother"}
    ],
  },
  {
    kanji: "褒",
    keyword: "praise/extol",
    reading: "ほ.める / ホウ",
    radical: "褒",
    componentHint: "classical radical 145",
    examples: [
      {word: "褒める", reading: "ほめる", meaning: "to praise; to admire"},
      {word: "褒美", reading: "ほうび", meaning: "reward; prize"},
      {word: "褒賞", reading: "ほうしょう", meaning: "medal (of merit); prize"}
    ],
  },
  {
    kanji: "裏",
    keyword: "back/amidst",
    reading: "うら / リ",
    radical: "裏",
    componentHint: "classical radical 145",
    examples: [
      {word: "裏切る", reading: "うらぎる", meaning: "to betray; to turn traitor to"},
      {word: "脳裏", reading: "のうり", meaning: "one's mind"},
      {word: "裏口", reading: "うらぐち", meaning: "backdoor; rear entrance"}
    ],
  },
  {
    kanji: "表",
    keyword: "surface/table",
    reading: "おもて / -おもて / あらわ.す / あらわ.れる / ヒョウ",
    radical: "表",
    componentHint: "classical radical 145",
    examples: [
      {word: "表情", reading: "ひょうじょう", meaning: "facial expression; countenance"},
      {word: "表現", reading: "ひょうげん", meaning: "expression; presentation"},
      {word: "発表", reading: "はっぴょう", meaning: "announcement; publication"}
    ],
  },
  {
    kanji: "現",
    keyword: "present/existing",
    reading: "あらわ.れる / あらわ.す / うつつ / うつ.つ / ゲン",
    radical: "現",
    componentHint: "classical radical 96",
    examples: [
      {word: "現在", reading: "げんざい", meaning: "now; current"},
      {word: "現実", reading: "げんじつ", meaning: "reality"},
      {word: "現れる", reading: "あらわれる", meaning: "to appear; to come in sight"}
    ],
  },
  {
    kanji: "著",
    keyword: "renowned/publish",
    reading: "あらわ.す / いちじる.しい / チョ / チャク",
    radical: "著",
    componentHint: "classical radical 140",
    examples: [
      {word: "著者", reading: "ちょしゃ", meaning: "author (usu. of a particular book); writer"},
      {word: "著作", reading: "ちょさく", meaning: "writing; book"},
      {word: "著しい", reading: "いちじるしい", meaning: "striking; remarkable"}
    ],
  },
  {
    kanji: "制",
    keyword: "system/law",
    reading: "セイ",
    radical: "制",
    componentHint: "classical radical 18",
    examples: [
      {word: "制服", reading: "せいふく", meaning: "uniform"},
      {word: "制御", reading: "せいぎょ", meaning: "control; governing"},
      {word: "制度", reading: "せいど", meaning: "system; institution"}
    ],
  },
  {
    kanji: "製",
    keyword: "made in.../manufacture",
    reading: "セイ",
    radical: "製",
    componentHint: "classical radical 145",
    examples: [
      {word: "製造", reading: "せいぞう", meaning: "manufacture; production"},
      {word: "製品", reading: "せいひん", meaning: "manufactured goods; finished goods"},
      {word: "製作", reading: "せいさく", meaning: "manufacture; production"}
    ],
  },
  {
    kanji: "初",
    keyword: "first time/beginning",
    reading: "はじ.め / はじ.めて / はつ / はつ- / ショ",
    radical: "初",
    componentHint: "classical radical 18",
    examples: [
      {word: "最初", reading: "さいしょ", meaning: "beginning; outset"},
      {word: "初めて", reading: "はじめて", meaning: "for the first time; only after ... is it ..."},
      {word: "初め", reading: "はじめ", meaning: "beginning; start"}
    ],
  },
  {
    kanji: "裸",
    keyword: "naked/nude",
    reading: "はだか / ラ",
    radical: "裸",
    componentHint: "classical radical 145",
    examples: [
      {word: "全裸", reading: "ぜんら", meaning: "nude"},
      {word: "裸体", reading: "らたい", meaning: "naked body; nudity"},
      {word: "裸足", reading: "はだし", meaning: "barefoot; superior to (a professional, etc. in ability or achievement)"}
    ],
  },
  {
    kanji: "難",
    keyword: "difficult/impossible",
    reading: "かた.い / -がた.い / むずか.しい / むづか.しい / ナン",
    radical: "難",
    componentHint: "classical radical 172",
    examples: [
      {word: "難しい", reading: "むずかしい", meaning: "difficult; hard"},
      {word: "困難", reading: "こんなん", meaning: "difficulty; distress"},
      {word: "非難", reading: "ひなん", meaning: "criticism; blame"}
    ],
  },
  {
    kanji: "准",
    keyword: "quasi-/semi-",
    reading: "ジュン",
    radical: "准",
    componentHint: "classical radical 15",
    examples: [
      {word: "准尉", reading: "じゅんい", meaning: "warrant officer"},
      {word: "批准", reading: "ひじゅん", meaning: "ratification; ratify"},
      {word: "准じる", reading: "じゅんじる", meaning: "to follow; to conform"}
    ],
  },
  {
    kanji: "準",
    keyword: "semi-/correspond to",
    reading: "じゅん.じる / じゅん.ずる / なぞら.える / のり / ジュン",
    radical: "準",
    componentHint: "classical radical 85",
    examples: [
      {word: "準備", reading: "じゅんび", meaning: "preparation; setup"},
      {word: "基準", reading: "きじゅん", meaning: "standard; basis"},
      {word: "標準", reading: "ひょうじゅん", meaning: "standard; level"}
    ],
  },
  {
    kanji: "備",
    keyword: "equip/provision",
    reading: "そな.える / そな.わる / つぶさ.に / ビ",
    radical: "備",
    componentHint: "classical radical 9",
    examples: [
      {word: "準備", reading: "じゅんび", meaning: "preparation; setup"},
      {word: "警備", reading: "けいび", meaning: "defense; defence"},
      {word: "備える", reading: "そなえる", meaning: "to furnish; to provide for"}
    ],
  },
  {
    kanji: "死",
    keyword: "death/die",
    reading: "し.ぬ / し.に- / シ",
    radical: "死",
    componentHint: "classical radical 78",
    examples: [
      {word: "死ぬ", reading: "しぬ", meaning: "to die; to pass away"},
      {word: "死体", reading: "したい", meaning: "dead body; corpse"},
      {word: "必死", reading: "ひっし", meaning: "frantic; desperate"}
    ],
  },
  {
    kanji: "葬",
    keyword: "interment/bury",
    reading: "ほうむ.る / ソウ",
    radical: "葬",
    componentHint: "classical radical 140",
    examples: [
      {word: "葬式", reading: "そうしき", meaning: "funeral"},
      {word: "葬儀", reading: "そうぎ", meaning: "funeral service"},
      {word: "葬る", reading: "ほうむる", meaning: "to bury; to inter"}
    ],
  },
  {
    kanji: "列",
    keyword: "file/row",
    reading: "レツ / レ",
    radical: "列",
    componentHint: "classical radical 18",
    examples: [
      {word: "列車", reading: "れっしゃ", meaning: "train (ordinary)"},
      {word: "行列", reading: "ぎょうれつ", meaning: "line; queue"},
      {word: "陳列", reading: "ちんれつ", meaning: "exhibition; display"}
    ],
  },
  {
    kanji: "烈",
    keyword: "ardent/violent",
    reading: "はげ.しい / レツ",
    radical: "烈",
    componentHint: "classical radical 86",
    examples: [
      {word: "強烈", reading: "きょうれつ", meaning: "strong; intense"},
      {word: "猛烈", reading: "もうれつ", meaning: "violent; vehement"},
      {word: "烈しい", reading: "はげしい", meaning: "violent; furious"}
    ],
  },
  {
    kanji: "裂",
    keyword: "split/rend",
    reading: "さ.く / さ.ける / -ぎ.れ / レツ",
    radical: "裂",
    componentHint: "classical radical 145",
    examples: [
      {word: "裂く", reading: "さく", meaning: "to tear; to rip up"},
      {word: "裂ける", reading: "さける", meaning: "to split; to tear"},
      {word: "引き裂く", reading: "ひきさく", meaning: "to tear up; to tear off"}
    ],
  },
  {
    kanji: "例",
    keyword: "example/custom",
    reading: "たと.える / レイ",
    radical: "例",
    componentHint: "classical radical 9",
    examples: [
      {word: "例えば", reading: "たとえば", meaning: "for example; e.g."},
      {word: "例外", reading: "れいがい", meaning: "exception"},
      {word: "例える", reading: "たとえる", meaning: "to compare; to liken"}
    ],
  },
  {
    kanji: "刑",
    keyword: "punish/penalty",
    reading: "ケイ",
    radical: "刑",
    componentHint: "classical radical 18",
    examples: [
      {word: "刑事", reading: "けいじ", meaning: "(police) detective; criminal matter"},
      {word: "死刑", reading: "しけい", meaning: "death penalty; capital punishment"},
      {word: "処刑", reading: "しょけい", meaning: "execution"}
    ],
  },
  {
    kanji: "型",
    keyword: "mould/type",
    reading: "かた / -がた / ケイ",
    radical: "型",
    componentHint: "classical radical 32",
    examples: [
      {word: "大型", reading: "おおがた", meaning: "large; large scale"},
      {word: "小型", reading: "こがた", meaning: "small size; tiny"},
      {word: "典型", reading: "てんけい", meaning: "type; pattern"}
    ],
  },
  {
    kanji: "研",
    keyword: "polish/study of",
    reading: "と.ぐ / ケン",
    radical: "研",
    componentHint: "classical radical 112",
    examples: [
      {word: "研究", reading: "けんきゅう", meaning: "study; research"},
      {word: "研究所", reading: "けんきゅうじょ", meaning: "research establishment; research institute"},
      {word: "研修", reading: "けんしゅう", meaning: "training (esp. in-service); induction course"}
    ],
  },
  {
    kanji: "厄",
    keyword: "unlucky/misfortune",
    reading: "ヤク",
    radical: "厄",
    componentHint: "classical radical 27",
    examples: [
      {word: "厄介", reading: "やっかい", meaning: "trouble; burden"},
      {word: "災厄", reading: "さいやく", meaning: "calamity; disaster"},
      {word: "厄年", reading: "やくどし", meaning: "unlucky year; critical age"}
    ],
  },
  {
    kanji: "危",
    keyword: "dangerous/fear",
    reading: "あぶ.ない / あや.うい / あや.ぶむ / キ",
    radical: "危",
    componentHint: "classical radical 26",
    examples: [
      {word: "危険", reading: "きけん", meaning: "danger; peril"},
      {word: "危ない", reading: "あぶない", meaning: "dangerous; risky"},
      {word: "危機", reading: "きき", meaning: "crisis; danger"}
    ],
  },
  {
    kanji: "範",
    keyword: "pattern/example",
    reading: "ハン",
    radical: "範",
    componentHint: "classical radical 118",
    examples: [
      {word: "範囲", reading: "はんい", meaning: "extent; scope"},
      {word: "師範", reading: "しはん", meaning: "instructor; (fencing) teacher"},
      {word: "模範", reading: "もはん", meaning: "exemplar; exemplification"}
    ],
  },
  {
    kanji: "怨",
    keyword: "grudge/show resentment",
    reading: "うら.む / うらみ / うら.めしい / エン / オン / ウン",
    radical: "怨",
    componentHint: "classical radical 61",
    examples: [
      {word: "怨霊", reading: "おんりょう", meaning: "revengeful ghost; apparition"},
      {word: "怨み", reading: "うらみ", meaning: "resentment; grudge"},
      {word: "怨む", reading: "うらむ", meaning: "to resent; to curse"}
    ],
  },
  {
    kanji: "苑",
    keyword: "garden/farm",
    reading: "その / う.つ / エン / オン",
    radical: "苑",
    componentHint: "classical radical 140",
    examples: [
      {word: "紫苑", reading: "しおん", meaning: "Tartarian aster (Aster tataricus)"},
      {word: "御苑", reading: "ぎょえん", meaning: "imperial garden"},
      {word: "外苑", reading: "がいえん", meaning: "outer garden"}
    ],
  },
  {
    kanji: "宛",
    keyword: "address/just like",
    reading: "あ.てる / -あて / -づつ / あたか.も / エン",
    radical: "宛",
    componentHint: "classical radical 40",
    examples: [
      {word: "宛てる", reading: "あてる", meaning: "to address"},
      {word: "宛名", reading: "あてな", meaning: "(addressee's) name; (recipient's) name and address"},
      {word: "宛て", reading: "あて", meaning: "aim; object"}
    ],
  },
  {
    kanji: "碗",
    keyword: "porcelain bowl/tea cup",
    reading: "こばち / ワン",
    radical: "碗",
    componentHint: "classical radical 112",
    examples: [
      {word: "茶碗", reading: "ちゃわん", meaning: "rice bowl; tea cup"},
      {word: "お碗", reading: "おわん", meaning: "bowl"},
      {word: "湯飲み茶碗", reading: "ゆのみぢゃわん", meaning: "teacup"}
    ],
  },
  {
    kanji: "腕",
    keyword: "arm/ability",
    reading: "うで / ワン",
    radical: "腕",
    componentHint: "classical radical 130",
    examples: [
      {word: "腕時計", reading: "うでどけい", meaning: "wristwatch"},
      {word: "右腕", reading: "うわん", meaning: "right arm; right-hand man"},
      {word: "左腕", reading: "さわん", meaning: "left arm; left-handed (baseball pitcher)"}
    ],
  },
  {
    kanji: "却",
    keyword: "instead/on the contrary",
    reading: "かえ.って / しりぞ.く / しりぞ.ける / キャク",
    radical: "却",
    componentHint: "classical radical 26",
    examples: [
      {word: "却って", reading: "かえって", meaning: "on the contrary; rather"},
      {word: "退却", reading: "たいきゃく", meaning: "retreat; withdrawal"},
      {word: "忘却", reading: "ぼうきゃく", meaning: "lapse of memory; forgetfulness"}
    ],
  },
  {
    kanji: "脚",
    keyword: "skids/leg",
    reading: "あし / キャク / キャ / カク",
    radical: "脚",
    componentHint: "classical radical 130",
    examples: [
      {word: "両脚", reading: "りょうきゃく", meaning: "both legs"},
      {word: "脚本", reading: "きゃくほん", meaning: "script; screenplay"},
      {word: "失脚", reading: "しっきゃく", meaning: "losing one's standing; being overthrown"}
    ],
  },
  {
    kanji: "犯",
    keyword: "crime/sin",
    reading: "おか.す / ハン / ボン",
    radical: "犯",
    componentHint: "classical radical 94",
    examples: [
      {word: "犯人", reading: "はんにん", meaning: "offender; criminal"},
      {word: "犯罪", reading: "はんざい", meaning: "crime; offence"},
      {word: "犯す", reading: "おかす", meaning: "to commit (e.g. crime); to perpetrate"}
    ],
  },
  {
    kanji: "狂",
    keyword: "lunatic/insane",
    reading: "くる.う / くる.おしい / くるお.しい / キョウ",
    radical: "狂",
    componentHint: "classical radical 94",
    examples: [
      {word: "狂う", reading: "くるう", meaning: "to go mad; to get out of order"},
      {word: "狂気", reading: "きょうき", meaning: "madness; insanity"},
      {word: "狂人", reading: "きょうじん", meaning: "lunatic; madman"}
    ],
  },
  {
    kanji: "獄",
    keyword: "prison/jail",
    reading: "ゴク",
    radical: "獄",
    componentHint: "classical radical 94",
    examples: [
      {word: "地獄", reading: "じごく", meaning: "hell"},
      {word: "監獄", reading: "かんごく", meaning: "prison"},
      {word: "牢獄", reading: "ろうごく", meaning: "prison; jail"}
    ],
  },
  {
    kanji: "非",
    keyword: "un-/mistake",
    reading: "あら.ず / ヒ",
    radical: "非",
    componentHint: "classical radical 175",
    examples: [
      {word: "非常", reading: "ひじょう", meaning: "emergency; extraordinary"},
      {word: "非難", reading: "ひなん", meaning: "criticism; blame"},
      {word: "是非", reading: "ぜひ", meaning: "certainly; without fail"}
    ],
  },
  {
    kanji: "排",
    keyword: "repudiate/exclude",
    reading: "ハイ",
    radical: "排",
    componentHint: "classical radical 64",
    examples: [
      {word: "排除", reading: "はいじょ", meaning: "exclusion; removal"},
      {word: "排気", reading: "はいき", meaning: "exhaust; ventilation"},
      {word: "排水", reading: "はいすい", meaning: "drainage"}
    ],
  },
  {
    kanji: "俳",
    keyword: "haiku/actor",
    reading: "ハイ",
    radical: "俳",
    componentHint: "classical radical 9",
    examples: [
      {word: "俳優", reading: "はいゆう", meaning: "actor; actress"},
      {word: "俳句", reading: "はいく", meaning: "haiku; 17-mora poem, usu. in 3 lines of 5, 7 and 5 morae"},
      {word: "俳諧", reading: "はいかい", meaning: "haikai; collective name for haiku, haibun, haiga, senryū, etc."}
    ],
  },
  {
    kanji: "罪",
    keyword: "guilt/sin",
    reading: "つみ / ザイ",
    radical: "罪",
    componentHint: "classical radical 122",
    examples: [
      {word: "犯罪", reading: "はんざい", meaning: "crime; offence"},
      {word: "罪人", reading: "ざいにん", meaning: "criminal; lawbreaker"},
      {word: "罪悪", reading: "ざいあく", meaning: "crime; sin"}
    ],
  },
  {
    kanji: "罰",
    keyword: "penalty/punishment",
    reading: "ばっ.する / バツ / バチ / ハツ",
    radical: "罰",
    componentHint: "classical radical 122",
    examples: [
      {word: "処罰", reading: "しょばつ", meaning: "punishment"},
      {word: "罰する", reading: "ばっする", meaning: "to punish; to penalize"},
      {word: "刑罰", reading: "けいばつ", meaning: "judgement; judgment"}
    ],
  },
  {
    kanji: "伴",
    keyword: "consort/accompany",
    reading: "ともな.う / ハン / バン",
    radical: "伴",
    componentHint: "classical radical 9",
    examples: [
      {word: "伴う", reading: "ともなう", meaning: "to accompany; to bring with"},
      {word: "同伴", reading: "どうはん", meaning: "to accompany; to go with"},
      {word: "伴奏", reading: "ばんそう", meaning: "(musical) accompaniment"}
    ],
  },
  {
    kanji: "判",
    keyword: "judgement/signature",
    reading: "わか.る / ハン / バン",
    radical: "判",
    componentHint: "classical radical 18",
    examples: [
      {word: "判断", reading: "はんだん", meaning: "judgment; judgement"},
      {word: "判る", reading: "わかる", meaning: "to understand; to comprehend"},
      {word: "判事", reading: "はんじ", meaning: "judge; judiciary"}
    ],
  },
  {
    kanji: "評",
    keyword: "evaluate/criticism",
    reading: "ヒョウ",
    radical: "評",
    componentHint: "classical radical 149",
    examples: [
      {word: "評判", reading: "ひょうばん", meaning: "fame; reputation"},
      {word: "評価", reading: "ひょうか", meaning: "valuation; estimation"},
      {word: "批評", reading: "ひひょう", meaning: "criticism; review"}
    ],
  },
  {
    kanji: "批",
    keyword: "criticism/strike",
    reading: "ヒ",
    radical: "批",
    componentHint: "classical radical 64",
    examples: [
      {word: "批判", reading: "ひはん", meaning: "criticism; judgement"},
      {word: "批評", reading: "ひひょう", meaning: "criticism; review"},
      {word: "批難", reading: "ひなん", meaning: "criticism; blame"}
    ],
  },
  {
    kanji: "帥",
    keyword: "commander/leading troops",
    reading: "スイ",
    radical: "帥",
    componentHint: "classical radical 50",
    examples: [
      {word: "元帥", reading: "げんすい", meaning: "(field) marshal; (fleet) admiral"},
      {word: "統帥", reading: "とうすい", meaning: "supreme command; high command"},
      {word: "総帥", reading: "そうすい", meaning: "commander-in-chief; leader"}
    ],
  },
  {
    kanji: "師",
    keyword: "expert/teacher",
    reading: "いくさ / シ",
    radical: "師",
    componentHint: "classical radical 50",
    examples: [
      {word: "医師", reading: "いし", meaning: "doctor; physician"},
      {word: "教師", reading: "きょうし", meaning: "teacher (classroom)"},
      {word: "師匠", reading: "ししょう", meaning: "master; teacher"}
    ],
  },
  {
    kanji: "座",
    keyword: "squat/seat",
    reading: "すわ.る / ザ",
    radical: "座",
    componentHint: "classical radical 53",
    examples: [
      {word: "座る", reading: "すわる", meaning: "to sit; to squat"},
      {word: "座敷", reading: "ざしき", meaning: "tatami room; tatami mat room"},
      {word: "座席", reading: "ざせき", meaning: "seat"}
    ],
  },
  {
    kanji: "坐",
    keyword: "sit",
    reading: "すわ.る / おわす / そぞろに / まします / ザ / サ",
    radical: "坐",
    componentHint: "classical radical 32",
    examples: [
      {word: "坐る", reading: "すわる", meaning: "to sit; to squat"},
      {word: "坐り", reading: "すわり", meaning: "sitting; stability"},
      {word: "坐す", reading: "ざす", meaning: "to sit; to squat"}
    ],
  },
  {
    kanji: "卒",
    keyword: "graduate/soldier",
    reading: "そっ.する / お.える / お.わる / ついに / ソツ / シュツ",
    radical: "卒",
    componentHint: "classical radical 24",
    examples: [
      {word: "卒業", reading: "そつぎょう", meaning: "graduation; completion (e.g. of a course)"},
      {word: "何卒", reading: "なにとぞ", meaning: "please; kindly"},
      {word: "兵卒", reading: "へいそつ", meaning: "private (soldier); (common) soldier"}
    ],
  },
  {
    kanji: "率",
    keyword: "ratio/rate",
    reading: "ひき.いる / ソツ / リツ / シュツ",
    radical: "率",
    componentHint: "classical radical 95",
    examples: [
      {word: "率いる", reading: "ひきいる", meaning: "to lead; to spearhead (a group)"},
      {word: "率直", reading: "そっちょく", meaning: "frankness; candour"},
      {word: "確率", reading: "かくりつ", meaning: "probability; likelihood"}
    ],
  },
  {
    kanji: "傘",
    keyword: "umbrella",
    reading: "かさ / サン",
    radical: "傘",
    componentHint: "classical radical 9",
    examples: [
      {word: "日傘", reading: "ひがさ", meaning: "sunshade; parasol"},
      {word: "傘下", reading: "さんか", meaning: "affiliated with; under jurisdiction of"},
      {word: "洋傘", reading: "ようがさ", meaning: "(Western-style) umbrella; parasol"}
    ],
  },
  {
    kanji: "笠",
    keyword: "bamboo hat/one's influence",
    reading: "かさ / リュウ",
    radical: "笠",
    componentHint: "classical radical 118",
    examples: [
      {word: "編笠", reading: "あみがさ", meaning: "braided hat"},
      {word: "菅笠", reading: "すげがさ", meaning: "sedge-woven (bamboo) hat"},
      {word: "陣笠", reading: "じんがさ", meaning: "ancient soldier's hat; common soldier"}
    ],
  },
  {
    kanji: "星",
    keyword: "star/spot",
    reading: "ほし / -ぼし / セイ / ショウ",
    radical: "星",
    componentHint: "classical radical 72",
    examples: [
      {word: "惑星", reading: "わくせい", meaning: "planet"},
      {word: "火星", reading: "かせい", meaning: "Mars (planet)"},
      {word: "衛星", reading: "えいせい", meaning: "satellite"}
    ],
  },
  {
    kanji: "汁",
    keyword: "soup/juice",
    reading: "しる / -しる / つゆ / ジュウ",
    radical: "汁",
    componentHint: "classical radical 85",
    examples: [
      {word: "味噌汁", reading: "みそしる", meaning: "miso soup"},
      {word: "汁粉", reading: "しるこ", meaning: "sweet red-bean soup"},
      {word: "果汁", reading: "かじゅう", meaning: "fruit juice"}
    ],
  },
  {
    kanji: "斗",
    keyword: "Big Dipper/ten sho (vol)",
    reading: "ト / トウ",
    radical: "斗",
    componentHint: "classical radical 68",
    examples: [
      {word: "抽斗", reading: "ひきだし", meaning: "drawer; withdrawal"},
      {word: "漏斗", reading: "ろうと", meaning: "funnel"},
      {word: "北斗", reading: "ほくと", meaning: "the Big Dipper (asterism); the Plough"}
    ],
  },
  {
    kanji: "料",
    keyword: "fee/materials",
    reading: "リョウ",
    radical: "料",
    componentHint: "classical radical 68",
    examples: [
      {word: "料理", reading: "りょうり", meaning: "cooking; cookery"},
      {word: "資料", reading: "しりょう", meaning: "materials; data"},
      {word: "材料", reading: "ざいりょう", meaning: "ingredients; material"}
    ],
  },
  {
    kanji: "科",
    keyword: "department/course",
    reading: "カ",
    radical: "科",
    componentHint: "classical radical 115",
    examples: [
      {word: "科学", reading: "かがく", meaning: "science"},
      {word: "教科書", reading: "きょうかしょ", meaning: "textbook; text book"},
      {word: "理科", reading: "りか", meaning: "science"}
    ],
  },
  {
    kanji: "然",
    keyword: "sort of thing/so",
    reading: "しか / しか.り / しか.し / さ / ゼン / ネン",
    radical: "然",
    componentHint: "classical radical 86",
    examples: [
      {word: "当然", reading: "とうぜん", meaning: "natural; as a matter of course"},
      {word: "突然", reading: "とつぜん", meaning: "abrupt; sudden"},
      {word: "自然", reading: "しぜん", meaning: "nature; spontaneity"}
    ],
  },
  {
    kanji: "燃",
    keyword: "burn/blaze",
    reading: "も.える / も.やす / も.す / ネン",
    radical: "燃",
    componentHint: "classical radical 86",
    examples: [
      {word: "燃える", reading: "もえる", meaning: "to burn; to get fired up"},
      {word: "燃やす", reading: "もやす", meaning: "to burn"},
      {word: "燃料", reading: "ねんりょう", meaning: "fuel"}
    ],
  },
  {
    kanji: "黙",
    keyword: "silence/become silent",
    reading: "だま.る / もだ.す / モク / ボク",
    radical: "黙",
    componentHint: "classical radical 203",
    examples: [
      {word: "黙る", reading: "だまる", meaning: "to be silent"},
      {word: "沈黙", reading: "ちんもく", meaning: "silence; being silent"},
      {word: "黙り込む", reading: "だまりこむ", meaning: "to say no more; to sink into silence"}
    ],
  },
  {
    kanji: "獣",
    keyword: "animal/beast",
    reading: "けもの / けだもの / ジュウ",
    radical: "獣",
    componentHint: "classical radical 94",
    examples: [
      {word: "野獣", reading: "やじゅう", meaning: "beast; monster"},
      {word: "猛獣", reading: "もうじゅう", meaning: "wild animal; beast of prey"},
      {word: "怪獣", reading: "かいじゅう", meaning: "monster"}
    ],
  },
  {
    kanji: "猟",
    keyword: "game-hunting/shooting",
    reading: "かり / か.る / リョウ / レフ",
    radical: "猟",
    componentHint: "classical radical 94",
    examples: [
      {word: "狩猟", reading: "しゅりょう", meaning: "hunting"},
      {word: "猟師", reading: "りょうし", meaning: "hunter; huntsman"},
      {word: "猟犬", reading: "りょうけん", meaning: "hound; hunting dog"}
    ],
  },
  {
    kanji: "漁",
    keyword: "fishing/fishery",
    reading: "あさ.る / ギョ / リョウ",
    radical: "漁",
    componentHint: "classical radical 85",
    examples: [
      {word: "漁師", reading: "りょうし", meaning: "fisherman"},
      {word: "漁船", reading: "ぎょせん", meaning: "fishing boat"},
      {word: "漁る", reading: "あさる", meaning: "to fish; to look for"}
    ],
  },
  {
    kanji: "狩",
    keyword: "hunt/raid",
    reading: "か.る / か.り / -が.り / シュ",
    radical: "狩",
    componentHint: "classical radical 94",
    examples: [
      {word: "狩り", reading: "かり", meaning: "hunting"},
      {word: "狩猟", reading: "しゅりょう", meaning: "hunting"},
      {word: "狩る", reading: "かる", meaning: "to hunt (e.g. animals); to go looking for (e.g. flowers, etc.)"}
    ],
  },
  {
    kanji: "猛",
    keyword: "fierce/rave",
    reading: "モウ",
    radical: "猛",
    componentHint: "classical radical 94",
    examples: [
      {word: "猛烈", reading: "もうれつ", meaning: "violent; vehement"},
      {word: "猛獣", reading: "もうじゅう", meaning: "wild animal; beast of prey"},
      {word: "獰猛", reading: "どうもう", meaning: "ferocity; truculence"}
    ],
  },
  {
    kanji: "煙",
    keyword: "smoke",
    reading: "けむ.る / けむり / けむ.い / エン",
    radical: "煙",
    componentHint: "classical radical 86",
    examples: [
      {word: "煙草", reading: "たばこ", meaning: "tobacco; cigarette"},
      {word: "煙突", reading: "えんとつ", meaning: "chimney; smokestack"},
      {word: "煙管", reading: "えんかん", meaning: "kiseru; Japanese smoking pipe"}
    ],
  },
  {
    kanji: "焼",
    keyword: "bake/burning",
    reading: "や.く / や.き / や.き- / -や.き / ショウ",
    radical: "焼",
    componentHint: "classical radical 86",
    examples: [
      {word: "焼く", reading: "やく", meaning: "to burn; to roast"},
      {word: "焼ける", reading: "やける", meaning: "to burn; to be roasted"},
      {word: "焼き", reading: "やき", meaning: "cooking, esp. frying or stir-frying; heating"}
    ],
  },
  {
    kanji: "暁",
    keyword: "daybreak/dawn",
    reading: "あかつき / さと.る / ギョウ / キョウ",
    radical: "暁",
    componentHint: "classical radical 72",
    examples: [
      {word: "払暁", reading: "ふつぎょう", meaning: "dawn; daybreak"},
      {word: "通暁", reading: "つうぎょう", meaning: "well versed; thorough knowledge"},
      {word: "早暁", reading: "そうぎょう", meaning: "daybreak; dawn"}
    ],
  },
  {
    kanji: "旧",
    keyword: "old times/old things",
    reading: "ふる.い / もと / キュウ",
    radical: "旧",
    componentHint: "classical radical 72",
    examples: [
      {word: "旧式", reading: "きゅうしき", meaning: "old type; old style"},
      {word: "旧友", reading: "きゅうゆう", meaning: "crony; old friend"},
      {word: "旧い", reading: "ふるい", meaning: "old (not person); aged"}
    ],
  },
  {
    kanji: "児",
    keyword: "newborn babe/child",
    reading: "こ / -こ / -っこ / ジ / ニ / ゲイ",
    radical: "児",
    componentHint: "classical radical 10",
    examples: [
      {word: "幼児", reading: "ようじ", meaning: "infant; baby"},
      {word: "孤児", reading: "こじ", meaning: "orphan"},
      {word: "胎児", reading: "たいじ", meaning: "fetus; foetus"}
    ],
  },
  {
    kanji: "亦",
    keyword: "also/again",
    reading: "また / エキ / ヤク",
    radical: "亦",
    componentHint: "classical radical 8",
    examples: [
      {word: "吾亦紅", reading: "われもこう", meaning: "burnet"},
      {word: "私も亦", reading: "わたしもまた", meaning: "me too; I also"},
      {word: "如露亦如電", reading: "にょろやくにょでん", meaning: "like dew or lightning, gone in a flash"}
    ],
  },
  {
    kanji: "赤",
    keyword: "red",
    reading: "あか / あか- / あか.い / あか.らむ / セキ / シャク",
    radical: "赤",
    componentHint: "classical radical 155",
    examples: [
      {word: "赤い", reading: "あかい", meaning: "red; Red (i.e. communist)"},
      {word: "赤ん坊", reading: "あかんぼう", meaning: "baby; infant"},
      {word: "真っ赤", reading: "まっか", meaning: "bright red; deep red"}
    ],
  },
  {
    kanji: "変",
    keyword: "unusual/change",
    reading: "か.わる / か.わり / か.える / ヘン",
    radical: "変",
    componentHint: "classical radical 34",
    examples: [
      {word: "変わる", reading: "かわる", meaning: "to change; to be transformed"},
      {word: "変える", reading: "かえる", meaning: "to change; to alter"},
      {word: "大変", reading: "たいへん", meaning: "very; greatly"}
    ],
  },
  {
    kanji: "蛮",
    keyword: "barbarian",
    reading: "えびす / バン",
    radical: "蛮",
    componentHint: "classical radical 142",
    examples: [
      {word: "野蛮", reading: "やばん", meaning: "savage; uncivilized"},
      {word: "蛮族", reading: "ばんぞく", meaning: "savage tribe"},
      {word: "蛮人", reading: "ばんじん", meaning: "savage; barbarian"}
    ],
  },
  {
    kanji: "恋",
    keyword: "romance/in love",
    reading: "こ.う / こい / こい.しい / レン",
    radical: "恋",
    componentHint: "classical radical 61",
    examples: [
      {word: "恋人", reading: "こいびと", meaning: "lover; sweetheart"},
      {word: "恋愛", reading: "れんあい", meaning: "love; love-making"},
      {word: "恋しい", reading: "こいしい", meaning: "yearned for; longed for"}
    ],
  },
  {
    kanji: "愛",
    keyword: "love/affection",
    reading: "いと.しい / かな.しい / め.でる / お.しむ / アイ",
    radical: "愛",
    componentHint: "classical radical 61",
    examples: [
      {word: "愛す", reading: "あいす", meaning: "to love"},
      {word: "可愛い", reading: "かわいい", meaning: "cute; adorable"},
      {word: "愛情", reading: "あいじょう", meaning: "love; affection"}
    ],
  },
  {
    kanji: "憂",
    keyword: "melancholy/grieve",
    reading: "うれ.える / うれ.い / う.い / う.き / ユウ",
    radical: "憂",
    componentHint: "classical radical 61",
    examples: [
      {word: "憂鬱", reading: "ゆううつ", meaning: "depression; melancholy"},
      {word: "物憂い", reading: "ものうい", meaning: "languid; weary"},
      {word: "憂慮", reading: "ゆうりょ", meaning: "anxiety; concern"}
    ],
  },
  {
    kanji: "優",
    keyword: "tenderness/excel",
    reading: "やさ.しい / すぐ.れる / まさ.る / ユウ / ウ",
    radical: "優",
    componentHint: "classical radical 9",
    examples: [
      {word: "優しい", reading: "やさしい", meaning: "tender; kind"},
      {word: "女優", reading: "じょゆう", meaning: "actress"},
      {word: "優秀", reading: "ゆうしゅう", meaning: "superiority; excellence"}
    ],
  },
  {
    kanji: "栗",
    keyword: "chestnut",
    reading: "くり / おののく / リツ / リ",
    radical: "栗",
    componentHint: "classical radical 75",
    examples: [
      {word: "栗色", reading: "くりいろ", meaning: "chestnut-color; chestnut-colour"},
      {word: "栗毛", reading: "くりげ", meaning: "chestnut (horse coat color)"},
      {word: "栗鼠", reading: "りす", meaning: "squirrel (excluding flying squirrels); Japanese squirrel (Sciurus lis)"}
    ],
  },
  {
    kanji: "票",
    keyword: "ballot/label",
    reading: "ヒョウ",
    radical: "票",
    componentHint: "classical radical 113",
    examples: [
      {word: "投票", reading: "とうひょう", meaning: "voting; poll"},
      {word: "伝票", reading: "でんぴょう", meaning: "chit; sales slip"},
      {word: "開票", reading: "かいひょう", meaning: "counting ballots; tally (of votes)"}
    ],
  },
  {
    kanji: "標",
    keyword: "signpost/seal",
    reading: "しるべ / しるし / ヒョウ",
    radical: "標",
    componentHint: "classical radical 75",
    examples: [
      {word: "目標", reading: "めじるし", meaning: "mark; sign"},
      {word: "標的", reading: "ひょうてき", meaning: "target"},
      {word: "標準", reading: "ひょうじゅん", meaning: "standard; level"}
    ],
  },
  {
    kanji: "漂",
    keyword: "drift/float (on liquid)",
    reading: "ただよ.う / ヒョウ",
    radical: "漂",
    componentHint: "classical radical 85",
    examples: [
      {word: "漂う", reading: "ただよう", meaning: "to drift; to float"},
      {word: "漂流", reading: "ひょうりゅう", meaning: "drifting; drift"},
      {word: "漂着", reading: "ひょうちゃく", meaning: "drifting ashore"}
    ],
  },
  {
    kanji: "遷",
    keyword: "transition/move",
    reading: "うつ.る / うつ.す / みやこがえ / セン",
    radical: "遷",
    componentHint: "classical radical 162",
    examples: [
      {word: "左遷", reading: "させん", meaning: "demotion; relegation"},
      {word: "変遷", reading: "へんせん", meaning: "change; transition"},
      {word: "遷都", reading: "せんと", meaning: "relocation of the capital; transfer of the capital"}
    ],
  },
  {
    kanji: "各",
    keyword: "each/every",
    reading: "おのおの / カク",
    radical: "各",
    componentHint: "classical radical 30",
    examples: [
      {word: "各地", reading: "かくち", meaning: "every place; various places"},
      {word: "各自", reading: "かくじ", meaning: "individual; each"},
      {word: "各国", reading: "かっこく", meaning: "each nation; many nations"}
    ],
  },
  {
    kanji: "客",
    keyword: "guest/visitor",
    reading: "キャク / カク",
    radical: "客",
    componentHint: "classical radical 40",
    examples: [
      {word: "乗客", reading: "じょうきゃく", meaning: "passenger"},
      {word: "観客", reading: "かんきゃく", meaning: "audience; spectator"},
      {word: "客間", reading: "きゃくま", meaning: "parlor; parlour"}
    ],
  },
  {
    kanji: "路",
    keyword: "path/route",
    reading: "-じ / みち / ロ / ル",
    radical: "路",
    componentHint: "classical radical 157",
    examples: [
      {word: "道路", reading: "どうろ", meaning: "road; highway"},
      {word: "通路", reading: "つうろ", meaning: "passage; pathway"},
      {word: "路地", reading: "ろじ", meaning: "alley; alleyway"}
    ],
  },
  {
    kanji: "格",
    keyword: "status/rank",
    reading: "カク / コウ / キャク",
    radical: "格",
    componentHint: "classical radical 75",
    examples: [
      {word: "性格", reading: "せいかく", meaning: "character; personality"},
      {word: "格好", reading: "かっこう", meaning: "shape; form"},
      {word: "資格", reading: "しかく", meaning: "qualifications; requirements"}
    ],
  },
  {
    kanji: "絡",
    keyword: "entwine/coil around",
    reading: "から.む / から.まる / ラク",
    radical: "絡",
    componentHint: "classical radical 120",
    examples: [
      {word: "連絡", reading: "れんらく", meaning: "to contact; to get in touch"},
      {word: "絡む", reading: "からむ", meaning: "to entangle; to entwine"},
      {word: "絡みつく", reading: "からみつく", meaning: "to twine oneself around; to coil around"}
    ],
  },
  {
    kanji: "略",
    keyword: "abbreviation/omission",
    reading: "ほぼ / はぶ.く / おか.す / おさ.める / リャク",
    radical: "略",
    componentHint: "classical radical 102",
    examples: [
      {word: "戦略", reading: "せんりゃく", meaning: "strategy; tactics"},
      {word: "侵略", reading: "しんりゃく", meaning: "aggression; invasion"},
      {word: "攻略", reading: "こうりゃく", meaning: "capture; strategy guide"}
    ],
  },
  {
    kanji: "閣",
    keyword: "tower/tall building",
    reading: "カク",
    radical: "閣",
    componentHint: "classical radical 169",
    examples: [
      {word: "閣下", reading: "かっか", meaning: "your Excellency; his (or her) Excellency"},
      {word: "内閣", reading: "ないかく", meaning: "cabinet; (government) ministry"},
      {word: "閣僚", reading: "かくりょう", meaning: "cabinet ministers"}
    ],
  },
  {
    kanji: "落",
    keyword: "fall/drop",
    reading: "お.ちる / お.ち / お.とす / ラク",
    radical: "落",
    componentHint: "classical radical 140",
    examples: [
      {word: "落ちる", reading: "おちる", meaning: "to fall down; to drop"},
      {word: "落とす", reading: "おとす", meaning: "to drop; to lose"},
      {word: "落ち着く", reading: "おちつく", meaning: "to calm down; to compose oneself"}
    ],
  },
  {
    kanji: "南",
    keyword: "south",
    reading: "みなみ / ナン / ナ",
    radical: "南",
    componentHint: "classical radical 24",
    examples: [
      {word: "南部", reading: "なんぶ", meaning: "southern part; the south (of a region)"},
      {word: "南方", reading: "なんぽう", meaning: "south; southern"},
      {word: "南北", reading: "なんぼく", meaning: "south and north"}
    ],
  },
  {
    kanji: "西",
    keyword: "west/Spain",
    reading: "にし / セイ / サイ / ス",
    radical: "西",
    componentHint: "classical radical 146",
    examples: [
      {word: "西洋", reading: "せいよう", meaning: "the west; Western countries"},
      {word: "東西", reading: "とうざい", meaning: "east and west; Orient and Occident"},
      {word: "関西", reading: "かんさい", meaning: "Kansai (south-western half of Japan, including Osaka)"}
    ],
  },
  {
    kanji: "酉",
    keyword: "west/bird",
    reading: "とり / ユウ",
    radical: "酉",
    componentHint: "classical radical 164",
    examples: [
      {word: "酉の市", reading: "とりのいち", meaning: "Bird Day Fair (held at Otori Shrine on each Day of the Bird in November)"},
      {word: "一の酉", reading: "いちのとり", meaning: "first day of the cock in the eleventh month"},
      {word: "酉の町", reading: "とりのまち", meaning: "Bird Day Fair (held at Otori Shrine on each Day of the Bird in November)"}
    ],
  },
  {
    kanji: "酒",
    keyword: "sake/alcohol",
    reading: "さけ / さか- / シュ",
    radical: "酒",
    componentHint: "classical radical 85",
    examples: [
      {word: "酒場", reading: "さかば", meaning: "bar; bar-room"},
      {word: "居酒屋", reading: "いざかや", meaning: "bar; pub"},
      {word: "葡萄酒", reading: "ぶどうしゅ", meaning: "(grape) wine"}
    ],
  },
  {
    kanji: "洒",
    keyword: "wash/sprinkle",
    reading: "すす.ぐ / あら.う / シャ / ソン / サイ",
    radical: "洒",
    componentHint: "classical radical 85",
    examples: [
      {word: "洒落", reading: "しゃらく", meaning: "frank; open-hearted"},
      {word: "洒落る", reading: "しゃれる", meaning: "to dress stylishly; to joke"},
      {word: "瀟洒", reading: "しょうしゃ", meaning: "stylish; smart"}
    ],
  },
  {
    kanji: "配",
    keyword: "distribute/spouse",
    reading: "くば.る / ハイ",
    radical: "配",
    componentHint: "classical radical 164",
    examples: [
      {word: "心配", reading: "しんぱい", meaning: "worry; concern"},
      {word: "気配", reading: "けはい", meaning: "indication; sign"},
      {word: "支配", reading: "しはい", meaning: "domination; rule"}
    ],
  },
  {
    kanji: "酸",
    keyword: "acid/bitterness",
    reading: "す.い / サン",
    radical: "酸",
    componentHint: "classical radical 164",
    examples: [
      {word: "酸素", reading: "さんそ", meaning: "oxygen (O)"},
      {word: "青酸", reading: "せいさん", meaning: "hydrocyanic (prussic) acid"},
      {word: "酸っぱい", reading: "すっぱい", meaning: "sour; acid"}
    ],
  },
  {
    kanji: "猶",
    keyword: "furthermore/still",
    reading: "なお / ユウ / ユ",
    radical: "猶",
    componentHint: "classical radical 94",
    examples: [
      {word: "猶予", reading: "ゆうよ", meaning: "postponement; deferment"},
      {word: "猶子", reading: "ゆうし", meaning: "nephew (like a son); another child considered as one's own"},
      {word: "猶の事", reading: "なおのこと", meaning: "all the more; still more"}
    ],
  },
  {
    kanji: "尊",
    keyword: "revered/valuable",
    reading: "たっと.い / とうと.い / たっと.ぶ / とうと.ぶ / ソン",
    radical: "尊",
    componentHint: "classical radical 41",
    examples: [
      {word: "尊敬", reading: "そんけい", meaning: "respect; esteem"},
      {word: "自尊心", reading: "じそんしん", meaning: "(spirit of) self-respect; self-importance"},
      {word: "尊い", reading: "とうとい", meaning: "precious; valuable"}
    ],
  },
  {
    kanji: "遵",
    keyword: "abide by/follow",
    reading: "ジュン",
    radical: "遵",
    componentHint: "classical radical 162",
    examples: [
      {word: "遵守", reading: "じゅんしゅ", meaning: "compliance; adherence (to a set of rules)"},
      {word: "遵奉", reading: "じゅんぽう", meaning: "obeying; observing"},
      {word: "遵法", reading: "じゅんぽう", meaning: "law observance; obeying the law"}
    ],
  },
  {
    kanji: "導",
    keyword: "guidance/leading",
    reading: "みちび.く / ドウ",
    radical: "導",
    componentHint: "classical radical 41",
    examples: [
      {word: "指導", reading: "しどう", meaning: "leadership; guidance"},
      {word: "導く", reading: "みちびく", meaning: "to guide; to lead"},
      {word: "誘導", reading: "ゆうどう", meaning: "guidance; leading"}
    ],
  },
  {
    kanji: "敬",
    keyword: "awe/respect",
    reading: "うやま.う / ケイ / キョウ",
    radical: "敬",
    componentHint: "classical radical 66",
    examples: [
      {word: "尊敬", reading: "そんけい", meaning: "respect; esteem"},
      {word: "敬意", reading: "けいい", meaning: "respect; honour"},
      {word: "敬礼", reading: "けいれい", meaning: "salute; bow"}
    ],
  },
  {
    kanji: "警",
    keyword: "admonish/commandment",
    reading: "いまし.める / ケイ",
    radical: "警",
    componentHint: "classical radical 149",
    examples: [
      {word: "警察", reading: "けいさつ", meaning: "police; police officer"},
      {word: "警部", reading: "けいぶ", meaning: "police inspector"},
      {word: "警官", reading: "けいかん", meaning: "policeman"}
    ],
  },
  {
    kanji: "驚",
    keyword: "wonder/be surprised",
    reading: "おどろ.く / おどろ.かす / キョウ",
    radical: "驚",
    componentHint: "classical radical 187",
    examples: [
      {word: "驚く", reading: "おどろく", meaning: "to be surprised; to be astonished"},
      {word: "驚き", reading: "おどろき", meaning: "surprise; astonishment"},
      {word: "驚愕", reading: "きょうがく", meaning: "surprise; fright"}
    ],
  },
  {
    kanji: "散",
    keyword: "scatter/disperse",
    reading: "ち.る / ち.らす / -ち.らす / ち.らかす / サン",
    radical: "散",
    componentHint: "classical radical 66",
    examples: [
      {word: "散る", reading: "ちる", meaning: "to fall (e.g. blossoms, leaves); to scatter"},
      {word: "散歩", reading: "さんぽ", meaning: "walk; stroll"},
      {word: "散らす", reading: "ちらす", meaning: "to scatter; to cause a shower of"}
    ],
  },
  {
    kanji: "敢",
    keyword: "daring/brave",
    reading: "あ.えて / あ.えない / あ.えず / カン",
    radical: "敢",
    componentHint: "classical radical 66",
    examples: [
      {word: "勇敢", reading: "ゆうかん", meaning: "brave; heroic"},
      {word: "敢えて", reading: "あえて", meaning: "purposely (of something needless, unexpected or seemingly counterproductive, etc.); daringly (doing something)"},
      {word: "果敢", reading: "かかん", meaning: "resolute; determined"}
    ],
  },
  {
    kanji: "厳",
    keyword: "stern/strictness",
    reading: "おごそ.か / きび.しい / いか.めしい / いつくし / ゲン / ゴン",
    radical: "厳",
    componentHint: "classical radical 42",
    examples: [
      {word: "厳しい", reading: "きびしい", meaning: "severe; strict"},
      {word: "厳重", reading: "げんじゅう", meaning: "strict; rigour"},
      {word: "威厳", reading: "いげん", meaning: "dignity; majesty"}
    ],
  },
  {
    kanji: "仏",
    keyword: "Buddha/the dead",
    reading: "ほとけ / ブツ / フツ",
    radical: "仏",
    componentHint: "classical radical 9",
    examples: [
      {word: "仏教", reading: "ぶっきょう", meaning: "Buddhism"},
      {word: "仏像", reading: "ぶつぞう", meaning: "statue of Buddha; image of Buddha"},
      {word: "仏壇", reading: "ぶつだん", meaning: "Buddhist (household) altar"}
    ],
  },
  {
    kanji: "払",
    keyword: "pay/clear out",
    reading: "はら.う / -はら.い / -ばら.い / フツ / ヒツ / ホツ",
    radical: "払",
    componentHint: "classical radical 64",
    examples: [
      {word: "払う", reading: "はらう", meaning: "to pay (e.g. money, bill); to brush off"},
      {word: "支払う", reading: "しはらう", meaning: "to pay"},
      {word: "追い払う", reading: "おいはらう", meaning: "to drive away"}
    ],
  },
  {
    kanji: "拡",
    keyword: "broaden/extend",
    reading: "ひろ.がる / ひろ.げる / ひろ.める / カク / コウ",
    radical: "拡",
    componentHint: "classical radical 64",
    examples: [
      {word: "拡大", reading: "かくだい", meaning: "magnification; enlargement"},
      {word: "拡げる", reading: "ひろげる", meaning: "to spread; to extend"},
      {word: "拡がる", reading: "ひろがる", meaning: "to spread (out); to extend"}
    ],
  },
  {
    kanji: "可",
    keyword: "can/passable",
    reading: "-べ.き / -べ.し / カ / コク",
    radical: "可",
    componentHint: "classical radical 30",
    examples: [
      {word: "可能", reading: "かのう", meaning: "potential; possible"},
      {word: "不可能", reading: "ふかのう", meaning: "impossible"},
      {word: "可愛い", reading: "かわいい", meaning: "cute; adorable"}
    ],
  },
  {
    kanji: "何",
    keyword: "what",
    reading: "なに / なん / なに- / なん- / カ",
    radical: "何",
    componentHint: "classical radical 9",
    examples: [
      {word: "何とか", reading: "なんとか", meaning: "something; something or other"},
      {word: "何だか", reading: "なんだか", meaning: "(a) little; somewhat"},
      {word: "何事", reading: "なにごと", meaning: "what; something"}
    ],
  },
  {
    kanji: "苛",
    keyword: "torment/scold",
    reading: "いじ.める / さいな.む / いらだ.つ / からい / カ",
    radical: "苛",
    componentHint: "classical radical 140",
    examples: [
      {word: "苛立つ", reading: "いらだつ", meaning: "to be irritated; to get annoyed"},
      {word: "苛酷", reading: "かこく", meaning: "rigour; rigor"},
      {word: "苛める", reading: "いじめる", meaning: "to tease; to torment"}
    ],
  },
  {
    kanji: "荷",
    keyword: "baggage/shoulder-pole load",
    reading: "に / カ",
    radical: "荷",
    componentHint: "classical radical 140",
    examples: [
      {word: "荷物", reading: "にもつ", meaning: "luggage; baggage"},
      {word: "重荷", reading: "おもに", meaning: "load; heavy burden"},
      {word: "稲荷", reading: "いなり", meaning: "Inari (god of harvests, Uka-no-Mitama); Inari shrine"}
    ],
  },
  {
    kanji: "河",
    keyword: "river",
    reading: "かわ / カ",
    radical: "河",
    componentHint: "classical radical 85",
    examples: [
      {word: "大河", reading: "たいが", meaning: "large river"},
      {word: "銀河", reading: "ぎんが", meaning: "Milky Way; galaxy"},
      {word: "河岸", reading: "かわぎし", meaning: "riverbank; riverside"}
    ],
  },
  {
    kanji: "阿",
    keyword: "Africa/flatter",
    reading: "おもね.る / くま / ア / オ",
    radical: "阿",
    componentHint: "classical radical 170",
    examples: [
      {word: "阿る", reading: "おもねる", meaning: "to flatter"},
      {word: "阿呆", reading: "あほう", meaning: "fool; simpleton"},
      {word: "阿片", reading: "あへん", meaning: "opium"}
    ],
  },
  {
    kanji: "司",
    keyword: "director/official",
    reading: "つかさど.る / シ",
    radical: "司",
    componentHint: "classical radical 30",
    examples: [
      {word: "司令", reading: "しれい", meaning: "command; control"},
      {word: "司祭", reading: "しさい", meaning: "priest; minister"},
      {word: "上司", reading: "じょうし", meaning: "superior authorities; boss"}
    ],
  },
  {
    kanji: "伺",
    keyword: "pay respects/visit",
    reading: "うかが.う / シ",
    radical: "伺",
    componentHint: "classical radical 9",
    examples: [
      {word: "伺う", reading: "うかがう", meaning: "to ask; to inquire"},
      {word: "伺い", reading: "うかがい", meaning: "call; visit"},
      {word: "伺候", reading: "しこう", meaning: "waiting upon (someone)"}
    ],
  },
  {
    kanji: "詞",
    keyword: "part of speech/words",
    reading: "シ",
    radical: "詞",
    componentHint: "classical radical 149",
    examples: [
      {word: "台詞", reading: "せりふ", meaning: "speech; words"},
      {word: "歌詞", reading: "かし", meaning: "song lyrics; words of a song"},
      {word: "祝詞", reading: "のりと", meaning: "ritual prayer; invocation of the gods participating in a rite"}
    ],
  },
  {
    kanji: "飼",
    keyword: "domesticate/raise",
    reading: "か.う / シ",
    radical: "飼",
    componentHint: "classical radical 184",
    examples: [
      {word: "飼う", reading: "かう", meaning: "to keep (a pet or other animal); to raise"},
      {word: "飼育", reading: "しいく", meaning: "breeding; raising"},
      {word: "飼い主", reading: "かいぬし", meaning: "shepherd; (pet) owner"}
    ],
  },
  {
    kanji: "冊",
    keyword: "tome/counter for books",
    reading: "ふみ / サツ / サク",
    radical: "冊",
    componentHint: "classical radical 13",
    examples: [
      {word: "短冊", reading: "たんざく", meaning: "long, narrow card on which Japanese poems are written (vertically); strip of paper"},
      {word: "小冊子", reading: "しょうさっし", meaning: "booklet; pamphlet"},
      {word: "冊子", reading: "さっし", meaning: "book; booklet"}
    ],
  },
  {
    kanji: "嗣",
    keyword: "heir/succeed",
    reading: "シ",
    radical: "嗣",
    componentHint: "classical radical 30",
    examples: [
      {word: "嗣ぐ", reading: "つぐ", meaning: "to succeed (someone in a business or inheritance)"},
      {word: "嗣子", reading: "しし", meaning: "heir"},
      {word: "継嗣", reading: "けいし", meaning: "successor; heir"}
    ],
  },
  {
    kanji: "覗",
    keyword: "peep/peek",
    reading: "のぞ.く / うかが.う / シ",
    radical: "覗",
    componentHint: "classical radical 147",
    examples: [
      {word: "覗く", reading: "のぞく", meaning: "to peek (though a keyhole, gap, etc.); to look down into (a ravine, etc.)"},
      {word: "覗き込む", reading: "のぞきこむ", meaning: "to look into; to peer in"},
      {word: "覗き", reading: "のぞき", meaning: "peep; peeping"}
    ],
  },
  {
    kanji: "歌",
    keyword: "song/sing",
    reading: "うた / うた.う / カ",
    radical: "歌",
    componentHint: "classical radical 76",
    examples: [
      {word: "歌う", reading: "うたう", meaning: "to sing; to sing (one's praises in a poem, etc.)"},
      {word: "歌手", reading: "かしゅ", meaning: "singer"},
      {word: "歌声", reading: "うたごえ", meaning: "singing voice; (sound of) singing"}
    ],
  },
  {
    kanji: "唄",
    keyword: "song/ballad",
    reading: "うた / うた.う / バイ",
    radical: "唄",
    componentHint: "classical radical 30",
    examples: [
      {word: "唄う", reading: "うたう", meaning: "to sing; to sing (one's praises in a poem, etc.)"},
      {word: "小唄", reading: "こうた", meaning: "ballad"},
      {word: "鼻唄", reading: "はなうた", meaning: "humming; crooning"}
    ],
  },
  {
    kanji: "負",
    keyword: "defeat/negative",
    reading: "ま.ける / ま.かす / お.う / フ",
    radical: "負",
    componentHint: "classical radical 154",
    examples: [
      {word: "負ける", reading: "まける", meaning: "to lose; to be defeated"},
      {word: "勝負", reading: "しょうぶ", meaning: "victory or defeat; match"},
      {word: "背負う", reading: "せおう", meaning: "to be burdened with; to take responsibility for"}
    ],
  },
  {
    kanji: "敗",
    keyword: "failure/defeat",
    reading: "やぶ.れる / ハイ",
    radical: "敗",
    componentHint: "classical radical 66",
    examples: [
      {word: "失敗", reading: "しっぱい", meaning: "failure; mistake"},
      {word: "敗北", reading: "はいぼく", meaning: "defeat; to be defeated"},
      {word: "敗れる", reading: "やぶれる", meaning: "to be defeated; to be beaten"}
    ],
  },
  {
    kanji: "責",
    keyword: "blame/condemn",
    reading: "せ.める / セキ",
    radical: "責",
    componentHint: "classical radical 154",
    examples: [
      {word: "責任", reading: "せきにん", meaning: "duty; responsibility (incl. supervision of staff)"},
      {word: "責める", reading: "せめる", meaning: "to condemn; to blame"},
      {word: "無責任", reading: "むせきにん", meaning: "irresponsibility"}
    ],
  },
  {
    kanji: "積",
    keyword: "volume/product (x*y)",
    reading: "つ.む / -づ.み / つ.もる / つ.もり / セキ",
    radical: "積",
    componentHint: "classical radical 115",
    examples: [
      {word: "積む", reading: "つむ", meaning: "to pile up; to stack"},
      {word: "積極", reading: "せっきょく", meaning: "positive; progressive"},
      {word: "積み上げる", reading: "つみあげる", meaning: "to pile up; to make a heap"}
    ],
  },
  {
    kanji: "債",
    keyword: "bond/loan",
    reading: "サイ",
    radical: "債",
    componentHint: "classical radical 9",
    examples: [
      {word: "債権", reading: "さいけん", meaning: "credit; claim"},
      {word: "負債", reading: "ふさい", meaning: "debt; liabilities"},
      {word: "債務", reading: "さいむ", meaning: "debt; liabilities"}
    ],
  },
  {
    kanji: "漬",
    keyword: "pickling/soak",
    reading: "つ.ける / つ.かる / -づ.け / -づけ / シ",
    radical: "漬",
    componentHint: "classical radical 85",
    examples: [
      {word: "漬け", reading: "づけ", meaning: "pickled (something); being badly influenced by"},
      {word: "漬物", reading: "つけもの", meaning: "tsukemono; Japanese pickled vegetables"},
      {word: "漬ける", reading: "つける", meaning: "to soak; to seep"}
    ],
  },
  {
    kanji: "紡",
    keyword: "spinning",
    reading: "つむ.ぐ / ボウ",
    radical: "紡",
    componentHint: "classical radical 120",
    examples: [
      {word: "紡ぐ", reading: "つむぐ", meaning: "to spin; to make yarn"},
      {word: "紡績", reading: "ぼうせき", meaning: "spinning"},
      {word: "紡錘", reading: "ぼうすい", meaning: "spindle"}
    ],
  },
  {
    kanji: "績",
    keyword: "exploits/achievements",
    reading: "セキ",
    radical: "績",
    componentHint: "classical radical 120",
    examples: [
      {word: "成績", reading: "せいせき", meaning: "results; record"},
      {word: "功績", reading: "こうせき", meaning: "achievements; merit"},
      {word: "業績", reading: "ぎょうせき", meaning: "achievement; performance"}
    ],
  },
  {
    kanji: "具",
    keyword: "tool/utensil",
    reading: "そな.える / つぶさ.に / グ",
    radical: "具",
    componentHint: "classical radical 12",
    examples: [
      {word: "道具", reading: "どうぐ", meaning: "tool; implement"},
      {word: "具合", reading: "ぐあい", meaning: "condition; state"},
      {word: "具体", reading: "ぐたい", meaning: "concrete; tangible"}
    ],
  },
  {
    kanji: "真",
    keyword: "true/reality",
    reading: "ま / ま- / まこと / シン",
    radical: "真",
    componentHint: "classical radical 109",
    examples: [
      {word: "写真", reading: "しゃしん", meaning: "photograph; photo"},
      {word: "真実", reading: "しんじつ", meaning: "truth; reality"},
      {word: "真剣", reading: "しんけん", meaning: "seriousness; earnestness"}
    ],
  },
  {
    kanji: "直",
    keyword: "straightaway/honesty",
    reading: "ただ.ちに / なお.す / -なお.す / なお.る / チョク / ジキ / ジカ",
    radical: "直",
    componentHint: "classical radical 109",
    examples: [
      {word: "正直", reading: "しょうじき", meaning: "honesty; integrity"},
      {word: "直す", reading: "なおす", meaning: "to cure; to heal"},
      {word: "直接", reading: "ちょくせつ", meaning: "direct; immediate"}
    ],
  },
  {
    kanji: "植",
    keyword: "plant",
    reading: "う.える / う.わる / ショク",
    radical: "植",
    componentHint: "classical radical 75",
    examples: [
      {word: "植物", reading: "しょくぶつ", meaning: "plant; vegetation"},
      {word: "植える", reading: "うえる", meaning: "to plant; to grow"},
      {word: "植民", reading: "しょくみん", meaning: "colonization; colonisation"}
    ],
  },
  {
    kanji: "殖",
    keyword: "augment/increase",
    reading: "ふ.える / ふ.やす / ショク",
    radical: "殖",
    componentHint: "classical radical 78",
    examples: [
      {word: "繁殖", reading: "はんしょく", meaning: "breed; multiply"},
      {word: "増殖", reading: "ぞうしょく", meaning: "increase; multiplication"},
      {word: "生殖", reading: "せいしょく", meaning: "reproduction"}
    ],
  },
  {
    kanji: "値",
    keyword: "price/cost",
    reading: "ね / あたい / チ",
    radical: "値",
    componentHint: "classical radical 9",
    examples: [
      {word: "価値", reading: "かち", meaning: "value; worth"},
      {word: "値段", reading: "ねだん", meaning: "price; cost"},
      {word: "値する", reading: "あたいする", meaning: "to be worth; to deserve"}
    ],
  },
  {
    kanji: "置",
    keyword: "placement/put",
    reading: "お.く / -お.き / チ",
    radical: "置",
    componentHint: "classical radical 122",
    examples: [
      {word: "置く", reading: "おく", meaning: "to put; to place"},
      {word: "位置", reading: "いち", meaning: "place; situation"},
      {word: "装置", reading: "そうち", meaning: "equipment; installation"}
    ],
  },
  {
    kanji: "県",
    keyword: "prefecture",
    reading: "か.ける / ケン",
    radical: "県",
    componentHint: "classical radical 109",
    examples: [
      {word: "県警", reading: "けんけい", meaning: "prefectural police"},
      {word: "県庁", reading: "けんちょう", meaning: "prefectural office"},
      {word: "県内", reading: "けんない", meaning: "within the prefecture"}
    ],
  },
  {
    kanji: "州",
    keyword: "state/province",
    reading: "す / シュウ / ス",
    radical: "州",
    componentHint: "classical radical 2",
    examples: [
      {word: "九州", reading: "きゅうしゅう", meaning: "Kyushu (southernmost of the four main islands of Japan)"},
      {word: "満州", reading: "まんしゅう", meaning: "Manchuria"},
      {word: "欧州", reading: "おうしゅう", meaning: "Europe"}
    ],
  },
  {
    kanji: "洲",
    keyword: "continent/sandbar",
    reading: "しま / シュウ / ス",
    radical: "洲",
    componentHint: "classical radical 85",
    examples: [
      {word: "白洲", reading: "しらす", meaning: "bar of white sand; gravel separating a noh stage from the audience"},
      {word: "中洲", reading: "なかす", meaning: "sandbank (in a river); sandbar"},
      {word: "砂洲", reading: "さす", meaning: "reef; sandbar"}
    ],
  },
  {
    kanji: "接",
    keyword: "touch/contact",
    reading: "つ.ぐ / セツ / ショウ",
    radical: "接",
    componentHint: "classical radical 64",
    examples: [
      {word: "直接", reading: "ちょくせつ", meaning: "direct; immediate"},
      {word: "接近", reading: "せっきん", meaning: "getting closer; drawing nearer"},
      {word: "接触", reading: "せっしょく", meaning: "touch; contact"}
    ],
  },
  {
    kanji: "継",
    keyword: "inherit/succeed",
    reading: "つ.ぐ / まま- / ケイ",
    radical: "継",
    componentHint: "classical radical 120",
    examples: [
      {word: "継ぐ", reading: "つぐ", meaning: "to succeed (someone in a business or inheritance)"},
      {word: "中継", reading: "ちゅうけい", meaning: "relay; hook-up"},
      {word: "後継", reading: "こうけい", meaning: "succession; successor"}
    ],
  },
  {
    kanji: "断",
    keyword: "severance/decline",
    reading: "た.つ / ことわ.る / さだ.める / ダン",
    radical: "断",
    componentHint: "classical radical 69",
    examples: [
      {word: "判断", reading: "はんだん", meaning: "judgment; judgement"},
      {word: "断る", reading: "ことわる", meaning: "to refuse; to reject"},
      {word: "油断", reading: "ゆだん", meaning: "negligence; carelessness"}
    ],
  },
  {
    kanji: "応",
    keyword: "apply/answer",
    reading: "あた.る / まさに / こた.える / オウ / ヨウ / -ノウ",
    radical: "応",
    componentHint: "classical radical 61",
    examples: [
      {word: "反応", reading: "はんのう", meaning: "reaction; response"},
      {word: "一応", reading: "いちおう", meaning: "more or less; though not quite satisfactorily"},
      {word: "応じる", reading: "おうじる", meaning: "to respond; to satisfy"}
    ],
  },
  {
    kanji: "床",
    keyword: "bed/counter for beds",
    reading: "とこ / ゆか / ショウ",
    radical: "床",
    componentHint: "classical radical 53",
    examples: [
      {word: "寝床", reading: "ねどこ", meaning: "bed; berth"},
      {word: "床の間", reading: "とこのま", meaning: "tokonoma (alcove where art or flowers are displayed)"},
      {word: "床屋", reading: "とこや", meaning: "barbershop; barber"}
    ],
  },
  {
    kanji: "麻",
    keyword: "hemp/flax",
    reading: "あさ / マ / マア",
    radical: "麻",
    componentHint: "classical radical 200",
    examples: [
      {word: "麻薬", reading: "まやく", meaning: "narcotic drugs; narcotic"},
      {word: "麻痺", reading: "まひ", meaning: "paralysis; palsy"},
      {word: "麻呂", reading: "まろ", meaning: "I; me"}
    ],
  },
  {
    kanji: "歴",
    keyword: "curriculum/continuation",
    reading: "レキ / レッキ",
    radical: "歴",
    componentHint: "classical radical 77",
    examples: [
      {word: "歴史", reading: "れきし", meaning: "history"},
      {word: "経歴", reading: "けいれき", meaning: "personal history; career"},
      {word: "履歴", reading: "りれき", meaning: "personal history; background"}
    ],
  },
  {
    kanji: "暦",
    keyword: "calendar/almanac",
    reading: "こよみ / りゃく / レキ",
    radical: "暦",
    componentHint: "classical radical 72",
    examples: [
      {word: "西暦", reading: "せいれき", meaning: "Christian Era; CE"},
      {word: "還暦", reading: "かんれき", meaning: "60th birthday"},
      {word: "旧暦", reading: "きゅうれき", meaning: "Japan's old (lunisolar) calendar"}
    ],
  },
  {
    kanji: "臨",
    keyword: "look to/face",
    reading: "のぞ.む / リン",
    radical: "臨",
    componentHint: "classical radical 131",
    examples: [
      {word: "臨時", reading: "りんじ", meaning: "temporary; special"},
      {word: "臨む", reading: "のぞむ", meaning: "to look out on; to face"},
      {word: "臨終", reading: "りんじゅう", meaning: "deathbed; dying hour"}
    ],
  },
  {
    kanji: "園",
    keyword: "park/garden",
    reading: "その / エン",
    radical: "園",
    componentHint: "classical radical 31",
    examples: [
      {word: "公園", reading: "こうえん", meaning: "(public) park"},
      {word: "学園", reading: "がくえん", meaning: "academy; campus"},
      {word: "庭園", reading: "ていえん", meaning: "garden; park"}
    ],
  },
  {
    kanji: "遠",
    keyword: "distant/far",
    reading: "とお.い / エン / オン",
    radical: "遠",
    componentHint: "classical radical 162",
    examples: [
      {word: "遠い", reading: "とおい", meaning: "far; distant"},
      {word: "遠く", reading: "とおく", meaning: "far away; distant"},
      {word: "遠慮", reading: "えんりょ", meaning: "reserve; constraint"}
    ],
  },
  {
    kanji: "与",
    keyword: "bestow/participate in",
    reading: "あた.える / あずか.る / くみ.する / ともに / ヨ",
    radical: "与",
    componentHint: "classical radical 1",
    examples: [
      {word: "与える", reading: "あたえる", meaning: "to give (esp. to someone of lower status); to bestow"},
      {word: "与る", reading: "あずかる", meaning: "to participate in; to take part in"},
      {word: "与力", reading: "よりき", meaning: "feudal era police rank"}
    ],
  },
  {
    kanji: "写",
    keyword: "copy/be photographed",
    reading: "うつ.す / うつ.る / うつ- / うつ.し / シャ / ジャ",
    radical: "写",
    componentHint: "classical radical 14",
    examples: [
      {word: "写真", reading: "しゃしん", meaning: "photograph; photo"},
      {word: "描写", reading: "びょうしゃ", meaning: "depiction; description"},
      {word: "写す", reading: "うつす", meaning: "to transcribe; to duplicate"}
    ],
  },
  {
    kanji: "移",
    keyword: "shift/move",
    reading: "うつ.る / うつ.す / イ",
    radical: "移",
    componentHint: "classical radical 115",
    examples: [
      {word: "移動", reading: "いどう", meaning: "movement; transfer"},
      {word: "移る", reading: "うつる", meaning: "to move (house); to transfer (department)"},
      {word: "移す", reading: "うつす", meaning: "to change; to swap"}
    ],
  },
  {
    kanji: "卸",
    keyword: "wholesale",
    reading: "おろ.す / おろし / おろ.し / シャ",
    radical: "卸",
    componentHint: "classical radical 26",
    examples: [
      {word: "卸す", reading: "おろす", meaning: "to sell wholesale; to grate (e.g. vegetables)"},
      {word: "卸し", reading: "おろし", meaning: "dropping; unloading"},
      {word: "卸売", reading: "おろしうり", meaning: "wholesale"}
    ],
  },
  {
    kanji: "御",
    keyword: "honorable/manipulate",
    reading: "おん- / お- / み- / ギョ / ゴ",
    radical: "御",
    componentHint: "classical radical 60",
    examples: [
      {word: "御用", reading: "ごよう", meaning: "your order; your business"},
      {word: "制御", reading: "せいぎょ", meaning: "control; governing"},
      {word: "御座る", reading: "ござる", meaning: "to be"}
    ],
  },
  {
    kanji: "複",
    keyword: "duplicate/double",
    reading: "フク",
    radical: "複",
    componentHint: "classical radical 145",
    examples: [
      {word: "複雑", reading: "ふくざつ", meaning: "complex; complicated"},
      {word: "複数", reading: "ふくすう", meaning: "several; plural"},
      {word: "複製", reading: "ふくせい", meaning: "reproduction; duplication"}
    ],
  },
  {
    kanji: "腹",
    keyword: "abdomen/belly",
    reading: "はら / フク",
    radical: "腹",
    componentHint: "classical radical 130",
    examples: [
      {word: "お腹", reading: "おなか", meaning: "stomach"},
      {word: "空腹", reading: "くうふく", meaning: "hunger"},
      {word: "腹立たしい", reading: "はらだたしい", meaning: "irritating; aggravating"}
    ],
  },
  {
    kanji: "復",
    keyword: "restore/return to",
    reading: "また / フク",
    radical: "復",
    componentHint: "classical radical 60",
    examples: [
      {word: "回復", reading: "かいふく", meaning: "restoration; rehabilitation"},
      {word: "復讐", reading: "ふくしゅう", meaning: "revenge"},
      {word: "復活", reading: "ふっかつ", meaning: "revival (e.g. musical); come-back"}
    ],
  },
  {
    kanji: "往",
    keyword: "journey/travel",
    reading: "い.く / いにしえ / さき.に / ゆ.く / オウ",
    radical: "往",
    componentHint: "classical radical 60",
    examples: [
      {word: "往来", reading: "おうらい", meaning: "coming and going; traffic"},
      {word: "往復", reading: "おうふく", meaning: "making a round trip; going and returning"},
      {word: "往く", reading: "ゆく", meaning: "to go; to move (in a direction or towards a specific location)"}
    ],
  },
  {
    kanji: "柱",
    keyword: "pillar/post",
    reading: "はしら / チュウ",
    radical: "柱",
    componentHint: "classical radical 75",
    examples: [
      {word: "電柱", reading: "でんちゅう", meaning: "telephone pole; telegraph pole"},
      {word: "円柱", reading: "えんちゅう", meaning: "column; shaft"},
      {word: "支柱", reading: "しちゅう", meaning: "prop; brace"}
    ],
  },
  {
    kanji: "征",
    keyword: "subjugate/attack the rebellious",
    reading: "セイ",
    radical: "征",
    componentHint: "classical radical 60",
    examples: [
      {word: "征服", reading: "せいふく", meaning: "conquest; subjugation"},
      {word: "遠征", reading: "えんせい", meaning: "expedition; campaign"},
      {word: "征伐", reading: "せいばつ", meaning: "conquest; subjugation"}
    ],
  },
  {
    kanji: "従",
    keyword: "accompany/obey",
    reading: "したが.う / したが.える / より / ジュウ / ショウ / ジュ",
    radical: "従",
    componentHint: "classical radical 60",
    examples: [
      {word: "従う", reading: "したがう", meaning: "to abide (by the rules); to obey"},
      {word: "に従って", reading: "にしたがって", meaning: "in accordance with; according to"},
      {word: "従って", reading: "したがって", meaning: "therefore; consequently"}
    ],
  },
  {
    kanji: "徒",
    keyword: "on foot/junior",
    reading: "いたずら / あだ / ト",
    radical: "徒",
    componentHint: "classical radical 60",
    examples: [
      {word: "生徒", reading: "せいと", meaning: "pupil"},
      {word: "教徒", reading: "きょうと", meaning: "believer; adherent"},
      {word: "徒歩", reading: "とほ", meaning: "walking; going on foot"}
    ],
  },
  {
    kanji: "縦",
    keyword: "vertical/length",
    reading: "たて / ジュウ",
    radical: "縦",
    componentHint: "classical radical 120",
    examples: [
      {word: "操縦", reading: "そうじゅう", meaning: "steering; piloting"},
      {word: "縦横", reading: "じゅうおう", meaning: "length and width; length and breadth"},
      {word: "縦隊", reading: "じゅうたい", meaning: "column"}
    ],
  },
  {
    kanji: "延",
    keyword: "prolong/stretching",
    reading: "の.びる / の.べる / の.べ / の.ばす / エン",
    radical: "延",
    componentHint: "classical radical 54",
    examples: [
      {word: "延びる", reading: "のびる", meaning: "to stretch; to extend"},
      {word: "延ばす", reading: "のばす", meaning: "to grow long (e.g. hair, nails); to lengthen"},
      {word: "延長", reading: "えんちょう", meaning: "extension; elongation"}
    ],
  },
  {
    kanji: "伸",
    keyword: "expand/stretch",
    reading: "の.びる / の.ばす / の.べる / の.す / シン",
    radical: "伸",
    componentHint: "classical radical 9",
    examples: [
      {word: "伸ばす", reading: "のばす", meaning: "to grow long (e.g. hair, nails); to lengthen"},
      {word: "伸びる", reading: "のびる", meaning: "to stretch; to extend"},
      {word: "伸び", reading: "のび", meaning: "growth; development"}
    ],
  },
  {
    kanji: "紳",
    keyword: "sire/good belt",
    reading: "シン",
    radical: "紳",
    componentHint: "classical radical 120",
    examples: [
      {word: "紳士", reading: "しんし", meaning: "gentleman"},
      {word: "紳士録", reading: "しんしろく", meaning: "(who's who) directory"},
      {word: "貴紳", reading: "きしん", meaning: "noble; men of rank"}
    ],
  },
  {
    kanji: "縮",
    keyword: "shrink/contract",
    reading: "ちぢ.む / ちぢ.まる / ちぢ.める / ちぢ.れる / シュク",
    radical: "縮",
    componentHint: "classical radical 120",
    examples: [
      {word: "恐縮", reading: "きょうしゅく", meaning: "feeling obliged; being grateful"},
      {word: "縮める", reading: "ちぢめる", meaning: "to shorten; to reduce"},
      {word: "縮む", reading: "ちぢむ", meaning: "to shrink; to contract"}
    ],
  },
  {
    kanji: "誕",
    keyword: "nativity/be born",
    reading: "タン",
    radical: "誕",
    componentHint: "classical radical 149",
    examples: [
      {word: "誕生", reading: "たんじょう", meaning: "birth; creation"},
      {word: "生誕", reading: "せいたん", meaning: "birth; nativity"},
      {word: "降誕", reading: "こうたん", meaning: "birth (regal); nativity"}
    ],
  },
  {
    kanji: "廷",
    keyword: "courts/imperial court",
    reading: "テイ",
    radical: "廷",
    componentHint: "classical radical 54",
    examples: [
      {word: "宮廷", reading: "きゅうてい", meaning: "imperial court; royal court"},
      {word: "法廷", reading: "ほうてい", meaning: "courtroom"},
      {word: "朝廷", reading: "ちょうてい", meaning: "Imperial Court"}
    ],
  },
  {
    kanji: "庭",
    keyword: "courtyard/garden",
    reading: "にわ / テイ",
    radical: "庭",
    componentHint: "classical radical 53",
    examples: [
      {word: "家庭", reading: "かてい", meaning: "home; family"},
      {word: "中庭", reading: "なかにわ", meaning: "courtyard; quadrangle"},
      {word: "庭園", reading: "ていえん", meaning: "garden; park"}
    ],
  },
  {
    kanji: "艇",
    keyword: "rowboat/small boat",
    reading: "テイ",
    radical: "艇",
    componentHint: "classical radical 137",
    examples: [
      {word: "艦艇", reading: "かんてい", meaning: "military vessel; war fleet"},
      {word: "舟艇", reading: "しゅうてい", meaning: "boat; watercraft"},
      {word: "汽艇", reading: "きてい", meaning: "(steam) launch"}
    ],
  },
  {
    kanji: "展",
    keyword: "unfold/expand",
    reading: "テン",
    radical: "展",
    componentHint: "classical radical 44",
    examples: [
      {word: "展開", reading: "てんかい", meaning: "development; evolution"},
      {word: "発展", reading: "はってん", meaning: "development; growth"},
      {word: "展望", reading: "てんぼう", meaning: "view; outlook"}
    ],
  },
  {
    kanji: "殿",
    keyword: "Mr./hall",
    reading: "との / -どの / デン / テン",
    radical: "殿",
    componentHint: "classical radical 79",
    examples: [
      {word: "殿下", reading: "でんか", meaning: "your Highness; his (or her) Highness"},
      {word: "宮殿", reading: "きゅうでん", meaning: "palace"},
      {word: "神殿", reading: "しんでん", meaning: "temple; sacred place"}
    ],
  },
  {
    kanji: "異",
    keyword: "uncommon/different",
    reading: "こと / こと.なる / け / イ",
    radical: "異",
    componentHint: "classical radical 102",
    examples: [
      {word: "異常", reading: "いじょう", meaning: "strangeness; abnormality"},
      {word: "異様", reading: "いよう", meaning: "bizarre; strange"},
      {word: "異なる", reading: "ことなる", meaning: "to differ; to vary"}
    ],
  },
  {
    kanji: "翼",
    keyword: "wing/plane",
    reading: "つばさ / ヨク",
    radical: "翼",
    componentHint: "classical radical 124",
    examples: [
      {word: "左翼", reading: "さよく", meaning: "left-wing"},
      {word: "右翼", reading: "うよく", meaning: "right-wing (politics); extreme right-wing group"},
      {word: "両翼", reading: "りょうよく", meaning: "both wings; both flanks"}
    ],
  },
  {
    kanji: "累",
    keyword: "accumulate/involvement",
    reading: "ルイ",
    radical: "累",
    componentHint: "classical radical 120",
    examples: [
      {word: "累々", reading: "るいるい", meaning: "in heaps"},
      {word: "累積", reading: "るいせき", meaning: "accumulation"},
      {word: "係累", reading: "けいるい", meaning: "dependents; family members that one has to support"}
    ],
  },
  {
    kanji: "塁",
    keyword: "bases/fort",
    reading: "とりで / ルイ / ライ / スイ",
    radical: "塁",
    componentHint: "classical radical 32",
    examples: [
      {word: "一塁", reading: "いちるい", meaning: "first base; first baseman"},
      {word: "三塁", reading: "さんるい", meaning: "third base"},
      {word: "二塁", reading: "にるい", meaning: "second base"}
    ],
  },
  {
    kanji: "吏",
    keyword: "officer/an official",
    reading: "リ",
    radical: "吏",
    componentHint: "classical radical 30",
    examples: [
      {word: "官吏", reading: "かんり", meaning: "government official; clerk"},
      {word: "獄吏", reading: "ごくり", meaning: "jailer; gaoler"},
      {word: "吏員", reading: "りいん", meaning: "official"}
    ],
  },
  {
    kanji: "使",
    keyword: "use/send on a mission",
    reading: "つか.う / つか.い / -つか.い / -づか.い / シ",
    radical: "使",
    componentHint: "classical radical 9",
    examples: [
      {word: "使う", reading: "つかう", meaning: "to use (a thing, method, etc.); to make use of"},
      {word: "使用", reading: "しよう", meaning: "use; application"},
      {word: "使える", reading: "つかえる", meaning: "to be usable; to be serviceable"}
    ],
  },
  {
    kanji: "史",
    keyword: "history/chronicle",
    reading: "シ",
    radical: "史",
    componentHint: "classical radical 30",
    examples: [
      {word: "歴史", reading: "れきし", meaning: "history"},
      {word: "女史", reading: "じょし", meaning: "Ms (nuance of status); Miss"},
      {word: "史上", reading: "しじょう", meaning: "historical"}
    ],
  },
  {
    kanji: "更",
    keyword: "grow late/night watch",
    reading: "さら / さら.に / ふ.ける / ふ.かす / コウ",
    radical: "更",
    componentHint: "classical radical 73",
    examples: [
      {word: "更に", reading: "さらに", meaning: "furthermore; again"},
      {word: "変更", reading: "へんこう", meaning: "change; modification"},
      {word: "今更", reading: "いまさら", meaning: "now (after such a long time); at this late hour (i.e. it is too late for something)"}
    ],
  },
  {
    kanji: "便",
    keyword: "convenience/facility",
    reading: "たよ.り / ベン / ビン",
    radical: "便",
    componentHint: "classical radical 9",
    examples: [
      {word: "郵便", reading: "ゆうびん", meaning: "mail service; postal service"},
      {word: "便利", reading: "べんり", meaning: "convenient; handy"},
      {word: "便所", reading: "べんじょ", meaning: "toilet; lavatory"}
    ],
  },
  {
    kanji: "硬",
    keyword: "stiff/hard",
    reading: "かた.い / コウ",
    radical: "硬",
    componentHint: "classical radical 112",
    examples: [
      {word: "硬い", reading: "かたい", meaning: "hard; solid"},
      {word: "硬直", reading: "こうちょく", meaning: "stiffening; rigidity"},
      {word: "強硬", reading: "きょうこう", meaning: "firm; vigorous"}
    ],
  },
  {
    kanji: "能",
    keyword: "ability/talent",
    reading: "よ.く / ノウ",
    radical: "能",
    componentHint: "classical radical 130",
    examples: [
      {word: "可能", reading: "かのう", meaning: "potential; possible"},
      {word: "能力", reading: "のうりょく", meaning: "ability; faculty"},
      {word: "不可能", reading: "ふかのう", meaning: "impossible"}
    ],
  },
  {
    kanji: "態",
    keyword: "attitude/condition",
    reading: "わざ.と / タイ",
    radical: "態",
    componentHint: "classical radical 61",
    examples: [
      {word: "状態", reading: "じょうたい", meaning: "current status; condition"},
      {word: "態度", reading: "たいど", meaning: "attitude; manner"},
      {word: "事態", reading: "じたい", meaning: "situation; (present) state of affairs"}
    ],
  },
  {
    kanji: "熊",
    keyword: "bear",
    reading: "くま / ユウ",
    radical: "熊",
    componentHint: "classical radical 86",
    examples: [
      {word: "熊手", reading: "くまで", meaning: "rake; fork"},
      {word: "熊笹", reading: "くまざさ", meaning: "kuma bamboo grass (Sasa veitchii); Veitch's bamboo"},
      {word: "白熊", reading: "しろくま", meaning: "polar bear (Ursus maritimus)"}
    ],
  },
  {
    kanji: "罷",
    keyword: "quit/stop",
    reading: "まか.り- / や.める / ヒ",
    radical: "罷",
    componentHint: "classical radical 122",
    examples: [
      {word: "罷免", reading: "ひめん", meaning: "dismissal; discharge"},
      {word: "罷める", reading: "やめる", meaning: "to resign; to retire"},
      {word: "罷り出る", reading: "まかりでる", meaning: "to leave; to withdraw"}
    ],
  },
  {
    kanji: "羅",
    keyword: "gauze/thin silk",
    reading: "うすもの / ラ",
    radical: "羅",
    componentHint: "classical radical 122",
    examples: [
      {word: "修羅場", reading: "しゅらば", meaning: "fighting scene; scene of carnage (bloodshed)"},
      {word: "伽羅", reading: "きゃら", meaning: "aloes wood; Taxus cuspidata var. nana"},
      {word: "修羅", reading: "しゅら", meaning: "fighting; scene of carnage"}
    ],
  },
  {
    kanji: "雲",
    keyword: "cloud",
    reading: "くも / -ぐも / ウン",
    radical: "雲",
    componentHint: "classical radical 173",
    examples: [
      {word: "八雲", reading: "やくも", meaning: "thick clouds; classical Japanese poetry"},
      {word: "黒雲", reading: "くろくも", meaning: "dark clouds; black clouds"},
      {word: "白雲", reading: "しらくも", meaning: "white clouds"}
    ],
  },
  {
    kanji: "曇",
    keyword: "cloudy weather/cloud up",
    reading: "くも.る / ドン",
    radical: "曇",
    componentHint: "classical radical 72",
    examples: [
      {word: "曇る", reading: "くもる", meaning: "to get cloudy; to cloud over"},
      {word: "曇り", reading: "くもり", meaning: "cloudiness; cloudy weather"},
      {word: "曇らせる", reading: "くもらせる", meaning: "to cloud; to make dim or dull"}
    ],
  },
  {
    kanji: "雪",
    keyword: "snow",
    reading: "ゆき / セツ",
    radical: "雪",
    componentHint: "classical radical 173",
    examples: [
      {word: "深雪", reading: "みゆき", meaning: "deep snow"},
      {word: "吹雪", reading: "ふぶき", meaning: "snow storm; blizzard"},
      {word: "雪崩", reading: "なだれ", meaning: "avalanche; snowslide"}
    ],
  },
  {
    kanji: "雷",
    keyword: "thunder/lightning bolt",
    reading: "かみなり / いかずち / いかづち / ライ",
    radical: "雷",
    componentHint: "classical radical 173",
    examples: [
      {word: "魚雷", reading: "ぎょらい", meaning: "torpedo"},
      {word: "雷鳴", reading: "らいめい", meaning: "thunder"},
      {word: "雷撃", reading: "らいげき", meaning: "being struck by lightning; torpedo attack"}
    ],
  },
  {
    kanji: "零",
    keyword: "zero/spill",
    reading: "ぜろ / こぼ.す / こぼ.れる / レイ",
    radical: "零",
    componentHint: "classical radical 173",
    examples: [
      {word: "零れる", reading: "こぼれる", meaning: "to spill; to fall out of"},
      {word: "零す", reading: "こぼす", meaning: "to spill; to drop"},
      {word: "零時", reading: "れいじ", meaning: "twelve o'clock; midnight"}
    ],
  },
  {
    kanji: "震",
    keyword: "quake/shake",
    reading: "ふる.う / ふる.える / シン",
    radical: "震",
    componentHint: "classical radical 173",
    examples: [
      {word: "震える", reading: "ふるえる", meaning: "to shiver; to shake"},
      {word: "震わせる", reading: "ふるわせる", meaning: "to (make something) quiver; to shake"},
      {word: "地震", reading: "じしん", meaning: "earthquake"}
    ],
  },
  {
    kanji: "振",
    keyword: "shake/wave",
    reading: "ふ.る / ぶ.る / ふ.り / -ぶ.り / シン",
    radical: "振",
    componentHint: "classical radical 64",
    examples: [
      {word: "振る", reading: "ふる", meaning: "to wave; to shake"},
      {word: "振り返る", reading: "ふりかえる", meaning: "to turn head; to look over one's shoulder"},
      {word: "振り向く", reading: "ふりむく", meaning: "to turn one's face; to turn around"}
    ],
  },
  {
    kanji: "久",
    keyword: "long time/old story",
    reading: "ひさ.しい / キュウ / ク",
    radical: "久",
    componentHint: "classical radical 4",
    examples: [
      {word: "久しぶり", reading: "ひさしぶり", meaning: "a long time (since the last time); it's been a while (since I last saw, mailed, etc., you)"},
      {word: "永久", reading: "えいきゅう", meaning: "eternity; perpetuity"},
      {word: "久しい", reading: "ひさしい", meaning: "long; long-continued"}
    ],
  },
  {
    kanji: "賑",
    keyword: "flourish/be bustling",
    reading: "にぎ.わい / にぎ.やか / にぎ.わす / にぎ.わう / シン",
    radical: "賑",
    componentHint: "classical radical 154",
    examples: [
      {word: "賑やか", reading: "にぎやか", meaning: "bustling; busy"},
      {word: "賑わう", reading: "にぎわう", meaning: "to be crowded with people; to be bustling with"},
      {word: "賑わい", reading: "にぎわい", meaning: "prosperity; bustle"}
    ],
  },
  {
    kanji: "丘",
    keyword: "hill/knoll",
    reading: "おか / キュウ",
    radical: "丘",
    componentHint: "classical radical 1",
    examples: [
      {word: "丘陵", reading: "きゅうりょう", meaning: "hill"},
      {word: "砂丘", reading: "さきゅう", meaning: "sand dune; sand hill"},
      {word: "比丘尼", reading: "びくに", meaning: "bhikkhuni (fully ordained Buddhist nun)"}
    ],
  },
  {
    kanji: "兵",
    keyword: "soldier/private",
    reading: "つわもの / ヘイ / ヒョウ",
    radical: "兵",
    componentHint: "classical radical 12",
    examples: [
      {word: "兵衛", reading: "ひょうえい", meaning: "middle palace guard (ritsuryo system)"},
      {word: "兵士", reading: "へいし", meaning: "soldier"},
      {word: "兵隊", reading: "へいたい", meaning: "soldier; sailor"}
    ],
  },
  {
    kanji: "岳",
    keyword: "point/peak",
    reading: "たけ / ガク",
    radical: "岳",
    componentHint: "classical radical 46",
    examples: [
      {word: "山岳", reading: "さんがく", meaning: "mountains"},
      {word: "岳父", reading: "がくふ", meaning: "(man's) father-in-law; father of one's wife"},
      {word: "御岳", reading: "うたき", meaning: "(Okinawa) sacred site; sacred grove"}
    ],
  },
  {
    kanji: "浜",
    keyword: "seacoast/beach",
    reading: "はま / ヒン",
    radical: "浜",
    componentHint: "classical radical 85",
    examples: [
      {word: "横浜", reading: "よこはま", meaning: "Yokohama (city)"},
      {word: "砂浜", reading: "すなはま", meaning: "sandy beach"},
      {word: "浜辺", reading: "はまべ", meaning: "beach; foreshore"}
    ],
  },
  {
    kanji: "舎",
    keyword: "cottage/inn",
    reading: "やど.る / シャ / セキ",
    radical: "舎",
    componentHint: "classical radical 9",
    examples: [
      {word: "田舎", reading: "いなか", meaning: "rural area; countryside"},
      {word: "校舎", reading: "こうしゃ", meaning: "school building"},
      {word: "宿舎", reading: "しゅくしゃ", meaning: "lodging house"}
    ],
  },
  {
    kanji: "再",
    keyword: "again/twice",
    reading: "ふたた.び / サイ / サ",
    radical: "再",
    componentHint: "classical radical 1",
    examples: [
      {word: "再び", reading: "ふたたび", meaning: "again; once more"},
      {word: "再会", reading: "さいかい", meaning: "another meeting; meeting again"},
      {word: "再生", reading: "さいせい", meaning: "resuscitation; regeneration"}
    ],
  },
  {
    kanji: "虎",
    keyword: "tiger/drunkard",
    reading: "とら / コ",
    radical: "虎",
    componentHint: "classical radical 141",
    examples: [
      {word: "白虎", reading: "びゃっこ", meaning: "White Tiger (god said to rule over the western heavens); seven mansions (Chinese constellations) of the western heavens"},
      {word: "虎の子", reading: "とらのこ", meaning: "tiger cub; treasure (as it is said that tigers treasure their young)"},
      {word: "猛虎", reading: "もうこ", meaning: "fierce tiger; ferocious tiger"}
    ],
  },
  {
    kanji: "寅",
    keyword: "sign of the tiger/3-5AM",
    reading: "とら / イン",
    radical: "寅",
    componentHint: "classical radical 40",
    examples: [
      {word: "丑寅", reading: "うしとら", meaning: "northeast"},
      {word: "寅年", reading: "とらどし", meaning: "year of the tiger"},
      {word: "戊寅", reading: "つちのえとら", meaning: "15th of the sexagenary cycle"}
    ],
  },
  {
    kanji: "演",
    keyword: "performance/act",
    reading: "エン",
    radical: "演",
    componentHint: "classical radical 85",
    examples: [
      {word: "演じる", reading: "えんじる", meaning: "to perform (a play); to play (a part)"},
      {word: "演奏", reading: "えんそう", meaning: "musical performance"},
      {word: "演技", reading: "えんぎ", meaning: "acting; performance"}
    ],
  },
  {
    kanji: "黄",
    keyword: "yellow",
    reading: "き / こ- / コウ / オウ",
    radical: "黄",
    componentHint: "classical radical 201",
    examples: [
      {word: "黄金", reading: "おうごん", meaning: "gold"},
      {word: "黄色い", reading: "きいろい", meaning: "yellow; high-pitched (voice)"},
      {word: "黄昏", reading: "たそがれ", meaning: "dusk; twilight"}
    ],
  },
  {
    kanji: "横",
    keyword: "sideways/side",
    reading: "よこ / オウ",
    radical: "横",
    componentHint: "classical radical 75",
    examples: [
      {word: "横たわる", reading: "よこたわる", meaning: "to lie down; to stretch out"},
      {word: "横切る", reading: "よこぎる", meaning: "to cross (e.g. road); to traverse"},
      {word: "横顔", reading: "よこがお", meaning: "face in profile; profile"}
    ],
  },
  {
    kanji: "構",
    keyword: "posture/build",
    reading: "かま.える / かま.う / コウ",
    radical: "構",
    componentHint: "classical radical 75",
    examples: [
      {word: "結構", reading: "けっこう", meaning: "splendid; nice"},
      {word: "構う", reading: "かまう", meaning: "to mind; to care about"},
      {word: "構える", reading: "かまえる", meaning: "to set up (e.g. a building); to prepare in advance (e.g. a meal)"}
    ],
  },
  {
    kanji: "講",
    keyword: "lecture/club",
    reading: "コウ",
    radical: "講",
    componentHint: "classical radical 149",
    examples: [
      {word: "講義", reading: "こうぎ", meaning: "lecture"},
      {word: "講演", reading: "こうえん", meaning: "lecture; address"},
      {word: "講師", reading: "こうし", meaning: "lecturer"}
    ],
  },
  {
    kanji: "購",
    keyword: "subscription/buy",
    reading: "コウ",
    radical: "購",
    componentHint: "classical radical 154",
    examples: [
      {word: "購入", reading: "こうにゅう", meaning: "purchase; buy"},
      {word: "購買", reading: "こうばい", meaning: "procurement; purchase"},
      {word: "購う", reading: "あがなう", meaning: "to compensate; to make up for"}
    ],
  },
  {
    kanji: "溝",
    keyword: "gutter/ditch",
    reading: "みぞ / コウ",
    radical: "溝",
    componentHint: "classical radical 85",
    examples: [
      {word: "海溝", reading: "かいこう", meaning: "ocean trench; deep"},
      {word: "蘆溝橋", reading: "ろこうきょう", meaning: "Marco Polo Bridge (China)"},
      {word: "盧溝橋", reading: "ろこうきょう", meaning: "Marco Polo Bridge (China)"}
    ],
  },
  {
    kanji: "仮",
    keyword: "sham/temporary",
    reading: "かり / かり- / カ / ケ",
    radical: "仮",
    componentHint: "classical radical 9",
    examples: [
      {word: "仮面", reading: "かめん", meaning: "mask; disguise"},
      {word: "仮に", reading: "かりに", meaning: "temporarily; provisionally"},
      {word: "仮定", reading: "かてい", meaning: "assumption; supposition"}
    ],
  },
  {
    kanji: "片",
    keyword: "one-sided/leaf",
    reading: "かた- / かた / ヘン",
    radical: "片",
    componentHint: "classical radical 91",
    examples: [
      {word: "片手", reading: "かたて", meaning: "one hand"},
      {word: "片づける", reading: "かたづける", meaning: "to tidy up; to put in order"},
      {word: "片方", reading: "かたほう", meaning: "one side; one party"}
    ],
  },
  {
    kanji: "版",
    keyword: "printing block/printing plate",
    reading: "ハン",
    radical: "版",
    componentHint: "classical radical 91",
    examples: [
      {word: "出版", reading: "しゅっぱん", meaning: "publication"},
      {word: "版画", reading: "はんが", meaning: "woodcut; woodblock print"},
      {word: "初版", reading: "しょはん", meaning: "first edition"}
    ],
  },
  {
    kanji: "板",
    keyword: "plank/board",
    reading: "いた / ハン / バン",
    radical: "板",
    componentHint: "classical radical 75",
    examples: [
      {word: "甲板", reading: "かんぱん", meaning: "deck (of a ship)"},
      {word: "看板", reading: "かんばん", meaning: "signboard; sign"},
      {word: "黒板", reading: "こくばん", meaning: "blackboard"}
    ],
  },
  {
    kanji: "販",
    keyword: "marketing/sell",
    reading: "ハン",
    radical: "販",
    componentHint: "classical radical 154",
    examples: [
      {word: "販売", reading: "はんばい", meaning: "sales; selling"},
      {word: "市販", reading: "しはん", meaning: "selling on the market (in the marketplace, in stores, etc.); making something commercially available"},
      {word: "自販機", reading: "じはんき", meaning: "vending machine"}
    ],
  },
  {
    kanji: "義",
    keyword: "righteousness/justice",
    reading: "ギ",
    radical: "義",
    componentHint: "classical radical 123",
    examples: [
      {word: "主義", reading: "しゅぎ", meaning: "doctrine; rule"},
      {word: "義務", reading: "ぎむ", meaning: "duty; obligation"},
      {word: "正義", reading: "せいぎ", meaning: "justice; right"}
    ],
  },
  {
    kanji: "議",
    keyword: "deliberation/consultation",
    reading: "ギ",
    radical: "議",
    componentHint: "classical radical 149",
    examples: [
      {word: "不思議", reading: "ふしぎ", meaning: "wonder; miracle"},
      {word: "会議", reading: "かいぎ", meaning: "meeting; conference"},
      {word: "議論", reading: "ぎろん", meaning: "argument; discussion"}
    ],
  },
  {
    kanji: "儀",
    keyword: "ceremony/rule",
    reading: "ギ",
    radical: "儀",
    componentHint: "classical radical 9",
    examples: [
      {word: "儀式", reading: "ぎしき", meaning: "ceremony; rite"},
      {word: "礼儀", reading: "れいぎ", meaning: "manners; courtesy"},
      {word: "葬儀", reading: "そうぎ", meaning: "funeral service"}
    ],
  },
  {
    kanji: "犠",
    keyword: "sacrifice",
    reading: "いけにえ / ギ / キ",
    radical: "犠",
    componentHint: "classical radical 93",
    examples: [
      {word: "犠牲", reading: "ぎせい", meaning: "victim; sacrifice"},
      {word: "犠飛", reading: "ぎひ", meaning: "sacrifice fly"},
      {word: "犠打", reading: "ぎだ", meaning: "sacrifice fly; bunt"}
    ],
  },
  {
    kanji: "牲",
    keyword: "animal sacrifice/offering",
    reading: "セイ",
    radical: "牲",
    componentHint: "classical radical 93",
    examples: [
      {word: "犠牲", reading: "ぎせい", meaning: "victim; sacrifice"},
      {word: "犠牲者", reading: "ぎせいしゃ", meaning: "victim"},
      {word: "犠牲的", reading: "ぎせいてき", meaning: "self-sacrificing"}
    ],
  },
  {
    kanji: "旨",
    keyword: "delicious/relish",
    reading: "むね / うま.い / シ",
    radical: "旨",
    componentHint: "classical radical 72",
    examples: [
      {word: "旨い", reading: "うまい", meaning: "skillful; clever"},
      {word: "趣旨", reading: "しゅし", meaning: "meaning; point (e.g. of a statement)"},
      {word: "宗旨", reading: "しゅうし", meaning: "tenets (doctrines) of a religious sect; (religious) sect"}
    ],
  },
  {
    kanji: "指",
    keyword: "finger/point to",
    reading: "ゆび / さ.す / -さ.し / シ",
    radical: "指",
    componentHint: "classical radical 64",
    examples: [
      {word: "指揮", reading: "しき", meaning: "command; direction"},
      {word: "指示", reading: "しじ", meaning: "indication; instruction"},
      {word: "指さす", reading: "ゆびさす", meaning: "to point at"}
    ],
  },
  {
    kanji: "揮",
    keyword: "brandish/wave",
    reading: "ふる.う / キ",
    radical: "揮",
    componentHint: "classical radical 64",
    examples: [
      {word: "指揮", reading: "しき", meaning: "command; direction"},
      {word: "発揮", reading: "はっき", meaning: "exhibition; demonstration"},
      {word: "揮う", reading: "ふるう", meaning: "to swing; to wield (physically)"}
    ],
  },
  {
    kanji: "輝",
    keyword: "radiance/shine",
    reading: "かがや.く / キ",
    radical: "輝",
    componentHint: "classical radical 159",
    examples: [
      {word: "輝く", reading: "かがやく", meaning: "to shine; to glitter"},
      {word: "輝き", reading: "かがやき", meaning: "brightness; brilliance"},
      {word: "輝かしい", reading: "かがやかしい", meaning: "brilliant; glorious"}
    ],
  },
  {
    kanji: "刺",
    keyword: "thorn/pierce",
    reading: "さ.す / さ.さる / さ.し / さし / シ",
    radical: "刺",
    componentHint: "classical radical 18",
    examples: [
      {word: "刺す", reading: "さす", meaning: "to pierce; to stab"},
      {word: "刺激", reading: "しげき", meaning: "stimulus; impetus"},
      {word: "名刺", reading: "めいし", meaning: "business card"}
    ],
  },
  {
    kanji: "策",
    keyword: "scheme/plan",
    reading: "サク",
    radical: "策",
    componentHint: "classical radical 118",
    examples: [
      {word: "対策", reading: "たいさく", meaning: "measure; provision"},
      {word: "政策", reading: "せいさく", meaning: "political measures; policy"},
      {word: "策略", reading: "さくりゃく", meaning: "scheme; tactic"}
    ],
  },
  {
    kanji: "差",
    keyword: "distinction/difference",
    reading: "さ.す / さ.し / サ",
    radical: "差",
    componentHint: "classical radical 48",
    examples: [
      {word: "差し出す", reading: "さしだす", meaning: "to present; to submit"},
      {word: "差す", reading: "さす", meaning: "to shine; to be visible"},
      {word: "指差す", reading: "ゆびさす", meaning: "to point at"}
    ],
  },
  {
    kanji: "着",
    keyword: "don/arrive",
    reading: "き.る / -ぎ / き.せる / -き.せ / チャク / ジャク",
    radical: "着",
    componentHint: "classical radical 123",
    examples: [
      {word: "着る", reading: "きる", meaning: "to wear (in modern Japanese, from the shoulders down); to put on"},
      {word: "着く", reading: "つく", meaning: "to arrive at; to reach"},
      {word: "落ち着く", reading: "おちつく", meaning: "to calm down; to compose oneself"}
    ],
  },
  {
    kanji: "看",
    keyword: "watch over/see",
    reading: "み.る / カン",
    radical: "看",
    componentHint: "classical radical 109",
    examples: [
      {word: "看護婦", reading: "かんごふ", meaning: "(female) nurse"},
      {word: "看板", reading: "かんばん", meaning: "signboard; sign"},
      {word: "看守", reading: "かんしゅ", meaning: "jailer; gaoler"}
    ],
  },
  {
    kanji: "到",
    keyword: "arrival/proceed",
    reading: "いた.る / トウ",
    radical: "到",
    componentHint: "classical radical 18",
    examples: [
      {word: "到着", reading: "とうちゃく", meaning: "arrival"},
      {word: "到達", reading: "とうたつ", meaning: "reaching; attaining"},
      {word: "到底", reading: "とうてい", meaning: "(cannot) possibly; no matter how"}
    ],
  },
  {
    kanji: "倒",
    keyword: "overthrow/fall",
    reading: "たお.れる / -だお.れ / たお.す / さかさま / トウ",
    radical: "倒",
    componentHint: "classical radical 9",
    examples: [
      {word: "倒れる", reading: "たおれる", meaning: "to fall; to collapse"},
      {word: "面倒", reading: "めんどう", meaning: "trouble; difficulty"},
      {word: "倒す", reading: "たおす", meaning: "to throw down; to bring down"}
    ],
  },
  {
    kanji: "論",
    keyword: "argument/discourse",
    reading: "ロン",
    radical: "論",
    componentHint: "classical radical 149",
    examples: [
      {word: "結論", reading: "けつろん", meaning: "conclusion"},
      {word: "勿論", reading: "もちろん", meaning: "of course; certainly"},
      {word: "議論", reading: "ぎろん", meaning: "argument; discussion"}
    ],
  },
  {
    kanji: "倫",
    keyword: "ethics/companion",
    reading: "リン",
    radical: "倫",
    componentHint: "classical radical 9",
    examples: [
      {word: "倫理", reading: "りんり", meaning: "ethics; morals"},
      {word: "不倫", reading: "ふりん", meaning: "adultery; immorality"},
      {word: "倫敦", reading: "ロンドン", meaning: "London"}
    ],
  },
  {
    kanji: "輪",
    keyword: "wheel/ring",
    reading: "わ / リン",
    radical: "輪",
    componentHint: "classical radical 159",
    examples: [
      {word: "指輪", reading: "ゆびわ", meaning: "(finger) ring"},
      {word: "輪郭", reading: "りんかく", meaning: "contour; outline"},
      {word: "車輪", reading: "しゃりん", meaning: "(car) wheel"}
    ],
  },
  {
    kanji: "輸",
    keyword: "transport/send",
    reading: "ユ / シュ",
    radical: "輸",
    componentHint: "classical radical 159",
    examples: [
      {word: "輸送", reading: "ゆそう", meaning: "transport; transportation"},
      {word: "輸入", reading: "ゆにゅう", meaning: "importation; import"},
      {word: "輸出", reading: "ゆしゅつ", meaning: "export; efferent"}
    ],
  },
  {
    kanji: "諭",
    keyword: "rebuke/admonish",
    reading: "さと.す / ユ",
    radical: "諭",
    componentHint: "classical radical 149",
    examples: [
      {word: "諭す", reading: "さとす", meaning: "to admonish; to persuade"},
      {word: "教諭", reading: "きょうゆ", meaning: "(licensed) teacher"},
      {word: "諭吉", reading: "ゆきち", meaning: "10,000 yen note"}
    ],
  },
  {
    kanji: "愉",
    keyword: "pleasure/happy",
    reading: "たの.しい / たの.しむ / ユ",
    radical: "愉",
    componentHint: "classical radical 61",
    examples: [
      {word: "愉快", reading: "ゆかい", meaning: "pleasant; happy"},
      {word: "不愉快", reading: "ふゆかい", meaning: "discomfort; unpleasantness"},
      {word: "愉しい", reading: "たのしい", meaning: "enjoyable; fun"}
    ],
  },
  {
    kanji: "癒",
    keyword: "healing/cure",
    reading: "い.える / いや.す / い.やす / ユ",
    radical: "癒",
    componentHint: "classical radical 104",
    examples: [
      {word: "癒す", reading: "いやす", meaning: "to heal; to cure"},
      {word: "癒える", reading: "いえる", meaning: "to recover; to be healed"},
      {word: "治癒", reading: "ちゆ", meaning: "healing; cure"}
    ],
  },
  {
    kanji: "台",
    keyword: "pedestal/a stand",
    reading: "うてな / われ / つかさ / ダイ / タイ",
    radical: "台",
    componentHint: "classical radical 30",
    examples: [
      {word: "舞台", reading: "ぶたい", meaning: "stage (theatre, theater); scene or setting (e.g. of novel, play, etc.)"},
      {word: "台所", reading: "だいどころ", meaning: "kitchen; financial situation"},
      {word: "寝台", reading: "しんだい", meaning: "bed; couch"}
    ],
  },
  {
    kanji: "治",
    keyword: "reign/be at peace",
    reading: "おさ.める / おさ.まる / なお.る / なお.す / ジ / チ",
    radical: "治",
    componentHint: "classical radical 85",
    examples: [
      {word: "政治", reading: "せいじ", meaning: "politics; government"},
      {word: "明治", reading: "めいじ", meaning: "Meiji era (1868.9.8-1912.7.30)"},
      {word: "治療", reading: "ちりょう", meaning: "medical treatment; cure"}
    ],
  },
  {
    kanji: "冶",
    keyword: "melting/smelting",
    reading: "い.る / ヤ",
    radical: "冶",
    componentHint: "classical radical 15",
    examples: [
      {word: "鍛冶屋", reading: "かじや", meaning: "smith; blacksmith"},
      {word: "鍛冶", reading: "かじ", meaning: "smithing; blacksmith"},
      {word: "刀鍛冶", reading: "かたなかじ", meaning: "swordsmith"}
    ],
  },
  {
    kanji: "療",
    keyword: "heal/cure",
    reading: "リョウ",
    radical: "療",
    componentHint: "classical radical 104",
    examples: [
      {word: "治療", reading: "ちりょう", meaning: "medical treatment; cure"},
      {word: "医療", reading: "いりょう", meaning: "medical care; medical treatment"},
      {word: "診療", reading: "しんりょう", meaning: "medical examination and treatment; diagnosis"}
    ],
  },
  {
    kanji: "僚",
    keyword: "colleague/official",
    reading: "リョウ",
    radical: "僚",
    componentHint: "classical radical 9",
    examples: [
      {word: "同僚", reading: "どうりょう", meaning: "coworker; co-worker"},
      {word: "官僚", reading: "かんりょう", meaning: "bureaucrat; bureaucracy"},
      {word: "幕僚", reading: "ばくりょう", meaning: "staff; staff officer"}
    ],
  },
  {
    kanji: "瞭",
    keyword: "clear",
    reading: "あきらか / リョウ",
    radical: "瞭",
    componentHint: "classical radical 109",
    examples: [
      {word: "明瞭", reading: "めいりょう", meaning: "clarity; clearness"},
      {word: "一目瞭然", reading: "いちもくりょうぜん", meaning: "apparent; obvious"},
      {word: "不明瞭", reading: "ふめいりょう", meaning: "dimness; obscurity"}
    ],
  },
  {
    kanji: "寮",
    keyword: "dormitory/hostel",
    reading: "リョウ",
    radical: "寮",
    componentHint: "classical radical 40",
    examples: [
      {word: "寮母", reading: "りょうぼ", meaning: "housemother; dorm mother"},
      {word: "御寮人", reading: "ごりょうにん", meaning: "mistress; madam"},
      {word: "寮生", reading: "りょうせい", meaning: "boarder; boarding student"}
    ],
  },
  {
    kanji: "始",
    keyword: "commence/begin",
    reading: "はじ.める / -はじ.める / はじ.まる / シ",
    radical: "始",
    componentHint: "classical radical 38",
    examples: [
      {word: "始める", reading: "はじめる", meaning: "to start; to begin"},
      {word: "始まる", reading: "はじまる", meaning: "to begin; to start"},
      {word: "開始", reading: "かいし", meaning: "start; commencement"}
    ],
  },
  {
    kanji: "終",
    keyword: "end/finish",
    reading: "お.わる / -お.わる / おわ.る / お.える / シュウ",
    radical: "終",
    componentHint: "classical radical 120",
    examples: [
      {word: "終わる", reading: "おわる", meaning: "to finish; to end"},
      {word: "終る", reading: "おわる", meaning: "to finish; to end"},
      {word: "終える", reading: "おえる", meaning: "to finish; to graduate"}
    ],
  },
  {
    kanji: "了",
    keyword: "complete/finish",
    reading: "リョウ",
    radical: "了",
    componentHint: "classical radical 6",
    examples: [
      {word: "了解", reading: "りょうかい", meaning: "comprehension; consent"},
      {word: "終了", reading: "しゅうりょう", meaning: "end; close"},
      {word: "完了", reading: "かんりょう", meaning: "completion; conclusion"}
    ],
  },
  {
    kanji: "承",
    keyword: "acquiesce/hear",
    reading: "うけたまわ.る / う.ける / ささ.げる / とど.める / ショウ / ジョウ",
    radical: "承",
    componentHint: "classical radical 64",
    examples: [
      {word: "承知", reading: "しょうち", meaning: "knowledge; awareness"},
      {word: "承る", reading: "うけたまわる", meaning: "to hear; to be told"},
      {word: "承諾", reading: "しょうだく", meaning: "consent; acquiescence"}
    ],
  },
  {
    kanji: "蒸",
    keyword: "steam/heat",
    reading: "む.す / む.れる / む.らす / ジョウ / セイ",
    radical: "蒸",
    componentHint: "classical radical 140",
    examples: [
      {word: "蒸気", reading: "じょうき", meaning: "steam; vapour"},
      {word: "蒸発", reading: "じょうはつ", meaning: "evaporation; disappearance (of people intentionally concealing their whereabouts)"},
      {word: "蒸す", reading: "ふかす", meaning: "to steam (food)"}
    ],
  },
  {
    kanji: "舞",
    keyword: "dance/flit",
    reading: "ま.う / -ま.う / まい / ブ",
    radical: "舞",
    componentHint: "classical radical 136",
    examples: [
      {word: "舞台", reading: "ぶたい", meaning: "stage (theatre, theater); scene or setting (e.g. of novel, play, etc.)"},
      {word: "舞う", reading: "まう", meaning: "to dance (orig. a whirling dance); to flutter about"},
      {word: "見舞い", reading: "みまい", meaning: "visiting ill or distressed people; writing get-well letters"}
    ],
  },
  {
    kanji: "隣",
    keyword: "neighboring",
    reading: "とな.る / となり / リン",
    radical: "隣",
    componentHint: "classical radical 170",
    examples: [
      {word: "隣る", reading: "となる", meaning: "to neighbor (neighbour); to be next to (esp. to live next door to)"},
      {word: "隣人", reading: "りんじん", meaning: "neighbour; neighbor"},
      {word: "隣室", reading: "りんしつ", meaning: "next or adjoining room"}
    ],
  },
  {
    kanji: "瞬",
    keyword: "wink/blink",
    reading: "またた.く / まじろ.ぐ / シュン",
    radical: "瞬",
    componentHint: "classical radical 109",
    examples: [
      {word: "瞬間", reading: "しゅんかん", meaning: "moment; second"},
      {word: "一瞬", reading: "いっしゅん", meaning: "moment; instant"},
      {word: "瞬時", reading: "しゅんじ", meaning: "moment; instant"}
    ],
  },
  {
    kanji: "夢",
    keyword: "dream/vision",
    reading: "ゆめ / ゆめ.みる / くら.い / ム / ボウ",
    radical: "夢",
    componentHint: "classical radical 36",
    examples: [
      {word: "夢中", reading: "むちゅう", meaning: "daze; (in a) trance"},
      {word: "悪夢", reading: "あくむ", meaning: "nightmare; bad dream"},
      {word: "夢にも", reading: "ゆめにも", meaning: "not in the slightest; not in one's wildest dreams"}
    ],
  },
  {
    kanji: "枝",
    keyword: "bough/branch",
    reading: "えだ / シ",
    radical: "枝",
    componentHint: "classical radical 75",
    examples: [
      {word: "小枝", reading: "こえだ", meaning: "twig; spray"},
      {word: "芳枝", reading: "ほうし", meaning: "fragrant branch of flowers"},
      {word: "枝葉", reading: "えだは", meaning: "leaves and branches; foliage"}
    ],
  },
  {
    kanji: "技",
    keyword: "skill/art",
    reading: "わざ / ギ",
    radical: "技",
    componentHint: "classical radical 64",
    examples: [
      {word: "技術", reading: "ぎじゅつ", meaning: "art; craft"},
      {word: "演技", reading: "えんぎ", meaning: "acting; performance"},
      {word: "競技", reading: "きょうぎ", meaning: "game; match"}
    ],
  },
  {
    kanji: "伎",
    keyword: "deed/skill",
    reading: "わざ / わざおぎ / ギ / キ",
    radical: "伎",
    componentHint: "classical radical 9",
    examples: [
      {word: "歌舞伎", reading: "かぶき", meaning: "kabuki; Japanese classical drama"},
      {word: "歌舞伎座", reading: "かぶきざ", meaning: "kabuki troupe; kabuki theater (theatre)"},
      {word: "伎倆", reading: "ぎりょう", meaning: "ability; competency"}
    ],
  },
  {
    kanji: "岐",
    keyword: "branch off/fork in road",
    reading: "キ / ギ",
    radical: "岐",
    componentHint: "classical radical 46",
    examples: [
      {word: "岐阜", reading: "ぎふ", meaning: "Gifu (city)"},
      {word: "分岐", reading: "ぶんき", meaning: "divergence (e.g. in a road); ramification"},
      {word: "多岐", reading: "たき", meaning: "digression; many divergences"}
    ],
  },
  {
    kanji: "峠",
    keyword: "mountain peak/mountain pass",
    reading: "とうげ",
    radical: "峠",
    componentHint: "classical radical 46",
    examples: [
      {word: "碓氷峠", reading: "うすいとうげ", meaning: "Usui Pass"},
      {word: "峠道", reading: "とうげみち", meaning: "road over a mountain pass"},
      {word: "峠越え", reading: "とうげごえ", meaning: "crossing a mountain pass"}
    ],
  },
  {
    kanji: "阜",
    keyword: "hill/mound",
    reading: "フ / フウ",
    radical: "阜",
    componentHint: "classical radical 170",
    examples: [
      {word: "岐阜", reading: "ぎふ", meaning: "Gifu (city)"},
      {word: "阜頭", reading: "ふとう", meaning: "pier; wharf"},
      {word: "陰阜", reading: "いんふ", meaning: "mons veneris; mons pubis"}
    ],
  },
  {
    kanji: "急",
    keyword: "hurry/emergency",
    reading: "いそ.ぐ / いそ.ぎ / キュウ",
    radical: "急",
    componentHint: "classical radical 61",
    examples: [
      {word: "急ぐ", reading: "いそぐ", meaning: "to hurry; to rush"},
      {word: "急速", reading: "きゅうそく", meaning: "rapid (e.g. progress)"},
      {word: "緊急", reading: "きんきゅう", meaning: "urgent; pressing"}
    ],
  },
  {
    kanji: "争",
    keyword: "contend/dispute",
    reading: "あらそ.う / いか.でか / ソウ",
    radical: "争",
    componentHint: "classical radical 87",
    examples: [
      {word: "戦争", reading: "せんそう", meaning: "war"},
      {word: "争う", reading: "あらそう", meaning: "to compete; to contest"},
      {word: "争い", reading: "あらそい", meaning: "dispute; strife"}
    ],
  },
  {
    kanji: "情",
    keyword: "feelings/emotion",
    reading: "なさ.け / ジョウ / セイ",
    radical: "情",
    componentHint: "classical radical 61",
    examples: [
      {word: "表情", reading: "ひょうじょう", meaning: "facial expression; countenance"},
      {word: "情報", reading: "じょうほう", meaning: "information; news"},
      {word: "感情", reading: "かんじょう", meaning: "emotion; feeling"}
    ],
  },
  {
    kanji: "清",
    keyword: "pure/purify",
    reading: "きよ.い / きよ.まる / きよ.める / セイ / ショウ / シン",
    radical: "清",
    componentHint: "classical radical 85",
    examples: [
      {word: "清水", reading: "しみず", meaning: "spring water; clear (pure) water"},
      {word: "清潔", reading: "せいけつ", meaning: "clean; hygienic"},
      {word: "清らか", reading: "きよらか", meaning: "clean; pure"}
    ],
  },
  {
    kanji: "晴",
    keyword: "clear up",
    reading: "は.れる / は.れ / は.れ- / -ば.れ / セイ",
    radical: "晴",
    componentHint: "classical radical 72",
    examples: [
      {word: "晴れる", reading: "はれる", meaning: "to clear up; to clear away"},
      {word: "素晴らしい", reading: "すばらしい", meaning: "wonderful; splendid"},
      {word: "晴れ", reading: "はれ", meaning: "clear weather; fine weather"}
    ],
  },
  {
    kanji: "精",
    keyword: "refined/ghost",
    reading: "セイ / ショウ / シヤウ",
    radical: "精",
    componentHint: "classical radical 119",
    examples: [
      {word: "精神", reading: "せいしん", meaning: "mind; soul"},
      {word: "精霊", reading: "せいれい", meaning: "spirit; soul"},
      {word: "妖精", reading: "ようせい", meaning: "fairy; sprite"}
    ],
  },
  {
    kanji: "請",
    keyword: "solicit/invite",
    reading: "こ.う / う.ける / セイ / シン / ショウ",
    radical: "請",
    componentHint: "classical radical 149",
    examples: [
      {word: "要請", reading: "ようせい", meaning: "appeal; call for something"},
      {word: "請求", reading: "せいきゅう", meaning: "claim; demand"},
      {word: "申請", reading: "しんせい", meaning: "application; request"}
    ],
  },
  {
    kanji: "静",
    keyword: "quiet",
    reading: "しず- / しず.か / しず.まる / しず.める / セイ / ジョウ",
    radical: "静",
    componentHint: "classical radical 174",
    examples: [
      {word: "静か", reading: "しずか", meaning: "quiet; silent"},
      {word: "冷静", reading: "れいせい", meaning: "calm; composure"},
      {word: "平静", reading: "へいせい", meaning: "calm; serenity"}
    ],
  },
  {
    kanji: "浄",
    keyword: "clean/purify",
    reading: "きよ.める / きよ.い / ジョウ / セイ",
    radical: "浄",
    componentHint: "classical radical 85",
    examples: [
      {word: "清浄", reading: "せいじょう", meaning: "pure; clean"},
      {word: "浄化", reading: "じょうか", meaning: "purification; cleanup"},
      {word: "浄土", reading: "じょうど", meaning: "Pure Land (esp. the Western Pure Land paradise of Amitabha); Pure Land Buddhism"}
    ],
  },
  {
    kanji: "算",
    keyword: "calculate/divining",
    reading: "そろ / サン",
    radical: "算",
    componentHint: "classical radical 118",
    examples: [
      {word: "計算", reading: "けいさん", meaning: "calculation; reckoning"},
      {word: "予算", reading: "よさん", meaning: "estimate; budget"},
      {word: "算段", reading: "さんだん", meaning: "contriving; managing"}
    ],
  },
  {
    kanji: "答",
    keyword: "solution/answer",
    reading: "こた.える / こた.え / トウ",
    radical: "答",
    componentHint: "classical radical 118",
    examples: [
      {word: "答える", reading: "こたえる", meaning: "to answer; to reply"},
      {word: "答え", reading: "こたえ", meaning: "answer; reply"},
      {word: "返答", reading: "へんとう", meaning: "reply; answer"}
    ],
  },
  {
    kanji: "符",
    keyword: "token/sign",
    reading: "フ",
    radical: "符",
    componentHint: "classical radical 118",
    examples: [
      {word: "切符", reading: "きっぷ", meaning: "ticket"},
      {word: "護符", reading: "ごふう", meaning: "talisman; amulet"},
      {word: "符合", reading: "ふごう", meaning: "agreeing; coincidence"}
    ],
  },
  {
    kanji: "博",
    keyword: "Dr./command",
    reading: "ハク / バク",
    radical: "博",
    componentHint: "classical radical 24",
    examples: [
      {word: "博士", reading: "はかせ", meaning: "doctorate; PhD"},
      {word: "博物館", reading: "はくぶつかん", meaning: "museum"},
      {word: "博雅", reading: "はくが", meaning: "well-informed; accomplished (individual)"}
    ],
  },
  {
    kanji: "縛",
    keyword: "truss/arrest",
    reading: "しば.る / バク",
    radical: "縛",
    componentHint: "classical radical 120",
    examples: [
      {word: "縛る", reading: "しばる", meaning: "to tie; to bind"},
      {word: "縛りつける", reading: "しばりつける", meaning: "to tie; to restrain"},
      {word: "束縛", reading: "そくばく", meaning: "restraint; restriction"}
    ],
  },
  {
    kanji: "簿",
    keyword: "register/record book",
    reading: "ボ",
    radical: "簿",
    componentHint: "classical radical 118",
    examples: [
      {word: "名簿", reading: "めいぼ", meaning: "register of names; list of names"},
      {word: "帳簿", reading: "ちょうぼ", meaning: "account book; register"},
      {word: "簿記", reading: "ぼき", meaning: "journalization (accounts); journalisation"}
    ],
  },
  {
    kanji: "薄",
    keyword: "dilute/thin",
    reading: "うす.い / うす- / -うす / うす.める / ハク",
    radical: "薄",
    componentHint: "classical radical 140",
    examples: [
      {word: "薄い", reading: "うすい", meaning: "thin; pale"},
      {word: "薄暗い", reading: "うすぐらい", meaning: "dim; gloomy"},
      {word: "薄れる", reading: "うすれる", meaning: "to fade; to become dim"}
    ],
  },
  {
    kanji: "采",
    keyword: "dice/form",
    reading: "と.る / いろどり / サイ",
    radical: "采",
    componentHint: "classical radical 87",
    examples: [
      {word: "喝采", reading: "かっさい", meaning: "acclamation; applause"},
      {word: "風采", reading: "ふうさい", meaning: "appearance; air"},
      {word: "采女", reading: "うねめ", meaning: "maid-in-waiting (ritsuryo system)"}
    ],
  },
  {
    kanji: "菜",
    keyword: "vegetable/side dish",
    reading: "な / サイ",
    radical: "菜",
    componentHint: "classical radical 140",
    examples: [
      {word: "野菜", reading: "やさい", meaning: "vegetable"},
      {word: "菜園", reading: "さいえん", meaning: "vegetable garden"},
      {word: "山菜", reading: "さんさい", meaning: "edible wild plants"}
    ],
  },
  {
    kanji: "採",
    keyword: "pick/take",
    reading: "と.る / サイ",
    radical: "採",
    componentHint: "classical radical 64",
    examples: [
      {word: "採用", reading: "さいよう", meaning: "use; adoption"},
      {word: "採る", reading: "とる", meaning: "to adopt (measure, proposal); to pick (e.g. fruit)"},
      {word: "採取", reading: "さいしゅ", meaning: "picking; collecting"}
    ],
  },
  {
    kanji: "彩",
    keyword: "coloring/paint",
    reading: "いろど.る / サイ",
    radical: "彩",
    componentHint: "classical radical 59",
    examples: [
      {word: "色彩", reading: "しきさい", meaning: "colour; color"},
      {word: "彩る", reading: "いろどる", meaning: "to colour; to color"},
      {word: "彩色", reading: "さいしき", meaning: "colouring; coloring"}
    ],
  },
  {
    kanji: "杉",
    keyword: "cedar/cryptomeria",
    reading: "すぎ / サン",
    radical: "杉",
    componentHint: "classical radical 75",
    examples: [
      {word: "小杉", reading: "こすぎ", meaning: "small cedar; thin Japanese paper (used as tissue during the Edo period)"},
      {word: "杉林", reading: "すぎばやし", meaning: "cryptomeria forest"},
      {word: "杉戸", reading: "すぎど", meaning: "door made of cedar"}
    ],
  },
  {
    kanji: "街",
    keyword: "boulevard/street",
    reading: "まち / ガイ / カイ",
    radical: "街",
    componentHint: "classical radical 144",
    examples: [
      {word: "街道", reading: "かいどう", meaning: "highway (esp. one existing from the Edo period); main road"},
      {word: "街路", reading: "がいろ", meaning: "road; street"},
      {word: "市街", reading: "しがい", meaning: "urban areas; the streets"}
    ],
  },
  {
    kanji: "術",
    keyword: "art/technique",
    reading: "すべ / ジュツ",
    radical: "術",
    componentHint: "classical radical 144",
    examples: [
      {word: "技術", reading: "ぎじゅつ", meaning: "art; craft"},
      {word: "魔術", reading: "まじゅつ", meaning: "black magic; sorcery"},
      {word: "手術", reading: "しゅじゅつ", meaning: "(surgical) operation; procedure"}
    ],
  },
  {
    kanji: "述",
    keyword: "mention/state",
    reading: "の.べる / ジュツ",
    radical: "述",
    componentHint: "classical radical 162",
    examples: [
      {word: "述べる", reading: "のべる", meaning: "to state; to express"},
      {word: "記述", reading: "きじゅつ", meaning: "description; descriptor"},
      {word: "供述", reading: "きょうじゅつ", meaning: "affidavit; deposition"}
    ],
  },
  {
    kanji: "余",
    keyword: "too much/myself",
    reading: "あま.る / あま.り / あま.す / あんま.り / ヨ",
    radical: "余",
    componentHint: "classical radical 9",
    examples: [
      {word: "余裕", reading: "よゆう", meaning: "surplus; composure"},
      {word: "余計", reading: "よけい", meaning: "too many; too much"},
      {word: "余り", reading: "あまり", meaning: "remainder; rest"}
    ],
  },
  {
    kanji: "除",
    keyword: "exclude/division (x/3)",
    reading: "のぞ.く / -よ.け / ジョ / ジ",
    radical: "除",
    componentHint: "classical radical 170",
    examples: [
      {word: "掃除", reading: "そうじ", meaning: "cleaning; sweeping"},
      {word: "除く", reading: "のぞく", meaning: "to remove; to eliminate"},
      {word: "解除", reading: "かいじょ", meaning: "cancellation; rescinding"}
    ],
  },
  {
    kanji: "徐",
    keyword: "gradually/slowly",
    reading: "おもむ.ろに / ジョ",
    radical: "徐",
    componentHint: "classical radical 60",
    examples: [
      {word: "徐行", reading: "じょこう", meaning: "going slowly"},
      {word: "徐々", reading: "じょじょ", meaning: "gradually; steadily"},
      {word: "徐に", reading: "おもむろに", meaning: "suddenly; abruptly"}
    ],
  },
  {
    kanji: "叙",
    keyword: "confer/relate",
    reading: "つい.ず / ついで / ジョ",
    radical: "叙",
    componentHint: "classical radical 29",
    examples: [
      {word: "叙述", reading: "じょじゅつ", meaning: "description"},
      {word: "叙事詩", reading: "じょじし", meaning: "descriptive poetry; epic poem"},
      {word: "自叙伝", reading: "じじょでん", meaning: "autobiography"}
    ],
  },
  {
    kanji: "斜",
    keyword: "diagonal/slanting",
    reading: "なな.め / はす / シャ",
    radical: "斜",
    componentHint: "classical radical 68",
    examples: [
      {word: "斜め", reading: "ななめ", meaning: "slanting; tilted"},
      {word: "斜面", reading: "しゃめん", meaning: "slope; slanting surface"},
      {word: "傾斜", reading: "けいしゃ", meaning: "inclination; slant"}
    ],
  },
  {
    kanji: "途",
    keyword: "route/way",
    reading: "みち / ト",
    radical: "途",
    componentHint: "classical radical 162",
    examples: [
      {word: "途中", reading: "とちゅう", meaning: "on the way; en route"},
      {word: "途端", reading: "とたん", meaning: "just (now, at the moment, etc.)"},
      {word: "途方", reading: "とほう", meaning: "way; destination"}
    ],
  },
  {
    kanji: "塗",
    keyword: "paint/plaster",
    reading: "ぬ.る / ぬ.り / まみ.れる / ト",
    radical: "塗",
    componentHint: "classical radical 32",
    examples: [
      {word: "塗る", reading: "ぬる", meaning: "to paint; to plaster"},
      {word: "塗り", reading: "ぬり", meaning: "coating (esp. lacquering)"},
      {word: "塗料", reading: "とりょう", meaning: "paints; painting material"}
    ],
  },
  {
    kanji: "漆",
    keyword: "lacquer/varnish",
    reading: "うるし / シツ",
    radical: "漆",
    componentHint: "classical radical 85",
    examples: [
      {word: "漆黒", reading: "しっこく", meaning: "jet black"},
      {word: "漆喰", reading: "しっくい", meaning: "mortar; plaster"},
      {word: "漆器", reading: "しっき", meaning: "lacquer ware; lacquerware"}
    ],
  },
  {
    kanji: "仙",
    keyword: "hermit/wizard",
    reading: "セン / セント",
    radical: "仙",
    componentHint: "classical radical 9",
    examples: [
      {word: "仙台", reading: "せんだい", meaning: "Sendai (city)"},
      {word: "仙人", reading: "せんにん", meaning: "immortal mountain wizard (in Taoism); mountain man (esp. a hermit)"},
      {word: "仙女", reading: "せんにょ", meaning: "fairy; nymph"}
    ],
  },
  {
    kanji: "垂",
    keyword: "droop/suspend",
    reading: "た.れる / た.らす / た.れ / -た.れ / スイ",
    radical: "垂",
    componentHint: "classical radical 32",
    examples: [
      {word: "垂れる", reading: "たれる", meaning: "to hang; to droop"},
      {word: "垂らす", reading: "たらす", meaning: "to dribble; to spill"},
      {word: "垂直", reading: "すいちょく", meaning: "vertical; perpendicular"}
    ],
  },
  {
    kanji: "乗",
    keyword: "ride/power",
    reading: "の.る / -の.り / の.せる / ジョウ / ショウ",
    radical: "乗",
    componentHint: "classical radical 4",
    examples: [
      {word: "乗る", reading: "のる", meaning: "to get on (train, plane, bus, ship, etc.); to get in"},
      {word: "乗せる", reading: "のせる", meaning: "to place on (something); to give (someone) a ride"},
      {word: "名乗る", reading: "なのる", meaning: "to call oneself (name, label, etc.); to give one's name (as)"}
    ],
  },
  {
    kanji: "兼",
    keyword: "concurrently/and",
    reading: "か.ねる / -か.ねる / ケン",
    radical: "兼",
    componentHint: "classical radical 12",
    examples: [
      {word: "兼ねる", reading: "かねる", meaning: "to be unable to; to find difficult (unpleasant, awkward, painful) to do"},
      {word: "気兼ね", reading: "きがね", meaning: "hesitance; diffidence"},
      {word: "兼用", reading: "けんよう", meaning: "multi-use; combined use"}
    ],
  },
  {
    kanji: "剰",
    keyword: "surplus/besides",
    reading: "あまつさえ / あま.り / あま.る / ジョウ",
    radical: "剰",
    componentHint: "classical radical 18",
    examples: [
      {word: "過剰", reading: "かじょう", meaning: "excess; over-"},
      {word: "余剰", reading: "よじょう", meaning: "redundant; surplus"},
      {word: "剰余", reading: "じょうよ", meaning: "surplus; balance"}
    ],
  },
  {
    kanji: "睡",
    keyword: "drowsy/sleep",
    reading: "ねむ.る / ねむ.い / スイ",
    radical: "睡",
    componentHint: "classical radical 109",
    examples: [
      {word: "睡眠", reading: "すいみん", meaning: "sleep"},
      {word: "睡る", reading: "ねむる", meaning: "to sleep (not necessarily lying down); to die"},
      {word: "睡眠薬", reading: "すいみんやく", meaning: "sleeping pill; sleep medication"}
    ],
  },
  {
    kanji: "眠",
    keyword: "sleep/die",
    reading: "ねむ.る / ねむ.い / ミン",
    radical: "眠",
    componentHint: "classical radical 109",
    examples: [
      {word: "眠る", reading: "ねむる", meaning: "to sleep (not necessarily lying down); to die"},
      {word: "眠り", reading: "ねむり", meaning: "sleep; sleeping"},
      {word: "眠い", reading: "ねむい", meaning: "sleepy; drowsy"}
    ],
  },
  {
    kanji: "郵",
    keyword: "mail/stagecoach stop",
    reading: "ユウ",
    radical: "郵",
    componentHint: "classical radical 163",
    examples: [
      {word: "郵便", reading: "ゆうびん", meaning: "mail service; postal service"},
      {word: "郵便受け", reading: "ゆうびんうけ", meaning: "mailbox; letter box"},
      {word: "郵送", reading: "ゆうそう", meaning: "mailing"}
    ],
  },
  {
    kanji: "錘",
    keyword: "weight/plumb bob",
    reading: "つむ / おもり / スイ",
    radical: "錘",
    componentHint: "classical radical 167",
    examples: [
      {word: "紡錘", reading: "ぼうすい", meaning: "spindle"},
      {word: "紡錘形", reading: "ぼうすいけい", meaning: "spindle-shaped"},
      {word: "休錘", reading: "きゅうすい", meaning: "idle spindles"}
    ],
  },
  {
    kanji: "華",
    keyword: "splendor/flower",
    reading: "はな / カ / ケ",
    radical: "華",
    componentHint: "classical radical 140",
    examples: [
      {word: "豪華", reading: "ごうか", meaning: "wonderful; gorgeous"},
      {word: "華やか", reading: "はなやか", meaning: "showy; brilliant"},
      {word: "華奢", reading: "きゃしゃ", meaning: "dainty; delicate"}
    ],
  },
  {
    kanji: "侵",
    keyword: "encroach/invade",
    reading: "おか.す / シン",
    radical: "侵",
    componentHint: "classical radical 9",
    examples: [
      {word: "侵入", reading: "しんにゅう", meaning: "invasion; incursion"},
      {word: "侵略", reading: "しんりゃく", meaning: "aggression; invasion"},
      {word: "侵攻", reading: "しんこう", meaning: "invasion"}
    ],
  },
  {
    kanji: "浸",
    keyword: "immersed/soak",
    reading: "ひた.す / ひた.る / シン",
    radical: "浸",
    componentHint: "classical radical 85",
    examples: [
      {word: "浸る", reading: "ひたる", meaning: "to be soaked in; to be flooded"},
      {word: "浸す", reading: "ひたす", meaning: "to soak; to dip"},
      {word: "浸透", reading: "しんとう", meaning: "permeation; penetration"}
    ],
  },
  {
    kanji: "寝",
    keyword: "lie down/sleep",
    reading: "ね.る / ね.かす / い.ぬ / みたまや / シン",
    radical: "寝",
    componentHint: "classical radical 40",
    examples: [
      {word: "寝る", reading: "ねる", meaning: "to lie down; to go to bed"},
      {word: "寝室", reading: "しんしつ", meaning: "bedroom"},
      {word: "寝台", reading: "しんだい", meaning: "bed; couch"}
    ],
  },
  {
    kanji: "掃",
    keyword: "sweep/brush",
    reading: "は.く / ソウ / シュ",
    radical: "掃",
    componentHint: "classical radical 64",
    examples: [
      {word: "掃除", reading: "そうじ", meaning: "cleaning; sweeping"},
      {word: "掃く", reading: "はく", meaning: "to sweep; to brush"},
      {word: "一掃", reading: "いっそう", meaning: "clean sweep; purging"}
    ],
  },
  {
    kanji: "婦",
    keyword: "lady/woman",
    reading: "よめ / フ",
    radical: "婦",
    componentHint: "classical radical 38",
    examples: [
      {word: "夫婦", reading: "ふうふ", meaning: "married couple; spouses"},
      {word: "婦人", reading: "ふじん", meaning: "woman; lady"},
      {word: "看護婦", reading: "かんごふ", meaning: "(female) nurse"}
    ],
  },
  {
    kanji: "帰",
    keyword: "homecoming/arrive at",
    reading: "かえ.る / かえ.す / おく.る / とつ.ぐ / キ",
    radical: "帰",
    componentHint: "classical radical 18",
    examples: [
      {word: "帰る", reading: "かえる", meaning: "to return; to come home"},
      {word: "帰り", reading: "かえり", meaning: "return; coming back"},
      {word: "帰国", reading: "きこく", meaning: "return to one's country"}
    ],
  },
  {
    kanji: "戻",
    keyword: "re-/return",
    reading: "もど.す / もど.る / レイ",
    radical: "戻",
    componentHint: "classical radical 63",
    examples: [
      {word: "戻る", reading: "もどる", meaning: "to turn back (e.g. half-way); to return"},
      {word: "戻す", reading: "もどす", meaning: "to put back; to return"},
      {word: "取り戻す", reading: "とりもどす", meaning: "to take back; to regain"}
    ],
  },
  {
    kanji: "涙",
    keyword: "tears/sympathy",
    reading: "なみだ / ルイ / レイ",
    radical: "涙",
    componentHint: "classical radical 85",
    examples: [
      {word: "涙ぐむ", reading: "なみだぐむ", meaning: "to be moved to tears"},
      {word: "涙声", reading: "なみだごえ", meaning: "tearful voice"},
      {word: "催涙", reading: "さいるい", meaning: "lacrimator; dacryagogue"}
    ],
  },
  {
    kanji: "射",
    keyword: "shoot/shine into",
    reading: "い.る / さ.す / う.つ / シャ",
    radical: "射",
    componentHint: "classical radical 41",
    examples: [
      {word: "反射", reading: "はんしゃ", meaning: "reflection; reverberation"},
      {word: "発射", reading: "はっしゃ", meaning: "firing; shooting"},
      {word: "射る", reading: "いる", meaning: "to shoot (arrow, bolt, dart)"}
    ],
  },
  {
    kanji: "謝",
    keyword: "apologize/thank",
    reading: "あやま.る / シャ",
    radical: "謝",
    componentHint: "classical radical 149",
    examples: [
      {word: "感謝", reading: "かんしゃ", meaning: "thanks; gratitude"},
      {word: "謝る", reading: "あやまる", meaning: "to apologize; to apologise"},
      {word: "謝罪", reading: "しゃざい", meaning: "apology"}
    ],
  },
  {
    kanji: "討",
    keyword: "chastise/attack",
    reading: "う.つ / トウ",
    radical: "討",
    componentHint: "classical radical 149",
    examples: [
      {word: "討つ", reading: "うつ", meaning: "to shoot (at); to attack"},
      {word: "検討", reading: "けんとう", meaning: "consideration; examination"},
      {word: "討伐", reading: "とうばつ", meaning: "subjugation; suppression"}
    ],
  },
  {
    kanji: "訂",
    keyword: "revise/correct",
    reading: "テイ",
    radical: "訂",
    componentHint: "classical radical 149",
    examples: [
      {word: "訂正", reading: "ていせい", meaning: "correction; revision"},
      {word: "改訂", reading: "かいてい", meaning: "revision (of text); alteration"},
      {word: "校訂", reading: "こうてい", meaning: "revision"}
    ],
  },
  {
    kanji: "打",
    keyword: "strike/hit",
    reading: "う.つ / う.ち- / ぶ.つ / ダ / ダアス",
    radical: "打",
    componentHint: "classical radical 64",
    examples: [
      {word: "打つ", reading: "うつ", meaning: "to hit; to strike"},
      {word: "打ち明ける", reading: "うちあける", meaning: "to be frank; to speak one's mind"},
      {word: "舌打ち", reading: "したうち", meaning: "smacking lips; clicking tongue"}
    ],
  },
  {
    kanji: "撃",
    keyword: "beat/attack",
    reading: "う.つ / ゲキ",
    radical: "撃",
    componentHint: "classical radical 64",
    examples: [
      {word: "攻撃", reading: "こうげき", meaning: "attack; strike"},
      {word: "撃つ", reading: "うつ", meaning: "to shoot (at); to attack"},
      {word: "衝撃", reading: "しょうげき", meaning: "shock; crash"}
    ],
  },
  {
    kanji: "拭",
    keyword: "wipe/mop",
    reading: "ぬぐ.う / ふ.く / ショク / シキ",
    radical: "拭",
    componentHint: "classical radical 64",
    examples: [
      {word: "拭く", reading: "ふく", meaning: "to wipe; to dry"},
      {word: "拭う", reading: "ぬぐう", meaning: "to wipe; to get rid of"},
      {word: "手拭", reading: "てふき", meaning: "(hand) towel; handkerchief"}
    ],
  },
  {
    kanji: "試",
    keyword: "test/try",
    reading: "こころ.みる / ため.す / シ",
    radical: "試",
    componentHint: "classical radical 149",
    examples: [
      {word: "試合", reading: "しあい", meaning: "match; game"},
      {word: "試験", reading: "しけん", meaning: "examination; test"},
      {word: "試みる", reading: "こころみる", meaning: "to try; to attempt"}
    ],
  },
  {
    kanji: "検",
    keyword: "examination/investigate",
    reading: "しら.べる / ケン",
    radical: "検",
    componentHint: "classical radical 75",
    examples: [
      {word: "検事", reading: "けんじ", meaning: "public prosecutor"},
      {word: "検査", reading: "けんさ", meaning: "inspection (e.g. customs, factory); examination"},
      {word: "検討", reading: "けんとう", meaning: "consideration; examination"}
    ],
  },
  {
    kanji: "験",
    keyword: "verification/effect",
    reading: "あかし / しるし / ため.す / ためし / ケン / ゲン",
    radical: "験",
    componentHint: "classical radical 187",
    examples: [
      {word: "経験", reading: "けいけん", meaning: "experience"},
      {word: "実験", reading: "じっけん", meaning: "experiment"},
      {word: "体験", reading: "たいけん", meaning: "personal experience; physical experience"}
    ],
  },
  {
    kanji: "険",
    keyword: "precipitous/inaccessible place",
    reading: "けわ.しい / ケン",
    radical: "険",
    componentHint: "classical radical 170",
    examples: [
      {word: "危険", reading: "きけん", meaning: "danger; peril"},
      {word: "冒険", reading: "ぼうけん", meaning: "risk; venture"},
      {word: "保険", reading: "ほけん", meaning: "insurance; guarantee"}
    ],
  },
  {
    kanji: "倹",
    keyword: "frugal/economy",
    reading: "つま.しい / つづまやか / ケン",
    radical: "倹",
    componentHint: "classical radical 9",
    examples: [
      {word: "倹約", reading: "けんやく", meaning: "thrift; economy"},
      {word: "節倹", reading: "せっけん", meaning: "economy; thrift"},
      {word: "勤倹", reading: "きんけん", meaning: "industry; diligence"}
    ],
  },
  {
    kanji: "剣",
    keyword: "sabre/sword",
    reading: "つるぎ / ケン",
    radical: "剣",
    componentHint: "classical radical 18",
    examples: [
      {word: "真剣", reading: "しんけん", meaning: "seriousness; earnestness"},
      {word: "短剣", reading: "たんけん", meaning: "short sword; dagger"},
      {word: "剣士", reading: "けんし", meaning: "swordsman; swordswoman"}
    ],
  },
  {
    kanji: "谷",
    keyword: "valley",
    reading: "たに / きわ.まる / コク",
    radical: "谷",
    componentHint: "classical radical 150",
    examples: [
      {word: "谷間", reading: "たにま", meaning: "valley; ravine"},
      {word: "谷川", reading: "たにがわ", meaning: "mountain stream"},
      {word: "峡谷", reading: "きょうこく", meaning: "glen; ravine"}
    ],
  },
  {
    kanji: "欲",
    keyword: "longing/covetousness",
    reading: "ほっ.する / ほ.しい / ヨク",
    radical: "欲",
    componentHint: "classical radical 76",
    examples: [
      {word: "欲しい", reading: "ほしい", meaning: "wanted; wished for"},
      {word: "欲望", reading: "よくぼう", meaning: "desire; appetite"},
      {word: "食欲", reading: "しょくよく", meaning: "appetite (for food)"}
    ],
  },
  {
    kanji: "浴",
    keyword: "bathe/be favored with",
    reading: "あ.びる / あ.びせる / ヨク",
    radical: "浴",
    componentHint: "classical radical 85",
    examples: [
      {word: "浴びる", reading: "あびる", meaning: "to dash over oneself (e.g. water); to take (e.g. shower)"},
      {word: "浴衣", reading: "ゆかた", meaning: "yukata (light cotton kimono worn in the summer or used as a bathrobe)"},
      {word: "浴びせる", reading: "あびせる", meaning: "to pour on"}
    ],
  },
  {
    kanji: "容",
    keyword: "contain/form",
    reading: "い.れる / ヨウ",
    radical: "容",
    componentHint: "classical radical 40",
    examples: [
      {word: "内容", reading: "ないよう", meaning: "subject; contents"},
      {word: "容易", reading: "ようい", meaning: "easy; simple"},
      {word: "容赦", reading: "ようしゃ", meaning: "pardon; forgiveness"}
    ],
  },
  {
    kanji: "溶",
    keyword: "melt/dissolve",
    reading: "と.ける / と.かす / と.く / ヨウ",
    radical: "溶",
    componentHint: "classical radical 85",
    examples: [
      {word: "溶ける", reading: "とける", meaning: "to melt; to thaw"},
      {word: "溶かす", reading: "とかす", meaning: "to melt; to dissolve"},
      {word: "溶け込む", reading: "とけこむ", meaning: "to melt into; to merge into"}
    ],
  },
  {
    kanji: "俗",
    keyword: "vulgar/customs",
    reading: "ゾク",
    radical: "俗",
    componentHint: "classical radical 9",
    examples: [
      {word: "風俗", reading: "ふうぞく", meaning: "manners; customs"},
      {word: "民俗", reading: "みんぞく", meaning: "folk customs; folkways"},
      {word: "世俗", reading: "せぞく", meaning: "common customs; worldliness"}
    ],
  },
  {
    kanji: "裕",
    keyword: "abundant/rich",
    reading: "ユウ",
    radical: "裕",
    componentHint: "classical radical 145",
    examples: [
      {word: "余裕", reading: "よゆう", meaning: "surplus; composure"},
      {word: "裕福", reading: "ゆうふく", meaning: "affluence; prosperity"},
      {word: "富裕", reading: "ふゆう", meaning: "wealth; riches"}
    ],
  },
  {
    kanji: "寛",
    keyword: "tolerant/leniency",
    reading: "くつろ.ぐ / ひろ.い / ゆる.やか / カン",
    radical: "寛",
    componentHint: "classical radical 40",
    examples: [
      {word: "寛大", reading: "かんだい", meaning: "tolerance; liberality"},
      {word: "寛容", reading: "かんよう", meaning: "tolerance; open-mindedness"},
      {word: "寛永", reading: "かんえい", meaning: "Kan'ei era (1624.2.30-1644.12.16)"}
    ],
  },
  {
    kanji: "甘",
    keyword: "sweet/coax",
    reading: "あま.い / あま.える / あま.やかす / うま.い / カン",
    radical: "甘",
    componentHint: "classical radical 99",
    examples: [
      {word: "甘い", reading: "あまい", meaning: "sweet-tasting; sweet"},
      {word: "甘える", reading: "あまえる", meaning: "to behave like a spoiled child; to behave like a spoilt child"},
      {word: "甘美", reading: "かんび", meaning: "sweet (e.g. fruit, melody, dream); luscious"}
    ],
  },
  {
    kanji: "紺",
    keyword: "dark blue/navy",
    reading: "コン",
    radical: "紺",
    componentHint: "classical radical 120",
    examples: [
      {word: "紺色", reading: "こんいろ", meaning: "deep blue; navy blue"},
      {word: "濃紺", reading: "のうこん", meaning: "dark blue"},
      {word: "紺碧", reading: "こんぺき", meaning: "deep blue; azure"}
    ],
  },
  {
    kanji: "紅",
    keyword: "crimson/deep red",
    reading: "べに / くれない / あか.い / コウ / ク",
    radical: "紅",
    componentHint: "classical radical 120",
    examples: [
      {word: "紅茶", reading: "こうちゃ", meaning: "black tea"},
      {word: "紅葉", reading: "こうよう", meaning: "autumn colours; fall colors"},
      {word: "紅い", reading: "あかい", meaning: "red; Red (i.e. communist)"}
    ],
  },
  {
    kanji: "攻",
    keyword: "aggression/attack",
    reading: "せ.める / コウ",
    radical: "攻",
    componentHint: "classical radical 48",
    examples: [
      {word: "攻撃", reading: "こうげき", meaning: "attack; strike"},
      {word: "攻める", reading: "せめる", meaning: "to attack; to assault"},
      {word: "攻略", reading: "こうりゃく", meaning: "capture; strategy guide"}
    ],
  },
  {
    kanji: "功",
    keyword: "achievement/merits",
    reading: "いさお / コウ / ク",
    radical: "功",
    componentHint: "classical radical 19",
    examples: [
      {word: "成功", reading: "せいこう", meaning: "success; hit"},
      {word: "功績", reading: "こうせき", meaning: "achievements; merit"},
      {word: "功名", reading: "こうみょう", meaning: "great achievement"}
    ],
  },
  {
    kanji: "巧",
    keyword: "adroit/skilled",
    reading: "たく.み / たく.む / うま.い / コウ",
    radical: "巧",
    componentHint: "classical radical 48",
    examples: [
      {word: "巧み", reading: "たくみ", meaning: "skill; cleverness"},
      {word: "巧妙", reading: "こうみょう", meaning: "ingenious; skillful"},
      {word: "技巧", reading: "ぎこう", meaning: "technique; finesse"}
    ],
  },
  {
    kanji: "朽",
    keyword: "decay/rot",
    reading: "く.ちる / キュウ",
    radical: "朽",
    componentHint: "classical radical 75",
    examples: [
      {word: "朽ちる", reading: "くちる", meaning: "to rot; to decay"},
      {word: "老朽", reading: "ろうきゅう", meaning: "superannuated; decrepitude"},
      {word: "朽ち果てる", reading: "くちはてる", meaning: "to rot away; to crumble to dust"}
    ],
  },
  {
    kanji: "枯",
    keyword: "wither/die",
    reading: "か.れる / か.らす / コ",
    radical: "枯",
    componentHint: "classical radical 75",
    examples: [
      {word: "枯れる", reading: "かれる", meaning: "to wither (of a plant); to be blasted"},
      {word: "枯葉", reading: "かれは", meaning: "dead leaf; dry leaves"},
      {word: "枯木", reading: "かれき", meaning: "dead tree; dry wood"}
    ],
  },
  {
    kanji: "汚",
    keyword: "dirty/pollute",
    reading: "けが.す / けが.れる / けが.らわしい / よご.す / オ",
    radical: "汚",
    componentHint: "classical radical 85",
    examples: [
      {word: "汚れる", reading: "けがれる", meaning: "to be violated; to be corrupted"},
      {word: "汚い", reading: "きたない", meaning: "dirty; filthy"},
      {word: "汚す", reading: "よごす", meaning: "to pollute; to contaminate"}
    ],
  },
  {
    kanji: "升",
    keyword: "measuring box/1.8 liter",
    reading: "ます / ショウ",
    radical: "升",
    componentHint: "classical radical 24",
    examples: [
      {word: "一升瓶", reading: "いっしょうびん", meaning: "1 sho bottle (1.8 litres)"},
      {word: "升目", reading: "ますめ", meaning: "measure; square (e.g. of graph paper or Japanese manuscript paper)"},
      {word: "升形", reading: "ますがた", meaning: "square (shape); square bearing block (at the top of a pillar)"}
    ],
  },
  {
    kanji: "弁",
    keyword: "valve/petal",
    reading: "かんむり / わきま.える / わ.ける / はなびら / ベン / ヘン",
    radical: "弁",
    componentHint: "classical radical 55",
    examples: [
      {word: "弁護士", reading: "べんごし", meaning: "lawyer; attorney"},
      {word: "弁当", reading: "べんとう", meaning: "bento; Japanese box lunch"},
      {word: "弁護", reading: "べんご", meaning: "defense; defence"}
    ],
  },
  {
    kanji: "昇",
    keyword: "rise up",
    reading: "のぼ.る / ショウ",
    radical: "昇",
    componentHint: "classical radical 72",
    examples: [
      {word: "昇る", reading: "のぼる", meaning: "to ascend; to go up"},
      {word: "上昇", reading: "じょうしょう", meaning: "rising; ascending"},
      {word: "昇進", reading: "しょうしん", meaning: "promotion; advancement"}
    ],
  },
  {
    kanji: "登",
    keyword: "ascend/climb up",
    reading: "のぼ.る / あ.がる / トウ / ト / ドウ",
    radical: "登",
    componentHint: "classical radical 105",
    examples: [
      {word: "登る", reading: "のぼる", meaning: "to ascend; to go up"},
      {word: "登場", reading: "とうじょう", meaning: "entry (on stage); appearance (on screen)"},
      {word: "登山", reading: "とざん", meaning: "mountain climbing"}
    ],
  },
  {
    kanji: "澄",
    keyword: "lucidity/be clear",
    reading: "す.む / す.ます / -す.ます / チョウ",
    radical: "澄",
    componentHint: "classical radical 85",
    examples: [
      {word: "澄む", reading: "すむ", meaning: "to clear (e.g. weather); to become transparent"},
      {word: "澄ます", reading: "すます", meaning: "to clear; to make clear"},
      {word: "澄みきる", reading: "すみきる", meaning: "to be serene"}
    ],
  },
  {
    kanji: "充",
    keyword: "allot/fill",
    reading: "あ.てる / み.たす / ジュウ",
    radical: "充",
    componentHint: "classical radical 10",
    examples: [
      {word: "充分", reading: "じゅうぶん", meaning: "plenty; enough"},
      {word: "充実", reading: "じゅうじつ", meaning: "fullness; completion"},
      {word: "充満", reading: "じゅうまん", meaning: "being filled with; teeming with"}
    ],
  },
  {
    kanji: "銃",
    keyword: "gun/arms",
    reading: "つつ / ジュウ",
    radical: "銃",
    componentHint: "classical radical 167",
    examples: [
      {word: "拳銃", reading: "けんじゅう", meaning: "pistol; handgun"},
      {word: "銃声", reading: "じゅうせい", meaning: "gunshot; (gun) report"},
      {word: "銃口", reading: "じゅうこう", meaning: "gun point; muzzle"}
    ],
  },
  {
    kanji: "統",
    keyword: "overall/relationship",
    reading: "す.べる / ほび.る / トウ",
    radical: "統",
    componentHint: "classical radical 120",
    examples: [
      {word: "伝統", reading: "でんとう", meaning: "tradition; convention"},
      {word: "統一", reading: "とういつ", meaning: "unity; consolidation"},
      {word: "大統領", reading: "だいとうりょう", meaning: "president; chief executive"}
    ],
  },
  {
    kanji: "流",
    keyword: "current/a sink",
    reading: "なが.れる / なが.れ / なが.す / -なが.す / リュウ / ル",
    radical: "流",
    componentHint: "classical radical 85",
    examples: [
      {word: "流れる", reading: "ながれる", meaning: "to stream; to flow (liquid, time, etc.)"},
      {word: "流す", reading: "ながす", meaning: "to drain; to pour"},
      {word: "流れ", reading: "ながれ", meaning: "stream; current"}
    ],
  },
  {
    kanji: "硫",
    keyword: "sulphur",
    reading: "リュウ",
    radical: "硫",
    componentHint: "classical radical 112",
    examples: [
      {word: "硫黄", reading: "いおう", meaning: "sulfur (S); sulphur"},
      {word: "硫酸", reading: "りゅうさん", meaning: "sulfuric acid; sulphuric acid"},
      {word: "硫化", reading: "りゅうか", meaning: "sulfuration; sulphuration"}
    ],
  },
  {
    kanji: "盲",
    keyword: "blind/blind man",
    reading: "めくら / モウ",
    radical: "盲",
    componentHint: "classical radical 109",
    examples: [
      {word: "盲目", reading: "もうもく", meaning: "blindness"},
      {word: "盲人", reading: "もうじん", meaning: "blind person"},
      {word: "盲点", reading: "もうてん", meaning: "blind spot"}
    ],
  },
  {
    kanji: "忘",
    keyword: "forget",
    reading: "わす.れる / ボウ",
    radical: "忘",
    componentHint: "classical radical 61",
    examples: [
      {word: "忘れる", reading: "わすれる", meaning: "to forget; to leave carelessly"},
      {word: "忘れ去る", reading: "わすれさる", meaning: "to forget completely; to leave behind"},
      {word: "忘却", reading: "ぼうきゃく", meaning: "lapse of memory; forgetfulness"}
    ],
  },
  {
    kanji: "忙",
    keyword: "busy/occupied",
    reading: "いそが.しい / せわ.しい / おそ.れる / うれえるさま / ボウ / モウ",
    radical: "忙",
    componentHint: "classical radical 61",
    examples: [
      {word: "忙しい", reading: "いそがしい", meaning: "busy; hectic"},
      {word: "多忙", reading: "たぼう", meaning: "busy; pressure of work"},
      {word: "忙殺", reading: "ぼうさつ", meaning: "being extremely busy; being swamped with work"}
    ],
  },
  {
    kanji: "荒",
    keyword: "laid waste/rough",
    reading: "あら.い / あら- / あ.れる / あ.らす / コウ",
    radical: "荒",
    componentHint: "classical radical 140",
    examples: [
      {word: "荒い", reading: "あらい", meaning: "rough; rude"},
      {word: "荒れる", reading: "あれる", meaning: "to be stormy; to be rough"},
      {word: "荒々しい", reading: "あらあらしい", meaning: "rough; wild"}
    ],
  },
  {
    kanji: "慌",
    keyword: "disconcerted/be confused",
    reading: "あわ.てる / あわ.ただしい / コウ",
    radical: "慌",
    componentHint: "classical radical 61",
    examples: [
      {word: "慌てる", reading: "あわてる", meaning: "to become confused (disconcerted, disorganized, disorganised); to be flustered"},
      {word: "恐慌", reading: "きょうこう", meaning: "panic; scare"},
      {word: "慌ただしい", reading: "あわただしい", meaning: "busy; hurried"}
    ],
  },
  {
    kanji: "望",
    keyword: "ambition/full moon",
    reading: "のぞ.む / もち / ボウ / モウ",
    radical: "望",
    componentHint: "classical radical 74",
    examples: [
      {word: "望む", reading: "のぞむ", meaning: "to desire; to wish for"},
      {word: "希望", reading: "きぼう", meaning: "hope; wish"},
      {word: "絶望", reading: "ぜつぼう", meaning: "despair; hopelessness"}
    ],
  },
  {
    kanji: "希",
    keyword: "hope/beg",
    reading: "まれ / キ / ケ",
    radical: "希",
    componentHint: "classical radical 50",
    examples: [
      {word: "希望", reading: "きぼう", meaning: "hope; wish"},
      {word: "希薄", reading: "きはく", meaning: "thin (e.g. air); diluted"},
      {word: "希う", reading: "こいねがう", meaning: "to beg; to request"}
    ],
  },
  {
    kanji: "稀",
    keyword: "rare/phenomenal",
    reading: "まれ / まばら / キ / ケ",
    radical: "稀",
    componentHint: "classical radical 115",
    examples: [
      {word: "稀薄", reading: "きはく", meaning: "thin (e.g. air); diluted"},
      {word: "稀有", reading: "けう", meaning: "rare; uncommon"},
      {word: "稀代", reading: "きたい", meaning: "uncommon; rare"}
    ],
  },
  {
    kanji: "括",
    keyword: "fasten/tie up",
    reading: "くく.る / カツ",
    radical: "括",
    componentHint: "classical radical 64",
    examples: [
      {word: "括る", reading: "くくる", meaning: "to tie up; to tie together"},
      {word: "統括", reading: "とうかつ", meaning: "unification; bringing together"},
      {word: "総括", reading: "そうかつ", meaning: "synthesis; recap"}
    ],
  },
  {
    kanji: "拘",
    keyword: "arrest/seize",
    reading: "かか.わる / コウ",
    radical: "拘",
    componentHint: "classical radical 64",
    examples: [
      {word: "拘束", reading: "こうそく", meaning: "restriction; restraint"},
      {word: "拘る", reading: "こだわる", meaning: "to fuss over; to be particular about"},
      {word: "拘置", reading: "こうち", meaning: "detention; confinement"}
    ],
  },
  {
    kanji: "拾",
    keyword: "pick up/gather",
    reading: "ひろ.う / シュウ / ジュウ",
    radical: "拾",
    componentHint: "classical radical 64",
    examples: [
      {word: "拾う", reading: "ひろう", meaning: "to pick up; to find"},
      {word: "拾い上げる", reading: "ひろいあげる", meaning: "to pick up; to pick out"},
      {word: "収拾", reading: "しゅうしゅう", meaning: "controlling; settling (e.g. an issue)"}
    ],
  },
  {
    kanji: "捨",
    keyword: "discard/throw away",
    reading: "す.てる / シャ",
    radical: "捨",
    componentHint: "classical radical 64",
    examples: [
      {word: "捨てる", reading: "すてる", meaning: "to throw away; to cast away"},
      {word: "見捨てる", reading: "みすてる", meaning: "to abandon; to fail"},
      {word: "投げ捨てる", reading: "なげすてる", meaning: "to throw away"}
    ],
  },
  {
    kanji: "孤",
    keyword: "orphan/alone",
    reading: "コ",
    radical: "孤",
    componentHint: "classical radical 39",
    examples: [
      {word: "孤独", reading: "こどく", meaning: "isolation; loneliness"},
      {word: "孤立", reading: "こりつ", meaning: "isolation; being alone"},
      {word: "孤児", reading: "こじ", meaning: "orphan"}
    ],
  },
  {
    kanji: "弧",
    keyword: "arc/arch",
    reading: "コ",
    radical: "弧",
    componentHint: "classical radical 57",
    examples: [
      {word: "円弧", reading: "えんこ", meaning: "arc"},
      {word: "括弧", reading: "かっこ", meaning: "parentheses; brackets"},
      {word: "弧線", reading: "こせん", meaning: "arc (of a circle)"}
    ],
  },
  {
    kanji: "弾",
    keyword: "bullet/twang",
    reading: "ひ.く / -ひ.き / はず.む / たま / ダン / タン",
    radical: "弾",
    componentHint: "classical radical 57",
    examples: [
      {word: "弾く", reading: "はじく", meaning: "to flip; to snap"},
      {word: "爆弾", reading: "ばくだん", meaning: "bomb; alcohol with liquor added (esp. wine-based shochu highball, also beer with whiskey)"},
      {word: "弾丸", reading: "だんがん", meaning: "bullet; shot"}
    ],
  },
  {
    kanji: "禅",
    keyword: "Zen/silent meditation",
    reading: "しずか / ゆず.る / ゼン / セン",
    radical: "禅",
    componentHint: "classical radical 113",
    examples: [
      {word: "禅師", reading: "ぜんじ", meaning: "monk; priest, particularly a high-ranking Zen monk honored by the imperial court"},
      {word: "坐禅", reading: "ざぜん", meaning: "zazen (seated Zen meditation, usu. in a cross-legged position)"},
      {word: "友禅", reading: "ゆうぜん", meaning: "type of dyeing method or pattern; silk printed by the Yuzen process"}
    ],
  },
  {
    kanji: "系",
    keyword: "lineage/system",
    reading: "ケイ",
    radical: "系",
    componentHint: "classical radical 120",
    examples: [
      {word: "系統", reading: "けいとう", meaning: "system; lineage"},
      {word: "太陽系", reading: "たいようけい", meaning: "solar system"},
      {word: "銀河系", reading: "ぎんがけい", meaning: "galaxy; galactic system"}
    ],
  },
  {
    kanji: "係",
    keyword: "person in charge/connection",
    reading: "かか.る / かかり / -がかり / かか.わる / ケイ",
    radical: "係",
    componentHint: "classical radical 9",
    examples: [
      {word: "関係", reading: "かんけい", meaning: "relation; relationship"},
      {word: "無関係", reading: "むかんけい", meaning: "unrelated"},
      {word: "係長", reading: "かかりちょう", meaning: "chief clerk"}
    ],
  },
  {
    kanji: "孫",
    keyword: "grandchild/descendants",
    reading: "まご / ソン",
    radical: "孫",
    componentHint: "classical radical 39",
    examples: [
      {word: "子孫", reading: "しそん", meaning: "descendants; posterity"},
      {word: "孫娘", reading: "まごむすめ", meaning: "granddaughter"},
      {word: "お孫さん", reading: "おまごさん", meaning: "grandchild"}
    ],
  },
  {
    kanji: "懸",
    keyword: "state of suspension/hang",
    reading: "か.ける / か.かる / ケン / ケ",
    radical: "懸",
    componentHint: "classical radical 61",
    examples: [
      {word: "懸命", reading: "けんめい", meaning: "eagerness; earnestness"},
      {word: "一生懸命", reading: "いっしょうけんめい", meaning: "very hard; with utmost effort"},
      {word: "懸念", reading: "けねん", meaning: "worry; fear"}
    ],
  },
  {
    kanji: "偏",
    keyword: "partial/side",
    reading: "かたよ.る / ヘン",
    radical: "偏",
    componentHint: "classical radical 9",
    examples: [
      {word: "偏見", reading: "へんけん", meaning: "prejudice; narrow view"},
      {word: "偏屈", reading: "へんくつ", meaning: "eccentricity; bigotry"},
      {word: "偏る", reading: "かたよる", meaning: "to be one-sided; to incline"}
    ],
  },
  {
    kanji: "遍",
    keyword: "everywhere/times",
    reading: "あまね.く / ヘン",
    radical: "遍",
    componentHint: "classical radical 162",
    examples: [
      {word: "普遍", reading: "ふへん", meaning: "universal; general"},
      {word: "一遍", reading: "いっぺん", meaning: "once; one time"},
      {word: "遍歴", reading: "へんれき", meaning: "travels; pilgrimage"}
    ],
  },
  {
    kanji: "編",
    keyword: "compilation/knit",
    reading: "あ.む / -あ.み / ヘン",
    radical: "編",
    componentHint: "classical radical 120",
    examples: [
      {word: "編集", reading: "へんしゅう", meaning: "editing; compilation"},
      {word: "編成", reading: "へんせい", meaning: "composition; formation"},
      {word: "編む", reading: "あむ", meaning: "to knit; to plait"}
    ],
  },
  {
    kanji: "篇",
    keyword: "volume/chapter",
    reading: "ヘン",
    radical: "篇",
    componentHint: "classical radical 118",
    examples: [
      {word: "短篇", reading: "たんぺん", meaning: "short (e.g. story, film)"},
      {word: "長篇", reading: "ちょうへん", meaning: "long (e.g. novel, film)"},
      {word: "詩篇", reading: "しへん", meaning: "book containing a collection of poems; Psalms (book of the Bible)"}
    ],
  },
  {
    kanji: "普",
    keyword: "universal/wide(ly)",
    reading: "あまね.く / あまねし / フ",
    radical: "普",
    componentHint: "classical radical 72",
    examples: [
      {word: "普通", reading: "ふつう", meaning: "general; ordinary"},
      {word: "普段", reading: "ふだん", meaning: "usual; habitual"},
      {word: "普及", reading: "ふきゅう", meaning: "diffusion; spread"}
    ],
  },
  {
    kanji: "譜",
    keyword: "musical score/music",
    reading: "フ",
    radical: "譜",
    componentHint: "classical radical 149",
    examples: [
      {word: "楽譜", reading: "がくふ", meaning: "score; sheet music"},
      {word: "譜代", reading: "ふだい", meaning: "successive generations; hereditary daimyo (whose ancestors supported Tokugawa Ieyasu prior to the battle of Sekigahara)"},
      {word: "系譜", reading: "けいふ", meaning: "genealogy; pedigree"}
    ],
  },
  {
    kanji: "職",
    keyword: "post/employment",
    reading: "ショク / ソク",
    radical: "職",
    componentHint: "classical radical 128",
    examples: [
      {word: "職業", reading: "しょくぎょう", meaning: "occupation; business"},
      {word: "職人", reading: "しょくにん", meaning: "worker; mechanic"},
      {word: "職員", reading: "しょくいん", meaning: "staff member; personnel"}
    ],
  },
  {
    kanji: "織",
    keyword: "weave/fabric",
    reading: "お.る / お.り / おり / -おり / ショク / シキ",
    radical: "織",
    componentHint: "classical radical 120",
    examples: [
      {word: "組織", reading: "そしき", meaning: "organization; organisation"},
      {word: "織る", reading: "おる", meaning: "to weave"},
      {word: "羽織", reading: "はおり", meaning: "haori (Japanese formal coat)"}
    ],
  },
  {
    kanji: "識",
    keyword: "discriminating/know",
    reading: "し.る / しる.す / シキ",
    radical: "識",
    componentHint: "classical radical 149",
    examples: [
      {word: "意識", reading: "いしき", meaning: "consciousness; awareness"},
      {word: "知識", reading: "ちしき", meaning: "knowledge; information"},
      {word: "認識", reading: "にんしき", meaning: "recognition; cognizance"}
    ],
  },
  {
    kanji: "殉",
    keyword: "martyrdom/follow by resigning",
    reading: "ジュン",
    radical: "殉",
    componentHint: "classical radical 78",
    examples: [
      {word: "殉教者", reading: "じゅんきょうしゃ", meaning: "martyr"},
      {word: "殉じる", reading: "じゅんじる", meaning: "to sacrifice oneself"},
      {word: "殉死", reading: "じゅんし", meaning: "following one's master into the grave; committing suicide after one's lord has died"}
    ],
  },
  {
    kanji: "退",
    keyword: "retreat/withdraw",
    reading: "しりぞ.く / しりぞ.ける / ひ.く / の.く / タイ",
    radical: "退",
    componentHint: "classical radical 162",
    examples: [
      {word: "退屈", reading: "たいくつ", meaning: "tedium; boredom"},
      {word: "退く", reading: "どく", meaning: "to step aside; to move (i.e. out of the way)"},
      {word: "後退", reading: "こうたい", meaning: "retreat; backspace"}
    ],
  },
  {
    kanji: "眼",
    keyword: "eyeball",
    reading: "まなこ / め / ガン / ゲン",
    radical: "眼",
    componentHint: "classical radical 109",
    examples: [
      {word: "眼鏡", reading: "めがね", meaning: "spectacles; glasses"},
      {word: "眼前", reading: "がんぜん", meaning: "before one's eyes"},
      {word: "眼差し", reading: "まなざし", meaning: "(a) look; gaze"}
    ],
  },
  {
    kanji: "智",
    keyword: "wisdom/intellect",
    reading: "チ",
    radical: "智",
    componentHint: "classical radical 72",
    examples: [
      {word: "智恵", reading: "ちえ", meaning: "wisdom; wit"},
      {word: "智慧", reading: "ちえ", meaning: "wisdom; wit"},
      {word: "明智", reading: "めいち", meaning: "sagacity; wisdom"}
    ],
  },
  {
    kanji: "仁",
    keyword: "humanity/virtue",
    reading: "ジン / ニ / ニン",
    radical: "仁",
    componentHint: "classical radical 9",
    examples: [
      {word: "仁王立ち", reading: "におうだち", meaning: "imposing stance; daunting pose"},
      {word: "御仁", reading: "ごじん", meaning: "personage"},
      {word: "仁義", reading: "じんぎ", meaning: "humanity and justice (esp. in Confucianism); virtue"}
    ],
  },
  {
    kanji: "忍",
    keyword: "endure/bear",
    reading: "しの.ぶ / しの.ばせる / ニン",
    radical: "忍",
    componentHint: "classical radical 61",
    examples: [
      {word: "忍ぶ", reading: "しのぶ", meaning: "to conceal oneself; to hide"},
      {word: "忍者", reading: "にんじゃ", meaning: "ninja (persons in feudal Japan who used ninjutsu for the purposes of espionage, assassination, sabotage, etc.)"},
      {word: "忍び", reading: "しのび", meaning: "stealth; travelling incognito (traveling)"}
    ],
  },
  {
    kanji: "認",
    keyword: "acknowledge/witness",
    reading: "みと.める / したた.める / ニン",
    radical: "認",
    componentHint: "classical radical 149",
    examples: [
      {word: "認める", reading: "したためる", meaning: "to write up"},
      {word: "確認", reading: "かくにん", meaning: "confirmation; verification"},
      {word: "認識", reading: "にんしき", meaning: "recognition; cognizance"}
    ],
  },
  {
    kanji: "求",
    keyword: "request/want",
    reading: "もと.める / キュウ / グ",
    radical: "求",
    componentHint: "classical radical 85",
    examples: [
      {word: "求める", reading: "もとめる", meaning: "to want; to wish for"},
      {word: "要求", reading: "ようきゅう", meaning: "demand; firm request"},
      {word: "欲求", reading: "よっきゅう", meaning: "desire"}
    ],
  },
  {
    kanji: "救",
    keyword: "salvation/save",
    reading: "すく.う / キュウ",
    radical: "救",
    componentHint: "classical radical 66",
    examples: [
      {word: "救う", reading: "すくう", meaning: "to rescue from; to help out of"},
      {word: "救い", reading: "すくい", meaning: "help; aid"},
      {word: "救急車", reading: "きゅうきゅうしゃ", meaning: "ambulance"}
    ],
  },
  {
    kanji: "球",
    keyword: "ball/sphere",
    reading: "たま / キュウ",
    radical: "球",
    componentHint: "classical radical 96",
    examples: [
      {word: "地球", reading: "ちきゅう", meaning: "the earth; the globe"},
      {word: "野球", reading: "やきゅう", meaning: "baseball"},
      {word: "地球人", reading: "ちきゅうじん", meaning: "earthling; earthman"}
    ],
  },
  {
    kanji: "屯",
    keyword: "barracks/police station",
    reading: "たむろ / トン",
    radical: "屯",
    componentHint: "classical radical 45",
    examples: [
      {word: "駐屯", reading: "ちゅうとん", meaning: "stationing (troops); occupancy"},
      {word: "屯所", reading: "とんしょ", meaning: "post; quarters"},
      {word: "屯田", reading: "とんでん", meaning: "colonization; colonisation"}
    ],
  },
  {
    kanji: "純",
    keyword: "genuine/purity",
    reading: "ジュン",
    radical: "純",
    componentHint: "classical radical 120",
    examples: [
      {word: "単純", reading: "たんじゅん", meaning: "simplicity; simple"},
      {word: "純粋", reading: "じゅんすい", meaning: "pure; true"},
      {word: "純白", reading: "じゅんぱく", meaning: "pure white; snow white"}
    ],
  },
  {
    kanji: "鈍",
    keyword: "dull/slow",
    reading: "にぶ.い / にぶ.る / にぶ- / なま.る / ドン",
    radical: "鈍",
    componentHint: "classical radical 167",
    examples: [
      {word: "鈍い", reading: "おそい", meaning: "slow; late (e.g. \"late at night\")"},
      {word: "鈍感", reading: "どんかん", meaning: "thickheadedness; stolidity"},
      {word: "鈍る", reading: "にぶる", meaning: "to become blunt; to grow dull"}
    ],
  },
  {
    kanji: "召",
    keyword: "seduce/call",
    reading: "め.す / ショウ",
    radical: "召",
    componentHint: "classical radical 30",
    examples: [
      {word: "召す", reading: "めす", meaning: "to call; to invite"},
      {word: "召使", reading: "めしつかい", meaning: "servant; menial"},
      {word: "召使い", reading: "めしつかい", meaning: "servant; menial"}
    ],
  },
  {
    kanji: "招",
    keyword: "beckon/invite",
    reading: "まね.く / ショウ",
    radical: "招",
    componentHint: "classical radical 64",
    examples: [
      {word: "招く", reading: "まねく", meaning: "to invite; to ask"},
      {word: "招待", reading: "しょうたい", meaning: "invitation"},
      {word: "手招き", reading: "てまねき", meaning: "beckoning"}
    ],
  },
  {
    kanji: "沼",
    keyword: "marsh/lake",
    reading: "ぬま / ショウ",
    radical: "沼",
    componentHint: "classical radical 85",
    examples: [
      {word: "沼地", reading: "ぬまち", meaning: "marshland; wetland"},
      {word: "泥沼", reading: "どろぬま", meaning: "bog; marsh"},
      {word: "沼田", reading: "ぬまた", meaning: "marshy rice field or paddy"}
    ],
  },
  {
    kanji: "紹",
    keyword: "introduce/inherit",
    reading: "ショウ",
    radical: "紹",
    componentHint: "classical radical 120",
    examples: [
      {word: "紹介", reading: "しょうかい", meaning: "introduction; presentation"},
      {word: "紹興酒", reading: "しょうこうしゅ", meaning: "shaoxingjiu (Chinese alcohol made from rice or glutinous millet)"},
      {word: "紹介者", reading: "しょうかいしゃ", meaning: "person who introduces someone; introducer"}
    ],
  },
  {
    kanji: "詔",
    keyword: "imperial edict",
    reading: "みことのり / ショウ",
    radical: "詔",
    componentHint: "classical radical 149",
    examples: [
      {word: "詔書", reading: "しょうしょ", meaning: "imperial edict; decree"},
      {word: "詔勅", reading: "しょうちょく", meaning: "imperial edict; decree"},
      {word: "大詔", reading: "たいしょう", meaning: "imperial rescript"}
    ],
  },
  {
    kanji: "勅",
    keyword: "imperial order",
    reading: "いまし.める / みことのり / チョク",
    radical: "勅",
    componentHint: "classical radical 19",
    examples: [
      {word: "勅使", reading: "ちょくし", meaning: "imperial envoy; imperial messenger"},
      {word: "勅命", reading: "ちょくめい", meaning: "imperial command"},
      {word: "勅許", reading: "ちょっきょ", meaning: "imperial sanction; royal charter"}
    ],
  },
  {
    kanji: "昭",
    keyword: "shining/bright",
    reading: "ショウ",
    radical: "昭",
    componentHint: "classical radical 72",
    examples: [
      {word: "昭和", reading: "しょうわ", meaning: "Showa era (1926.12.25-1989.1.7)"},
      {word: "昭栄", reading: "しょうえい", meaning: "Shoei (motorcycle helmet manufacturing company); Shouei"},
      {word: "昭代", reading: "しょうだい", meaning: "glorious reign; enlightened era"}
    ],
  },
  {
    kanji: "照",
    keyword: "illuminate/shine",
    reading: "て.る / て.らす / て.れる / ショウ",
    radical: "照",
    componentHint: "classical radical 86",
    examples: [
      {word: "照らす", reading: "てらす", meaning: "to shine on; to illuminate"},
      {word: "照明", reading: "しょうめい", meaning: "illumination; lighting"},
      {word: "照れる", reading: "てれる", meaning: "to be shy; to be bashful"}
    ],
  },
  {
    kanji: "超",
    keyword: "transcend/super-",
    reading: "こ.える / こ.す / チョウ",
    radical: "超",
    componentHint: "classical radical 156",
    examples: [
      {word: "超える", reading: "こえる", meaning: "to cross over; to cross"},
      {word: "超越", reading: "ちょうえつ", meaning: "transcendence; transcendency"},
      {word: "超人", reading: "ちょうじん", meaning: "superman; superwoman"}
    ],
  },
  {
    kanji: "越",
    keyword: "surpass/cross over",
    reading: "こ.す / -こ.す / -ご.し / こ.える / エツ / オツ",
    radical: "越",
    componentHint: "classical radical 156",
    examples: [
      {word: "越える", reading: "こえる", meaning: "to cross over; to cross"},
      {word: "越し", reading: "ごし", meaning: "across; over"},
      {word: "越す", reading: "こす", meaning: "to cross over (e.g. mountain); to go across"}
    ],
  },
  {
    kanji: "趣",
    keyword: "purport/gist",
    reading: "おもむき / おもむ.く / シュ",
    radical: "趣",
    componentHint: "classical radical 156",
    examples: [
      {word: "趣味", reading: "しゅみ", meaning: "hobby; pastime"},
      {word: "趣向", reading: "しゅこう", meaning: "plan; idea"},
      {word: "趣旨", reading: "しゅし", meaning: "meaning; point (e.g. of a statement)"}
    ],
  },
  {
    kanji: "赴",
    keyword: "proceed/get",
    reading: "おもむ.く / フ",
    radical: "赴",
    componentHint: "classical radical 156",
    examples: [
      {word: "赴く", reading: "おもむく", meaning: "to go in the direction of; to proceed toward"},
      {word: "赴任", reading: "ふにん", meaning: "moving to a different location to start a new job; (proceeding to) new appointment"},
      {word: "赴任地", reading: "ふにんち", meaning: "place of (new) post; (new) place of appointment"}
    ],
  },
  {
    kanji: "訃",
    keyword: "obituary",
    reading: "しらせ / フ",
    radical: "訃",
    componentHint: "classical radical 149",
    examples: [
      {word: "訃報", reading: "ふほう", meaning: "news of a person's death; obituary"},
      {word: "訃音", reading: "ふいん", meaning: "report of a death"},
      {word: "訃", reading: "ふ", meaning: "news of someone's death"}
    ],
  },
  {
    kanji: "朴",
    keyword: "crude/simple",
    reading: "ほう / ほお / えのき / ボク",
    radical: "朴",
    componentHint: "classical radical 75",
    examples: [
      {word: "素朴", reading: "そぼく", meaning: "simplicity; artlessness"},
      {word: "純朴", reading: "じゅんぼく", meaning: "rustic simplicity; homeliness"},
      {word: "朴訥", reading: "ぼくとつ", meaning: "unsophisticated; ruggedly honest"}
    ],
  },
  {
    kanji: "掛",
    keyword: "hang/suspend",
    reading: "か.ける / -か.ける / か.け / -か.け / カイ / ケイ",
    radical: "掛",
    componentHint: "classical radical 64",
    examples: [
      {word: "掛ける", reading: "かける", meaning: "to hang (e.g. picture); to hoist (e.g. sail)"},
      {word: "仕掛ける", reading: "しかける", meaning: "to start; to begin"},
      {word: "掛かる", reading: "かかる", meaning: "to take (a resource, e.g. time or money); to hang"}
    ],
  },
  {
    kanji: "摘",
    keyword: "pinch/pick",
    reading: "つ.む / テキ",
    radical: "摘",
    componentHint: "classical radical 64",
    examples: [
      {word: "指摘", reading: "してき", meaning: "pointing out; identification"},
      {word: "摘む", reading: "つむ", meaning: "to pluck; to pick"},
      {word: "摘発", reading: "てきはつ", meaning: "exposing; unmasking"}
    ],
  },
  {
    kanji: "滴",
    keyword: "drip/drop",
    reading: "しずく / したた.る / テキ",
    radical: "滴",
    componentHint: "classical radical 85",
    examples: [
      {word: "一滴", reading: "いってき", meaning: "drop (of fluid)"},
      {word: "滴る", reading: "したたる", meaning: "to drip; to drop"},
      {word: "水滴", reading: "すいてき", meaning: "drop of water; vessel for replenishing inkstone water"}
    ],
  },
  {
    kanji: "嫡",
    keyword: "legitimate wife/direct descent (non-bastard)",
    reading: "チャク / テキ",
    radical: "嫡",
    componentHint: "classical radical 38",
    examples: [
      {word: "嫡子", reading: "ちゃくし", meaning: "legitimate child"},
      {word: "嫡男", reading: "ちゃくなん", meaning: "heir; eldest son"},
      {word: "嫡流", reading: "ちゃくりゅう", meaning: "lineage of eldest son"}
    ],
  },
  {
    kanji: "適",
    keyword: "suitable/occasional",
    reading: "かな.う / テキ",
    radical: "適",
    componentHint: "classical radical 162",
    examples: [
      {word: "適当", reading: "てきとう", meaning: "suitable; proper"},
      {word: "適切", reading: "てきせつ", meaning: "pertinent; appropriate"},
      {word: "快適", reading: "かいてき", meaning: "pleasant; agreeable"}
    ],
  },
  {
    kanji: "敵",
    keyword: "enemy/foe",
    reading: "かたき / あだ / かな.う / テキ",
    radical: "敵",
    componentHint: "classical radical 66",
    examples: [
      {word: "素敵", reading: "すてき", meaning: "lovely; dreamy"},
      {word: "敵意", reading: "てきい", meaning: "hostility; animosity"},
      {word: "不敵", reading: "ふてき", meaning: "daring; fearless"}
    ],
  },
  {
    kanji: "授",
    keyword: "impart/instruct",
    reading: "さず.ける / さず.かる / ジュ",
    radical: "授",
    componentHint: "classical radical 64",
    examples: [
      {word: "教授", reading: "きょうじゅ", meaning: "professor; teaching"},
      {word: "授業", reading: "じゅぎょう", meaning: "lesson; class work"},
      {word: "授ける", reading: "さずける", meaning: "to grant; to award"}
    ],
  },
  {
    kanji: "援",
    keyword: "abet/help",
    reading: "エン",
    radical: "援",
    componentHint: "classical radical 64",
    examples: [
      {word: "応援", reading: "おうえん", meaning: "aid; assistance"},
      {word: "援助", reading: "えんじょ", meaning: "assistance; aid"},
      {word: "支援", reading: "しえん", meaning: "support; backing"}
    ],
  },
  {
    kanji: "媛",
    keyword: "beautiful woman/princess",
    reading: "ひめ / エン",
    radical: "媛",
    componentHint: "classical radical 38",
    examples: [
      {word: "才媛", reading: "さいえん", meaning: "literary woman; talented woman"},
      {word: "愛媛県", reading: "えひめけん", meaning: "Ehime prefecture (Shikoku)"},
      {word: "媛", reading: "ひめ", meaning: "princess; young lady of noble birth"}
    ],
  },
  {
    kanji: "緩",
    keyword: "slacken/loosen",
    reading: "ゆる.い / ゆる.やか / ゆる.む / ゆる.める / カン",
    radical: "緩",
    componentHint: "classical radical 120",
    examples: [
      {word: "緩める", reading: "ゆるめる", meaning: "to loosen; to slow down"},
      {word: "緩む", reading: "ゆるむ", meaning: "to become loose; to slacken (e.g. rope)"},
      {word: "緩い", reading: "ぬるい", meaning: "lukewarm; tepid"}
    ],
  },
  {
    kanji: "暖",
    keyword: "warmth",
    reading: "あたた.か / あたた.かい / あたた.まる / あたた.める / ダン / ノン",
    radical: "暖",
    componentHint: "classical radical 72",
    examples: [
      {word: "暖かい", reading: "あたたかい", meaning: "warm; mild"},
      {word: "暖炉", reading: "だんろ", meaning: "fireplace; hearth"},
      {word: "暖簾", reading: "のれん", meaning: "(short) sign curtain hung at shop entrance; reputation (of a store)"}
    ],
  },
  {
    kanji: "観",
    keyword: "outlook/look",
    reading: "み.る / しめ.す / カン",
    radical: "観",
    componentHint: "classical radical 147",
    examples: [
      {word: "観察", reading: "かんさつ", meaning: "observation; survey"},
      {word: "観念", reading: "かんねん", meaning: "idea; notion"},
      {word: "観光", reading: "かんこう", meaning: "sightseeing"}
    ],
  },
  {
    kanji: "勧",
    keyword: "persuade/recommend",
    reading: "すす.める / カン / ケン",
    radical: "勧",
    componentHint: "classical radical 19",
    examples: [
      {word: "勧める", reading: "すすめる", meaning: "to recommend; to advise"},
      {word: "勧誘", reading: "かんゆう", meaning: "invitation; solicitation"},
      {word: "勧告", reading: "かんこく", meaning: "advice; counsel"}
    ],
  },
  {
    kanji: "権",
    keyword: "authority/power",
    reading: "おもり / かり / はか.る / ケン / ゴン",
    radical: "権",
    componentHint: "classical radical 75",
    examples: [
      {word: "権利", reading: "けんり", meaning: "right; privilege"},
      {word: "権力", reading: "けんりょく", meaning: "(political) power; authority"},
      {word: "権威", reading: "けんい", meaning: "authority; power"}
    ],
  },
  {
    kanji: "歓",
    keyword: "delight/joy",
    reading: "よろこ.ぶ / カン",
    radical: "歓",
    componentHint: "classical radical 76",
    examples: [
      {word: "歓迎", reading: "かんげい", meaning: "welcome; reception"},
      {word: "歓声", reading: "かんせい", meaning: "cheer; shout of joy"},
      {word: "歓喜", reading: "かんき", meaning: "delight; great joy"}
    ],
  },
  {
    kanji: "鶴",
    keyword: "crane/stork",
    reading: "つる / カク",
    radical: "鶴",
    componentHint: "classical radical 196",
    examples: [
      {word: "真鶴", reading: "まなづる", meaning: "white-naped crane (Grus vipio)"},
      {word: "田鶴", reading: "つる", meaning: "crane (any bird of the family Gruidae, esp. the red-crowned crane, Grus japonensis)"},
      {word: "鶴嘴", reading: "つるはし", meaning: "pickaxe"}
    ],
  },
  {
    kanji: "確",
    keyword: "assurance/firm",
    reading: "たし.か / たし.かめる / カク / コウ",
    radical: "確",
    componentHint: "classical radical 112",
    examples: [
      {word: "確か", reading: "たしか", meaning: "sure; certain"},
      {word: "確認", reading: "かくにん", meaning: "confirmation; verification"},
      {word: "正確", reading: "せいかく", meaning: "accurate; punctual"}
    ],
  },
  {
    kanji: "慢",
    keyword: "ridicule/laziness",
    reading: "マン",
    radical: "慢",
    componentHint: "classical radical 61",
    examples: [
      {word: "我慢", reading: "がまん", meaning: "patience; endurance"},
      {word: "自慢", reading: "じまん", meaning: "pride; boast"},
      {word: "傲慢", reading: "ごうまん", meaning: "pride; haughtiness"}
    ],
  },
  {
    kanji: "漫",
    keyword: "cartoon/involuntarily",
    reading: "みだり.に / そぞ.ろ / マン",
    radical: "漫",
    componentHint: "classical radical 85",
    examples: [
      {word: "漫画", reading: "まんが", meaning: "cartoon; comic"},
      {word: "漫才", reading: "まんざい", meaning: "two-person comedy act (usu. presented as a fast-paced dialogue, occ. presented as a skit); comic dialogue"},
      {word: "漫然", reading: "まんぜん", meaning: "aimless; rambling"}
    ],
  },
  {
    kanji: "卯",
    keyword: "sign of the hare or rabbit/fourth sign of Chinese zodiac",
    reading: "う / ボウ / モウ",
    radical: "卯",
    componentHint: "classical radical 26",
    examples: [
      {word: "卯月", reading: "うづき", meaning: "fourth month of the lunar calendar"},
      {word: "卯の花", reading: "うのはな", meaning: "bean-curd lees; soybean pulp"},
      {word: "卯木", reading: "うつぎ", meaning: "deutzia; Deutzia crenata"}
    ],
  },
  {
    kanji: "抑",
    keyword: "repress/well",
    reading: "おさ.える / ヨク",
    radical: "抑",
    componentHint: "classical radical 64",
    examples: [
      {word: "抑える", reading: "おさえる", meaning: "to pin something down; to hold something down"},
      {word: "抑制", reading: "よくせい", meaning: "control; restraint"},
      {word: "抑揚", reading: "よくよう", meaning: "intonation; accent"}
    ],
  },
  {
    kanji: "仰",
    keyword: "face-up/look up",
    reading: "あお.ぐ / おお.せ / お.っしゃる / おっしゃ.る / ギョウ / コウ",
    radical: "仰",
    componentHint: "classical radical 9",
    examples: [
      {word: "信仰", reading: "しんこう", meaning: "(religious) faith; belief"},
      {word: "仰ぐ", reading: "あおぐ", meaning: "to look up (at); to look up (to)"},
      {word: "仰向け", reading: "あおむけ", meaning: "face up"}
    ],
  },
  {
    kanji: "迎",
    keyword: "welcome/meet",
    reading: "むか.える / ゲイ",
    radical: "迎",
    componentHint: "classical radical 162",
    examples: [
      {word: "迎える", reading: "むかえる", meaning: "to go out to meet; to receive"},
      {word: "歓迎", reading: "かんげい", meaning: "welcome; reception"},
      {word: "出迎える", reading: "でむかえる", meaning: "to meet; to greet"}
    ],
  },
  {
    kanji: "柳",
    keyword: "willow",
    reading: "やなぎ / リュウ",
    radical: "柳",
    componentHint: "classical radical 75",
    examples: [
      {word: "青柳", reading: "あおやぎ", meaning: "green willow (i.e. one that has budded); meat of the trough shell (Mactra chinensis)"},
      {word: "川柳", reading: "せんりゅう", meaning: "senryu; comic haiku"},
      {word: "柳眉", reading: "りゅうび", meaning: "beautiful eyebrows"}
    ],
  },
  {
    kanji: "卵",
    keyword: "egg/ovum",
    reading: "たまご / ラン",
    radical: "卵",
    componentHint: "classical radical 26",
    examples: [
      {word: "卵子", reading: "らんし", meaning: "ovum; ovule"},
      {word: "産卵", reading: "さんらん", meaning: "egg-laying; spawning"},
      {word: "排卵", reading: "はいらん", meaning: "ovulation"}
    ],
  },
  {
    kanji: "疎",
    keyword: "alienate/rough",
    reading: "うと.い / うと.む / まば.ら / ソ / ショ",
    radical: "疎",
    componentHint: "classical radical 103",
    examples: [
      {word: "疎開", reading: "そかい", meaning: "dispersal; evacuation"},
      {word: "疎い", reading: "うとい", meaning: "distant; estranged"},
      {word: "疎外", reading: "そがい", meaning: "estrangement; neglect"}
    ],
  },
  {
    kanji: "速",
    keyword: "quick/fast",
    reading: "はや.い / はや- / はや.める / すみ.やか / ソク",
    radical: "速",
    componentHint: "classical radical 162",
    examples: [
      {word: "速度", reading: "そくど", meaning: "speed; velocity"},
      {word: "速い", reading: "はやい", meaning: "fast; quick"},
      {word: "早速", reading: "さっそく", meaning: "at once; immediately"}
    ],
  },
  {
    kanji: "遅",
    keyword: "slow/late",
    reading: "おく.れる / おく.らす / おそ.い / チ",
    radical: "遅",
    componentHint: "classical radical 162",
    examples: [
      {word: "遅い", reading: "おそい", meaning: "slow; late (e.g. \"late at night\")"},
      {word: "遅れる", reading: "おくれる", meaning: "to be late; to be delayed"},
      {word: "遅刻", reading: "ちこく", meaning: "lateness; late coming"}
    ],
  },
  {
    kanji: "辻",
    keyword: "crossing/crossroad",
    reading: "つじ",
    radical: "辻",
    componentHint: "classical radical 162",
    examples: [
      {word: "辻褄", reading: "つじつま", meaning: "coherence; consistency"},
      {word: "辻斬り", reading: "つじぎり", meaning: "killing a passerby in order to test a new sword"},
      {word: "辻堂", reading: "つじどう", meaning: "wayside shrine"}
    ],
  },
  {
    kanji: "迅",
    keyword: "swift/fast",
    reading: "ジン",
    radical: "迅",
    componentHint: "classical radical 162",
    examples: [
      {word: "迅速", reading: "じんそく", meaning: "quick; fast"},
      {word: "獅子奮迅", reading: "ししふんじん", meaning: "being irresistible; being furiously vigorous"},
      {word: "迅雷", reading: "じんらい", meaning: "thunderclap"}
    ],
  },
  {
    kanji: "加",
    keyword: "add/addition",
    reading: "くわ.える / くわ.わる / カ",
    radical: "加",
    componentHint: "classical radical 19",
    examples: [
      {word: "加える", reading: "くわえる", meaning: "to add; to add up"},
      {word: "参加", reading: "さんか", meaning: "participation"},
      {word: "加わる", reading: "くわわる", meaning: "to be added to; to be appended"}
    ],
  },
  {
    kanji: "減",
    keyword: "dwindle/decrease",
    reading: "へ.る / へ.らす / ゲン",
    radical: "減",
    componentHint: "classical radical 85",
    examples: [
      {word: "減る", reading: "へる", meaning: "to decrease (in size or number); to diminish"},
      {word: "いい加減", reading: "いいかげん", meaning: "irresponsible; perfunctory"},
      {word: "加減", reading: "かげん", meaning: "addition and subtraction; allowance for"}
    ],
  },
  {
    kanji: "滅",
    keyword: "destroy/ruin",
    reading: "ほろ.びる / ほろ.ぶ / ほろ.ぼす / メツ",
    radical: "滅",
    componentHint: "classical radical 85",
    examples: [
      {word: "消滅", reading: "しょうめつ", meaning: "extinction; extinguishment"},
      {word: "破滅", reading: "はめつ", meaning: "ruin; destruction"},
      {word: "滅多に", reading: "めったに", meaning: "rarely; seldom"}
    ],
  },
  {
    kanji: "威",
    keyword: "intimidate/dignity",
    reading: "おど.す / おど.し / おど.かす / イ",
    radical: "威",
    componentHint: "classical radical 38",
    examples: [
      {word: "権威", reading: "けんい", meaning: "authority; power"},
      {word: "威力", reading: "いりょく", meaning: "power; might"},
      {word: "威厳", reading: "いげん", meaning: "dignity; majesty"}
    ],
  },
  {
    kanji: "嚇",
    keyword: "menacing/dignity",
    reading: "おど.す / カク",
    radical: "嚇",
    componentHint: "classical radical 30",
    examples: [
      {word: "威嚇", reading: "いかく", meaning: "menace; threat"},
      {word: "嚇す", reading: "おどす", meaning: "to threaten; to menace"},
      {word: "嚇怒", reading: "かくど", meaning: "greatly enraged; furious"}
    ],
  },
  {
    kanji: "或",
    keyword: "some/one",
    reading: "あ.る / あるい / あるいは / ワク / コク / イキ",
    radical: "或",
    componentHint: "classical radical 62",
    examples: [
      {word: "或いは", reading: "あるいは", meaning: "or; possibly"},
      {word: "或は", reading: "あるいは", meaning: "or; possibly"},
      {word: "或日", reading: "あるひ", meaning: "one day (e.g. \"one day while studying, ..\")"}
    ],
  },
  {
    kanji: "惑",
    keyword: "beguile/delusion",
    reading: "まど.う / ワク",
    radical: "惑",
    componentHint: "classical radical 61",
    examples: [
      {word: "迷惑", reading: "めいわく", meaning: "trouble; bother"},
      {word: "惑星", reading: "わくせい", meaning: "planet"},
      {word: "疑惑", reading: "ぎわく", meaning: "doubt; misgivings"}
    ],
  },
  {
    kanji: "域",
    keyword: "range/region",
    reading: "イキ",
    radical: "域",
    componentHint: "classical radical 32",
    examples: [
      {word: "地域", reading: "ちいき", meaning: "area; region"},
      {word: "領域", reading: "りょういき", meaning: "area; domain"},
      {word: "区域", reading: "くいき", meaning: "limits; boundary"}
    ],
  },
  {
    kanji: "収",
    keyword: "income/obtain",
    reading: "おさ.める / おさ.まる / シュウ",
    radical: "収",
    componentHint: "classical radical 29",
    examples: [
      {word: "収める", reading: "おさめる", meaning: "to dedicate; to make an offering"},
      {word: "収容", reading: "しゅうよう", meaning: "accommodation; reception"},
      {word: "収まる", reading: "おさまる", meaning: "to be in one's place; to be installed"}
    ],
  },
  {
    kanji: "納",
    keyword: "settlement/obtain",
    reading: "おさ.める / -おさ.める / おさ.まる / ノウ / ナッ / ナ",
    radical: "納",
    componentHint: "classical radical 120",
    examples: [
      {word: "納得", reading: "なっとく", meaning: "consent; assent"},
      {word: "納める", reading: "おさめる", meaning: "to dedicate; to make an offering"},
      {word: "納屋", reading: "なや", meaning: "shed; barn"}
    ],
  },
  {
    kanji: "献",
    keyword: "offering/counter for drinks",
    reading: "たてまつ.る / ケン / コン",
    radical: "献",
    componentHint: "classical radical 94",
    examples: [
      {word: "文献", reading: "ぶんけん", meaning: "literature; books (reference)"},
      {word: "献上", reading: "けんじょう", meaning: "presenting to"},
      {word: "献身", reading: "けんしん", meaning: "dedication; devotion"}
    ],
  },
  {
    kanji: "貢",
    keyword: "tribute/support",
    reading: "みつ.ぐ / コウ / ク",
    radical: "貢",
    componentHint: "classical radical 154",
    examples: [
      {word: "貢献", reading: "こうけん", meaning: "contribution (furthering a goal or cause); services (to a cause)"},
      {word: "年貢", reading: "ねんぐ", meaning: "annual tribute; land tax"},
      {word: "貢ぐ", reading: "みつぐ", meaning: "to support; to finance"}
    ],
  },
  {
    kanji: "貪",
    keyword: "covet/indulge in",
    reading: "むさぼ.る / タン / トン",
    radical: "貪",
    componentHint: "classical radical 154",
    examples: [
      {word: "貪る", reading: "むさぼる", meaning: "to covet; to indulge in"},
      {word: "貪欲", reading: "どんよく", meaning: "avarice; greed"},
      {word: "貪婪", reading: "どんらん", meaning: "covetousness; greed"}
    ],
  },
  {
    kanji: "貰",
    keyword: "get/have",
    reading: "もら.う / セイ / シャ",
    radical: "貰",
    componentHint: "classical radical 154",
    examples: [
      {word: "貰う", reading: "もらう", meaning: "to receive; to take"},
      {word: "貰える", reading: "もらえる", meaning: "to be able to receive; to be able to take"},
      {word: "貰い物", reading: "もらいもの", meaning: "(received) present; gift"}
    ],
  },
  {
    kanji: "貧",
    keyword: "poverty/poor",
    reading: "まず.しい / ヒン / ビン",
    radical: "貧",
    componentHint: "classical radical 154",
    examples: [
      {word: "貧しい", reading: "まずしい", meaning: "poor; needy"},
      {word: "貧乏", reading: "びんぼう", meaning: "poverty; destitute"},
      {word: "貧弱", reading: "ひんじゃく", meaning: "poor; meagre"}
    ],
  },
  {
    kanji: "賃",
    keyword: "fare/fee",
    reading: "チン",
    radical: "賃",
    componentHint: "classical radical 154",
    examples: [
      {word: "家賃", reading: "やちん", meaning: "rent"},
      {word: "賃金", reading: "ちんぎん", meaning: "wages; cash payment of rent"},
      {word: "駄賃", reading: "だちん", meaning: "reward; tip"}
    ],
  },
  {
    kanji: "貸",
    keyword: "lend",
    reading: "か.す / か.し- / かし- / タイ",
    radical: "貸",
    componentHint: "classical radical 154",
    examples: [
      {word: "貸す", reading: "かす", meaning: "to lend; to loan"},
      {word: "貸し", reading: "かし", meaning: "loan; lending"},
      {word: "金貸し", reading: "かねかし", meaning: "moneylending; moneylender"}
    ],
  },
  {
    kanji: "貨",
    keyword: "freight/goods",
    reading: "たから / カ",
    radical: "貨",
    componentHint: "classical radical 154",
    examples: [
      {word: "金貨", reading: "きんか", meaning: "gold coin"},
      {word: "貨物", reading: "かもつ", meaning: "cargo; freight"},
      {word: "銀貨", reading: "ぎんか", meaning: "silver coin"}
    ],
  },
  {
    kanji: "資",
    keyword: "assets/resources",
    reading: "シ",
    radical: "資",
    componentHint: "classical radical 154",
    examples: [
      {word: "資料", reading: "しりょう", meaning: "materials; data"},
      {word: "資格", reading: "しかく", meaning: "qualifications; requirements"},
      {word: "資金", reading: "しきん", meaning: "funds; capital"}
    ],
  },
  {
    kanji: "賛",
    keyword: "approve/praise",
    reading: "たす.ける / たた.える / サン",
    radical: "賛",
    componentHint: "classical radical 154",
    examples: [
      {word: "賛成", reading: "さんせい", meaning: "approval; agreement"},
      {word: "賞賛", reading: "しょうさん", meaning: "praise; admiration"},
      {word: "賛同", reading: "さんどう", meaning: "approval; endorsement"}
    ],
  },
  {
    kanji: "替",
    keyword: "exchange/spare",
    reading: "か.える / か.え- / か.わる / タイ",
    radical: "替",
    componentHint: "classical radical 73",
    examples: [
      {word: "着替える", reading: "きがえる", meaning: "to change one's clothes"},
      {word: "替える", reading: "かえる", meaning: "to replace; to exchange"},
      {word: "着替え", reading: "きがえ", meaning: "changing clothes; change of clothes"}
    ],
  },
  {
    kanji: "潜",
    keyword: "submerge/conceal",
    reading: "ひそ.む / もぐ.る / かく.れる / くぐ.る / セン",
    radical: "潜",
    componentHint: "classical radical 85",
    examples: [
      {word: "潜む", reading: "ひそむ", meaning: "to lurk; to lie dormant"},
      {word: "潜る", reading: "くぐる", meaning: "to go under; to pass under"},
      {word: "潜水艦", reading: "せんすいかん", meaning: "submarine"}
    ],
  },
  {
    kanji: "貿",
    keyword: "trade/exchange",
    reading: "ボウ",
    radical: "貿",
    componentHint: "classical radical 154",
    examples: [
      {word: "貿易", reading: "ぼうえき", meaning: "trade (foreign)"},
      {word: "貿易風", reading: "ぼうえきふう", meaning: "trade wind"},
      {word: "片貿易", reading: "かたぼうえき", meaning: "one-sided trade; one way (unbalanced) trade"}
    ],
  },
  {
    kanji: "留",
    keyword: "detain/fasten",
    reading: "と.める / と.まる / とど.める / とど.まる / リュウ / ル",
    radical: "留",
    componentHint: "classical radical 102",
    examples: [
      {word: "留守", reading: "るす", meaning: "absence; being away from home"},
      {word: "留める", reading: "とめる", meaning: "to stop; to turn off"},
      {word: "留まる", reading: "とまる", meaning: "to stop (moving); to come to a stop"}
    ],
  },
  {
    kanji: "溜",
    keyword: "collect/gather",
    reading: "た.まる / たま.る / た.める / したた.る / リュウ",
    radical: "溜",
    componentHint: "classical radical 85",
    examples: [
      {word: "溜息", reading: "ためいき", meaning: "sigh"},
      {word: "溜め息", reading: "ためいき", meaning: "sigh"},
      {word: "溜まる", reading: "たまる", meaning: "to collect; to gather"}
    ],
  },
  {
    kanji: "賀",
    keyword: "congratulations/joy",
    reading: "ガ",
    radical: "賀",
    componentHint: "classical radical 154",
    examples: [
      {word: "年賀状", reading: "ねんがじょう", meaning: "New Year's card"},
      {word: "祝賀", reading: "しゅくが", meaning: "celebration; congratulations"},
      {word: "年賀", reading: "ねんが", meaning: "New Year's greetings; New Year's card"}
    ],
  },
  {
    kanji: "架",
    keyword: "erect/frame",
    reading: "か.ける / か.かる / カ",
    radical: "架",
    componentHint: "classical radical 75",
    examples: [
      {word: "十字架", reading: "じゅうじか", meaning: "cross; the Cross (of Christ)"},
      {word: "架空", reading: "かくう", meaning: "aerial; overhead"},
      {word: "担架", reading: "たんか", meaning: "stretcher; litter"}
    ],
  },
  {
    kanji: "染",
    keyword: "dye/color",
    reading: "そ.める / -ぞ.め / -ぞめ / そ.まる / セン",
    radical: "染",
    componentHint: "classical radical 75",
    examples: [
      {word: "染める", reading: "そめる", meaning: "to dye; to colour"},
      {word: "染まる", reading: "そまる", meaning: "to be dyed; to be tainted"},
      {word: "感染", reading: "かんせん", meaning: "infection; contagion"}
    ],
  },
  {
    kanji: "梨",
    keyword: "pear tree",
    reading: "なし / リ",
    radical: "梨",
    componentHint: "classical radical 75",
    examples: [
      {word: "梨花", reading: "りか", meaning: "pear blossoms"},
      {word: "山梨", reading: "やまなし", meaning: "wild nashi (Pyrus pyrifolia var. pyrifolia); wild Japanese pear"},
      {word: "阿闍梨", reading: "あじゃり", meaning: "high monk (esp. one of correct conduct who acts as a role model for his pupils); high priest"}
    ],
  },
  {
    kanji: "傑",
    keyword: "greatness/excellence",
    reading: "すぐ.れる / ケツ",
    radical: "傑",
    componentHint: "classical radical 9",
    examples: [
      {word: "傑作", reading: "けっさく", meaning: "masterpiece; best work"},
      {word: "豪傑", reading: "ごうけつ", meaning: "hero; great man"},
      {word: "傑出", reading: "けっしゅつ", meaning: "being outstanding; excelling"}
    ],
  },
  {
    kanji: "貴",
    keyword: "precious/value",
    reading: "たっと.い / とうと.い / たっと.ぶ / とうと.ぶ / キ",
    radical: "貴",
    componentHint: "classical radical 154",
    examples: [
      {word: "貴族", reading: "きぞく", meaning: "noble; aristocrat"},
      {word: "貴様", reading: "きさま", meaning: "you; you bastard"},
      {word: "貴方", reading: "きほう", meaning: "your home; your residence"}
    ],
  },
  {
    kanji: "潰",
    keyword: "crush/smash",
    reading: "つぶ.す / つぶ.れる / つい.える / カイ / エ",
    radical: "潰",
    componentHint: "classical radical 85",
    examples: [
      {word: "潰す", reading: "つぶす", meaning: "to smash; to crush"},
      {word: "潰れる", reading: "つぶれる", meaning: "to be crushed; to be smashed"},
      {word: "潰滅", reading: "かいめつ", meaning: "destruction; annihilation"}
    ],
  },
  {
    kanji: "遺",
    keyword: "bequeath/leave behind",
    reading: "のこ.す / イ / ユイ",
    radical: "遺",
    componentHint: "classical radical 162",
    examples: [
      {word: "遺体", reading: "いたい", meaning: "corpse; remains"},
      {word: "遺言", reading: "ゆいごん", meaning: "will; testament"},
      {word: "遺産", reading: "いさん", meaning: "inheritance; bequest"}
    ],
  },
  {
    kanji: "遣",
    keyword: "dispatch/despatch",
    reading: "つか.う / -つか.い / -づか.い / つか.わす / ケン",
    radical: "遣",
    componentHint: "classical radical 162",
    examples: [
      {word: "派遣", reading: "はけん", meaning: "dispatch; despatch"},
      {word: "遣う", reading: "つかう", meaning: "to use (a thing, method, etc.); to make use of"},
      {word: "遣る", reading: "やる", meaning: "to do; to undertake"}
    ],
  },
  {
    kanji: "追",
    keyword: "chase/drive away",
    reading: "お.う / ツイ",
    radical: "追",
    componentHint: "classical radical 162",
    examples: [
      {word: "追う", reading: "おう", meaning: "to chase; to run after"},
      {word: "追いかける", reading: "おいかける", meaning: "to chase; to run after"},
      {word: "追いつく", reading: "おいつく", meaning: "to overtake; to catch up (with)"}
    ],
  },
  {
    kanji: "迫",
    keyword: "urge/force",
    reading: "せま.る / ハク",
    radical: "迫",
    componentHint: "classical radical 162",
    examples: [
      {word: "迫る", reading: "せまる", meaning: "to approach; to draw near"},
      {word: "脅迫", reading: "きょうはく", meaning: "threat; menace"},
      {word: "圧迫", reading: "あっぱく", meaning: "pressure; coercion"}
    ],
  },
  {
    kanji: "泊",
    keyword: "overnight stay/put up at",
    reading: "と.まる / と.める / ハク",
    radical: "泊",
    componentHint: "classical radical 85",
    examples: [
      {word: "泊まる", reading: "とまる", meaning: "to stay at (e.g. hotel); to be docked"},
      {word: "泊る", reading: "とまる", meaning: "to stay at (e.g. hotel); to be docked"},
      {word: "宿泊", reading: "しゅくはく", meaning: "lodging"}
    ],
  },
  {
    kanji: "伯",
    keyword: "chief/count",
    reading: "ハク",
    radical: "伯",
    componentHint: "classical radical 9",
    examples: [
      {word: "伯爵", reading: "はくしゃく", meaning: "count; earl"},
      {word: "伯父", reading: "おじ", meaning: "uncle"},
      {word: "伯母", reading: "おば", meaning: "aunt"}
    ],
  },
  {
    kanji: "拍",
    keyword: "clap/beat (music)",
    reading: "ハク / ヒョウ",
    radical: "拍",
    componentHint: "classical radical 64",
    examples: [
      {word: "拍手", reading: "はくしゅ", meaning: "clapping hands; applause"},
      {word: "拍子", reading: "ひょうし", meaning: "(musical) time; tempo"},
      {word: "拍車", reading: "はくしゃ", meaning: "(riding) spur"}
    ],
  },
  {
    kanji: "弔",
    keyword: "condolences/mourning",
    reading: "とむら.う / とぶら.う / チョウ",
    radical: "弔",
    componentHint: "classical radical 57",
    examples: [
      {word: "弔問", reading: "ちょうもん", meaning: "condolence call"},
      {word: "弔う", reading: "とむらう", meaning: "to mourn for; to condole (family, etc.)"},
      {word: "弔い", reading: "とむらい", meaning: "funeral; burial"}
    ],
  },
  {
    kanji: "沸",
    keyword: "seethe/boil",
    reading: "わ.く / わ.かす / フツ",
    radical: "沸",
    componentHint: "classical radical 85",
    examples: [
      {word: "沸く", reading: "わく", meaning: "to grow hot (e.g. water); to boil"},
      {word: "沸騰", reading: "ふっとう", meaning: "boiling; seething"},
      {word: "沸かす", reading: "わかす", meaning: "to boil; to heat"}
    ],
  },
  {
    kanji: "煮",
    keyword: "boil/cook",
    reading: "に.る / -に / に.える / に.やす / シャ",
    radical: "煮",
    componentHint: "classical radical 86",
    examples: [
      {word: "煮る", reading: "にる", meaning: "to boil; to simmer"},
      {word: "煮える", reading: "にえる", meaning: "to boil; to cook"},
      {word: "煮えたぎる", reading: "にえたぎる", meaning: "to boil; to be boiling hot"}
    ],
  },
  {
    kanji: "費",
    keyword: "expense/cost",
    reading: "つい.やす / つい.える / ヒ",
    radical: "費",
    componentHint: "classical radical 154",
    examples: [
      {word: "費用", reading: "ひよう", meaning: "cost; expense"},
      {word: "消費", reading: "しょうひ", meaning: "consumption; expenditure"},
      {word: "費やす", reading: "ついやす", meaning: "to spend; to expend"}
    ],
  },
  {
    kanji: "弟",
    keyword: "younger brother/faithful service to elders",
    reading: "おとうと / テイ / ダイ / デ",
    radical: "弟",
    componentHint: "classical radical 57",
    examples: [
      {word: "兄弟", reading: "きょうだい", meaning: "siblings; brothers and sisters"},
      {word: "弟子", reading: "でし", meaning: "pupil; disciple"},
      {word: "子弟", reading: "してい", meaning: "young(er) people"}
    ],
  },
  {
    kanji: "第",
    keyword: "No./residence",
    reading: "ダイ / テイ",
    radical: "第",
    componentHint: "classical radical 118",
    examples: [
      {word: "次第", reading: "しだい", meaning: "dependent upon; as soon as"},
      {word: "次第に", reading: "しだいに", meaning: "gradually (progress into a state); in sequence"},
      {word: "第一", reading: "だいいち", meaning: "first; foremost"}
    ],
  },
  {
    kanji: "剃",
    keyword: "shave",
    reading: "まい / そ.る / す.る / テイ",
    radical: "剃",
    componentHint: "classical radical 18",
    examples: [
      {word: "剃る", reading: "する", meaning: "to shave"},
      {word: "剃刀", reading: "かみそり", meaning: "razor"},
      {word: "剃髪", reading: "ていはつ", meaning: "tonsure; cutting off the hair"}
    ],
  },
  {
    kanji: "兄",
    keyword: "elder brother/big brother",
    reading: "あに / ケイ / キョウ",
    radical: "兄",
    componentHint: "classical radical 10",
    examples: [
      {word: "兄さん", reading: "にいさん", meaning: "older brother; elder brother"},
      {word: "兄弟", reading: "きょうだい", meaning: "siblings; brothers and sisters"},
      {word: "兄貴", reading: "あにき", meaning: "elder brother; one's senior"}
    ],
  },
  {
    kanji: "只",
    keyword: "only/free",
    reading: "ただ / シ",
    radical: "只",
    componentHint: "classical radical 30",
    examples: [
      {word: "只今", reading: "ただいま", meaning: "Here I am; I'm home!"},
      {word: "真っ只中", reading: "まっただなか", meaning: "right in the midst of; right at the height of"},
      {word: "只者", reading: "ただもの", meaning: "ordinary person (usu. in neg. sentences)"}
    ],
  },
  {
    kanji: "税",
    keyword: "tax/duty",
    reading: "ゼイ",
    radical: "税",
    componentHint: "classical radical 115",
    examples: [
      {word: "税金", reading: "ぜいきん", meaning: "tax; duty"},
      {word: "税関", reading: "ぜいかん", meaning: "customs; customs house"},
      {word: "税務署", reading: "ぜいむしょ", meaning: "tax office"}
    ],
  },
  {
    kanji: "鋭",
    keyword: "pointed/sharpness",
    reading: "するど.い / エイ",
    radical: "鋭",
    componentHint: "classical radical 167",
    examples: [
      {word: "鋭い", reading: "するどい", meaning: "sharp (blade); pointed"},
      {word: "鋭敏", reading: "えいびん", meaning: "sharpness; keenness"},
      {word: "精鋭", reading: "せいえい", meaning: "elite; picked"}
    ],
  },
  {
    kanji: "説",
    keyword: "opinion/theory",
    reading: "と.く / セツ / ゼイ",
    radical: "説",
    componentHint: "classical radical 149",
    examples: [
      {word: "説明", reading: "せつめい", meaning: "explanation; exposition"},
      {word: "小説", reading: "しょうせつ", meaning: "novel; (short) story"},
      {word: "伝説", reading: "でんせつ", meaning: "tradition; legend"}
    ],
  },
  {
    kanji: "脱",
    keyword: "undress/removing",
    reading: "ぬ.ぐ / ぬ.げる / ダツ",
    radical: "脱",
    componentHint: "classical radical 130",
    examples: [
      {word: "脱ぐ", reading: "ぬぐ", meaning: "to take off (clothes, shoes, etc.); to undress"},
      {word: "脱出", reading: "だっしゅつ", meaning: "escape; break-out"},
      {word: "脱走", reading: "だっそう", meaning: "desertion; escape"}
    ],
  },
  {
    kanji: "閲",
    keyword: "review/inspection",
    reading: "けみ.する / エツ",
    radical: "閲",
    componentHint: "classical radical 169",
    examples: [
      {word: "検閲", reading: "けんえつ", meaning: "censorship; inspection"},
      {word: "閲覧", reading: "えつらん", meaning: "inspection; reading"},
      {word: "閲兵", reading: "えっぺい", meaning: "parade; review (of troops)"}
    ],
  },
  {
    kanji: "祝",
    keyword: "celebrate/congratulate",
    reading: "いわ.う / シュク / シュウ",
    radical: "祝",
    componentHint: "classical radical 113",
    examples: [
      {word: "祝福", reading: "しゅくふく", meaning: "blessing"},
      {word: "祝い", reading: "いわい", meaning: "congratulation; congratulations"},
      {word: "祝う", reading: "いわう", meaning: "to congratulate; to celebrate"}
    ],
  },
  {
    kanji: "況",
    keyword: "condition/situation",
    reading: "まし.て / いわ.んや / おもむき / キョウ",
    radical: "況",
    componentHint: "classical radical 85",
    examples: [
      {word: "状況", reading: "じょうきょう", meaning: "state of affairs (around you); situation"},
      {word: "情況", reading: "じょうきょう", meaning: "state of affairs (around you); situation"},
      {word: "戦況", reading: "せんきょう", meaning: "war situation; progress of a battle"}
    ],
  },
  {
    kanji: "悦",
    keyword: "ecstasy/joy",
    reading: "よろこ.ぶ / よろこ.ばす / エツ",
    radical: "悦",
    componentHint: "classical radical 61",
    examples: [
      {word: "悦び", reading: "よろこび", meaning: "joy; delight"},
      {word: "悦ぶ", reading: "よろこぶ", meaning: "to be delighted; to be glad"},
      {word: "悦楽", reading: "えつらく", meaning: "enjoyment; pleasure"}
    ],
  },
  {
    kanji: "克",
    keyword: "overcome/kindly",
    reading: "か.つ / コク",
    radical: "克",
    componentHint: "classical radical 10",
    examples: [
      {word: "克服", reading: "こくふく", meaning: "conquest (problem, disease, handicap, etc. e.g. poverty, illness); overcoming"},
      {word: "克明", reading: "こくめい", meaning: "detailed; elaborate"},
      {word: "克己", reading: "こっき", meaning: "self denial; self control"}
    ],
  },
  {
    kanji: "競",
    keyword: "emulate/compete with",
    reading: "きそ.う / せ.る / くら.べる / キョウ / ケイ",
    radical: "競",
    componentHint: "classical radical 117",
    examples: [
      {word: "競争", reading: "きょうそう", meaning: "competition; contest"},
      {word: "競技", reading: "きょうぎ", meaning: "game; match"},
      {word: "競馬", reading: "けいば", meaning: "horse racing"}
    ],
  },
  {
    kanji: "姉",
    keyword: "elder sister",
    reading: "あね / はは / シ",
    radical: "姉",
    componentHint: "classical radical 38",
    examples: [
      {word: "姉さん", reading: "ねえさん", meaning: "elder sister; (vocative) young lady"},
      {word: "姉妹", reading: "しまい", meaning: "sisters"},
      {word: "姉ちゃん", reading: "ねえちゃん", meaning: "elder sister; girl"}
    ],
  },
  {
    kanji: "妹",
    keyword: "younger sister",
    reading: "いもうと / マイ",
    radical: "妹",
    componentHint: "classical radical 38",
    examples: [
      {word: "姉妹", reading: "しまい", meaning: "sisters"},
      {word: "兄妹", reading: "きょうだい", meaning: "older brother and younger sister"},
      {word: "従妹", reading: "じゅうまい", meaning: "cousin (younger female)"}
    ],
  },
  {
    kanji: "珠",
    keyword: "pearl/gem",
    reading: "たま / シュ",
    radical: "珠",
    componentHint: "classical radical 96",
    examples: [
      {word: "真珠", reading: "しんじゅ", meaning: "pearl"},
      {word: "数珠", reading: "じゅず", meaning: "rosary; string of prayer beads"},
      {word: "宝珠", reading: "ほうしゅ", meaning: "precious orb; Cintamani stone"}
    ],
  },
  {
    kanji: "殊",
    keyword: "particularly/especially",
    reading: "こと / シュ",
    radical: "殊",
    componentHint: "classical radical 78",
    examples: [
      {word: "特殊", reading: "とくしゅ", meaning: "special; particular"},
      {word: "殊に", reading: "ことに", meaning: "especially; particularly"},
      {word: "殊勝", reading: "しゅしょう", meaning: "admirable; laudable"}
    ],
  },
  {
    kanji: "序",
    keyword: "preface/beginning",
    reading: "つい.で / ついで / ジョ",
    radical: "序",
    componentHint: "classical radical 53",
    examples: [
      {word: "秩序", reading: "ちつじょ", meaning: "order; regularity"},
      {word: "順序", reading: "じゅんじょ", meaning: "order; sequence"},
      {word: "序文", reading: "じょぶん", meaning: "preface; foreword"}
    ],
  },
  {
    kanji: "秩",
    keyword: "regularity/salary",
    reading: "チツ",
    radical: "秩",
    componentHint: "classical radical 115",
    examples: [
      {word: "秩序", reading: "ちつじょ", meaning: "order; regularity"},
      {word: "無秩序", reading: "むちつじょ", meaning: "disorder; chaos"},
      {word: "秩禄", reading: "ちつろく", meaning: "official salary"}
    ],
  },
  {
    kanji: "迭",
    keyword: "transfer/alternation",
    reading: "テツ",
    radical: "迭",
    componentHint: "classical radical 162",
    examples: [
      {word: "更迭", reading: "こうてつ", meaning: "change; shake-up"},
      {word: "迷迭香", reading: "まんねんろう", meaning: "rosemary"},
      {word: "迭", reading: "テツ", meaning: "kanji entry"}
    ],
  },
  {
    kanji: "喜",
    keyword: "rejoice/take pleasure in",
    reading: "よろこ.ぶ / よろこ.ばす / キ",
    radical: "喜",
    componentHint: "classical radical 30",
    examples: [
      {word: "喜ぶ", reading: "よろこぶ", meaning: "to be delighted; to be glad"},
      {word: "喜び", reading: "よろこび", meaning: "joy; delight"},
      {word: "歓喜", reading: "かんき", meaning: "delight; great joy"}
    ],
  },
  {
    kanji: "善",
    keyword: "virtuous/good",
    reading: "よ.い / い.い / よ.く / よし.とする / ゼン",
    radical: "善",
    componentHint: "classical radical 30",
    examples: [
      {word: "善良", reading: "ぜんりょう", meaning: "goodness; excellence"},
      {word: "善い", reading: "よい", meaning: "good; excellent"},
      {word: "善行", reading: "ぜんこう", meaning: "good deed; good conduct"}
    ],
  },
  {
    kanji: "繕",
    keyword: "darning/repair",
    reading: "つくろ.う / ゼン",
    radical: "繕",
    componentHint: "classical radical 120",
    examples: [
      {word: "修繕", reading: "しゅうぜん", meaning: "repair; mending"},
      {word: "取り繕う", reading: "とりつくろう", meaning: "to keep up (appearances); to smooth over (an error, etc.)"},
      {word: "繕う", reading: "つくろう", meaning: "to mend; to patch up"}
    ],
  },
  {
    kanji: "膳",
    keyword: "small low table/tray",
    reading: "かしわ / すす.める / そな.える / ゼン / セン",
    radical: "膳",
    componentHint: "classical radical 130",
    examples: [
      {word: "大膳", reading: "だいぜん", meaning: "black-bellied plover; grey plover (Pluvialis squatarola)"},
      {word: "お膳立て", reading: "おぜんだて", meaning: "setting the table; preparation"},
      {word: "食膳", reading: "しょくぜん", meaning: "dining table; a dish (type of food)"}
    ],
  },
  {
    kanji: "憾",
    keyword: "remorse/regret",
    reading: "うら.む / カン",
    radical: "憾",
    componentHint: "classical radical 61",
    examples: [
      {word: "遺憾", reading: "いかん", meaning: "regrettable; unsatisfactory"},
      {word: "憾み", reading: "うらみ", meaning: "resentment; grudge"},
      {word: "憾む", reading: "うらむ", meaning: "to resent; to curse"}
    ],
  },
  {
    kanji: "恨",
    keyword: "regret/bear a grudge",
    reading: "うら.む / うら.めしい / コン",
    radical: "恨",
    componentHint: "classical radical 61",
    examples: [
      {word: "恨み", reading: "うらみ", meaning: "resentment; grudge"},
      {word: "恨む", reading: "うらむ", meaning: "to resent; to curse"},
      {word: "恨めしい", reading: "うらめしい", meaning: "reproachful; hateful"}
    ],
  },
  {
    kanji: "惜",
    keyword: "pity/be sparing of",
    reading: "お.しい / お.しむ / セキ",
    radical: "惜",
    componentHint: "classical radical 61",
    examples: [
      {word: "惜しい", reading: "おしい", meaning: "regrettable; disappointing"},
      {word: "惜しむ", reading: "おしむ", meaning: "to be frugal; to be sparing"},
      {word: "口惜しい", reading: "くちおしい", meaning: "vexing; annoying"}
    ],
  },
  {
    kanji: "措",
    keyword: "set aside/give up",
    reading: "お.く / ソ",
    radical: "措",
    componentHint: "classical radical 64",
    examples: [
      {word: "措置", reading: "そち", meaning: "measure; measures"},
      {word: "措く", reading: "おく", meaning: "to give up; to except"},
      {word: "挙措", reading: "きょそ", meaning: "behavior; behaviour"}
    ],
  },
  {
    kanji: "借",
    keyword: "borrow/rent",
    reading: "か.りる / シャク",
    radical: "借",
    componentHint: "classical radical 9",
    examples: [
      {word: "借りる", reading: "かりる", meaning: "to borrow; to have a loan"},
      {word: "借金", reading: "しゃっきん", meaning: "debt; loan"},
      {word: "借り", reading: "かり", meaning: "borrowing; debt"}
    ],
  },
  {
    kanji: "錯",
    keyword: "confused/mix",
    reading: "サク / シャク",
    radical: "錯",
    componentHint: "classical radical 167",
    examples: [
      {word: "錯覚", reading: "さっかく", meaning: "optical illusion; hallucination"},
      {word: "錯乱", reading: "さくらん", meaning: "confusion; distraction"},
      {word: "交錯", reading: "こうさく", meaning: "mixture; blending"}
    ],
  },
  {
    kanji: "曽",
    keyword: "formerly/once",
    reading: "かつ / かつて / すなわち / ソウ / ソ / ゾウ",
    radical: "曽",
    componentHint: "classical radical 12",
    examples: [
      {word: "曽孫", reading: "ひまご", meaning: "great-grandchild"},
      {word: "曽祖父", reading: "そうそふ", meaning: "great-grandfather; great-granddad"},
      {word: "曽祖母", reading: "そうそぼ", meaning: "great-grandmother; great-grandma"}
    ],
  },
  {
    kanji: "増",
    keyword: "increase/add",
    reading: "ま.す / ま.し / ふ.える / ふ.やす / ゾウ",
    radical: "増",
    componentHint: "classical radical 32",
    examples: [
      {word: "増す", reading: "ます", meaning: "to increase; to grow"},
      {word: "増える", reading: "ふえる", meaning: "to increase; to multiply"},
      {word: "増やす", reading: "ふやす", meaning: "to increase; to add to"}
    ],
  },
  {
    kanji: "層",
    keyword: "stratum/social class",
    reading: "ソウ",
    radical: "層",
    componentHint: "classical radical 44",
    examples: [
      {word: "一層", reading: "いっそう", meaning: "much more; still more"},
      {word: "大層", reading: "たいそう", meaning: "very much; exaggerated"},
      {word: "上層", reading: "じょうそう", meaning: "upper stratum (classes, stories, storeys)"}
    ],
  },
  {
    kanji: "憎",
    keyword: "hate/detest",
    reading: "にく.む / にく.い / にく.らしい / にく.しみ / ゾウ",
    radical: "憎",
    componentHint: "classical radical 61",
    examples: [
      {word: "憎む", reading: "にくむ", meaning: "to hate; to detest"},
      {word: "憎悪", reading: "ぞうお", meaning: "hatred"},
      {word: "憎しみ", reading: "にくしみ", meaning: "hatred"}
    ],
  },
  {
    kanji: "僧",
    keyword: "Buddhist priest/monk",
    reading: "ソウ",
    radical: "僧",
    componentHint: "classical radical 9",
    examples: [
      {word: "小僧", reading: "こぞう", meaning: "youngster; young Buddhist priest"},
      {word: "僧侶", reading: "そうりょ", meaning: "priest; monk"},
      {word: "僧院", reading: "そういん", meaning: "monastery; temple"}
    ],
  },
  {
    kanji: "贈",
    keyword: "presents/send",
    reading: "おく.る / ゾウ / ソウ",
    radical: "贈",
    componentHint: "classical radical 154",
    examples: [
      {word: "贈る", reading: "おくる", meaning: "to give (as a gift); to present"},
      {word: "贈り物", reading: "おくりもの", meaning: "present; gift"},
      {word: "贈物", reading: "おくりもの", meaning: "present; gift"}
    ],
  },
  {
    kanji: "賄",
    keyword: "bribe/board",
    reading: "まかな.う / ワイ",
    radical: "賄",
    componentHint: "classical radical 154",
    examples: [
      {word: "賄賂", reading: "わいろ", meaning: "bribe; sweetener"},
      {word: "賄う", reading: "まかなう", meaning: "to give board to; to provide meals"},
      {word: "賄い", reading: "まかない", meaning: "boarding; board"}
    ],
  },
  {
    kanji: "賂",
    keyword: "bribe",
    reading: "まいな.い / まいな.う / ロ",
    radical: "賂",
    componentHint: "classical radical 154",
    examples: [
      {word: "賄賂", reading: "わいろ", meaning: "bribe; sweetener"},
      {word: "賂い", reading: "まいない", meaning: "bribe"},
      {word: "賂", reading: "まいない", meaning: "bribe"}
    ],
  },
  {
    kanji: "賦",
    keyword: "levy/ode",
    reading: "フ / ブ",
    radical: "賦",
    componentHint: "classical radical 154",
    examples: [
      {word: "天賦", reading: "てんぷ", meaning: "natural talent; natural gift"},
      {word: "月賦", reading: "げっぷ", meaning: "monthly installment (instalment); monthly payment"},
      {word: "賦与", reading: "ふよ", meaning: "being endowed with (e.g. a gift); being blessed with"}
    ],
  },
  {
    kanji: "賊",
    keyword: "burglar/rebel",
    reading: "ゾク",
    radical: "賊",
    componentHint: "classical radical 154",
    examples: [
      {word: "海賊", reading: "かいぞく", meaning: "pirate; sea robber"},
      {word: "盗賊", reading: "とうぞく", meaning: "thief; robber"},
      {word: "山賊", reading: "さんぞく", meaning: "bandit; brigand"}
    ],
  },
  {
    kanji: "帯",
    keyword: "sash/belt",
    reading: "お.びる / おび / タイ",
    radical: "帯",
    componentHint: "classical radical 50",
    examples: [
      {word: "携帯", reading: "けいたい", meaning: "something carried (in the hand); handheld"},
      {word: "帯びる", reading: "おびる", meaning: "to wear (sword, decoration, etc.); to carry"},
      {word: "地帯", reading: "ちたい", meaning: "area; zone"}
    ],
  },
  {
    kanji: "滞",
    keyword: "stagnate/be delayed",
    reading: "とどこお.る / タイ / テイ",
    radical: "滞",
    componentHint: "classical radical 85",
    examples: [
      {word: "滞在", reading: "たいざい", meaning: "stay; sojourn"},
      {word: "渋滞", reading: "じゅうたい", meaning: "congestion (e.g. traffic); delay"},
      {word: "滞る", reading: "とどこおる", meaning: "to stagnate; to be delayed"}
    ],
  },
  {
    kanji: "渋",
    keyword: "astringent/hesitate",
    reading: "しぶ / しぶ.い / しぶ.る / ジュウ / シュウ",
    radical: "渋",
    componentHint: "classical radical 85",
    examples: [
      {word: "渋い", reading: "しぶい", meaning: "astringent; bitter"},
      {word: "渋々", reading: "しぶしぶ", meaning: "reluctantly; unwillingly"},
      {word: "渋滞", reading: "じゅうたい", meaning: "congestion (e.g. traffic); delay"}
    ],
  },
  {
    kanji: "摂",
    keyword: "vicarious/surrogate",
    reading: "おさ.める / かね.る / と.る / セツ / ショウ",
    radical: "摂",
    componentHint: "classical radical 64",
    examples: [
      {word: "摂る", reading: "とる", meaning: "to have (lunch, etc.); to take (vitamins, etc.)"},
      {word: "摂津", reading: "せっつ", meaning: "Settsu (former province covering parts of modern Osaka and Hyogo)"},
      {word: "摂理", reading: "せつり", meaning: "(divine) providence; dispensation"}
    ],
  },
  {
    kanji: "為",
    keyword: "do/change",
    reading: "ため / な.る / な.す / す.る / イ",
    radical: "為",
    componentHint: "classical radical 87",
    examples: [
      {word: "行為", reading: "こうい", meaning: "act; deed"},
      {word: "為す", reading: "なす", meaning: "to build up; to establish"},
      {word: "無為", reading: "むい", meaning: "idleness; inactivity"}
    ],
  },
  {
    kanji: "偽",
    keyword: "falsehood/lie",
    reading: "いつわ.る / にせ / いつわ.り / ギ / カ",
    radical: "偽",
    componentHint: "classical radical 9",
    examples: [
      {word: "偽物", reading: "にせもの", meaning: "spurious article; forgery"},
      {word: "偽る", reading: "いつわる", meaning: "to lie; to cheat"},
      {word: "偽り", reading: "いつわり", meaning: "lie; falsehood"}
    ],
  },
  {
    kanji: "参",
    keyword: "nonplussed/three (in documents)",
    reading: "まい.る / まい- / まじわる / みつ / サン / シン",
    radical: "参",
    componentHint: "classical radical 28",
    examples: [
      {word: "参る", reading: "まいる", meaning: "to go; to come"},
      {word: "参加", reading: "さんか", meaning: "participation"},
      {word: "参謀", reading: "さんぼう", meaning: "staff officer; participating in planning"}
    ],
  },
  {
    kanji: "惨",
    keyword: "wretched/disaster",
    reading: "みじ.め / いた.む / むご.い / サン / ザン",
    radical: "惨",
    componentHint: "classical radical 61",
    examples: [
      {word: "悲惨", reading: "ひさん", meaning: "disastrous; tragic"},
      {word: "惨め", reading: "みじめ", meaning: "miserable; wretched"},
      {word: "無惨", reading: "むざん", meaning: "cruelty; atrocity"}
    ],
  },
  {
    kanji: "呂",
    keyword: "spine/backbone",
    reading: "せぼね / ロ / リョ",
    radical: "呂",
    componentHint: "classical radical 30",
    examples: [
      {word: "風呂", reading: "ふろ", meaning: "bath; bathtub"},
      {word: "風呂敷", reading: "ふろしき", meaning: "wrapping cloth; cloth wrapper"},
      {word: "風呂場", reading: "ふろば", meaning: "bathroom"}
    ],
  },
  {
    kanji: "侶",
    keyword: "companion/follower",
    reading: "とも / リョ / ロ",
    radical: "侶",
    componentHint: "classical radical 9",
    examples: [
      {word: "僧侶", reading: "そうりょ", meaning: "priest; monk"},
      {word: "伴侶", reading: "はんりょ", meaning: "companion; partner"},
      {word: "侶伴", reading: "りょはん", meaning: "companion"}
    ],
  },
  {
    kanji: "宮",
    keyword: "Shinto shrine/constellations",
    reading: "みや / キュウ / グウ / ク",
    radical: "宮",
    componentHint: "classical radical 40",
    examples: [
      {word: "宮殿", reading: "きゅうでん", meaning: "palace"},
      {word: "宮廷", reading: "きゅうてい", meaning: "imperial court; royal court"},
      {word: "王宮", reading: "おうきゅう", meaning: "royal palace"}
    ],
  },
  {
    kanji: "営",
    keyword: "occupation/camp",
    reading: "いとな.む / いとな.み / エイ",
    radical: "営",
    componentHint: "classical radical 42",
    examples: [
      {word: "経営", reading: "けいえい", meaning: "management; administration"},
      {word: "営業", reading: "えいぎょう", meaning: "business; trade"},
      {word: "営む", reading: "いとなむ", meaning: "to carry on (e.g. in ceremony); to run a business"}
    ],
  },
  {
    kanji: "蛍",
    keyword: "lightning-bug/firefly",
    reading: "ほたる / ケイ",
    radical: "蛍",
    componentHint: "classical radical 142",
    examples: [
      {word: "蛍光", reading: "けいこう", meaning: "fluorescence"},
      {word: "蛍火", reading: "ほたるび", meaning: "light of a firefly"},
      {word: "蛍狩り", reading: "ほたるがり", meaning: "firefly catching"}
    ],
  },
  {
    kanji: "栄",
    keyword: "flourish/prosperity",
    reading: "さか.える / は.え / -ば.え / は.える / エイ / ヨウ",
    radical: "栄",
    componentHint: "classical radical 75",
    examples: [
      {word: "光栄", reading: "こうえい", meaning: "honour; honor"},
      {word: "栄光", reading: "えいこう", meaning: "glory"},
      {word: "栄養", reading: "えいよう", meaning: "nutrition; nourishment"}
    ],
  },
  {
    kanji: "誉",
    keyword: "reputation/praise",
    reading: "ほま.れ / ほ.める / ヨ",
    radical: "誉",
    componentHint: "classical radical 149",
    examples: [
      {word: "名誉", reading: "めいよ", meaning: "honor; honour"},
      {word: "誉める", reading: "ほめる", meaning: "to praise; to admire"},
      {word: "栄誉", reading: "えいよ", meaning: "honour; honor"}
    ],
  },
  {
    kanji: "挙",
    keyword: "raise/plan",
    reading: "あ.げる / あ.がる / こぞ.る / キョ",
    radical: "挙",
    componentHint: "classical radical 64",
    examples: [
      {word: "挙げる", reading: "あげる", meaning: "to raise; to elevate"},
      {word: "選挙", reading: "せんきょ", meaning: "election"},
      {word: "一挙", reading: "いっきょ", meaning: "one effort; one action"}
    ],
  },
  {
    kanji: "拳",
    keyword: "fist",
    reading: "こぶし / ケン / ゲン",
    radical: "拳",
    componentHint: "classical radical 64",
    examples: [
      {word: "拳銃", reading: "けんじゅう", meaning: "pistol; handgun"},
      {word: "拳骨", reading: "げんこつ", meaning: "(clenched) fist; knuckles"},
      {word: "拳法", reading: "けんぽう", meaning: "Chinese art of self-defence (defense)"}
    ],
  },
  {
    kanji: "桜",
    keyword: "cherry",
    reading: "さくら / オウ / ヨウ",
    radical: "桜",
    componentHint: "classical radical 75",
    examples: [
      {word: "桜花", reading: "おうか", meaning: "cherry blossom"},
      {word: "桜色", reading: "さくらいろ", meaning: "cherry blossom (colour, color)"},
      {word: "山桜", reading: "やまざくら", meaning: "mountain cherry (Cerasus jamasakura)"}
    ],
  },
  {
    kanji: "妥",
    keyword: "gentle/peace",
    reading: "ダ",
    radical: "妥",
    componentHint: "classical radical 38",
    examples: [
      {word: "妥協", reading: "だきょう", meaning: "compromise; giving in"},
      {word: "妥当", reading: "だとう", meaning: "valid; proper"},
      {word: "妥結", reading: "だけつ", meaning: "settlement; an agreement"}
    ],
  },
  {
    kanji: "咲",
    keyword: "blossom/bloom",
    reading: "さ.く / -ざき / ショウ",
    radical: "咲",
    componentHint: "classical radical 30",
    examples: [
      {word: "咲く", reading: "さく", meaning: "to bloom"},
      {word: "咲かせる", reading: "さかせる", meaning: "to make bloom"},
      {word: "咲き乱れる", reading: "さきみだれる", meaning: "to bloom in profusion"}
    ],
  },
  {
    kanji: "朕",
    keyword: "majestic plural/imperial we",
    reading: "チン",
    radical: "朕",
    componentHint: "classical radical 74",
    examples: [
      {word: "朕思うに", reading: "ちんおもうに", meaning: "\"We, the emperor, ..\""},
      {word: "朕", reading: "ちん", meaning: "We; Our"},
      {word: "朕", reading: "チン", meaning: "kanji entry"}
    ],
  },
  {
    kanji: "茎",
    keyword: "stalk/stem",
    reading: "くき / ケイ / キョウ",
    radical: "茎",
    componentHint: "classical radical 140",
    examples: [
      {word: "陰茎", reading: "いんけい", meaning: "penis"},
      {word: "歯茎", reading: "はぐき", meaning: "gums; teethridge"},
      {word: "包茎", reading: "ほうけい", meaning: "phimosis"}
    ],
  },
  {
    kanji: "径",
    keyword: "diameter/path",
    reading: "みち / こみち / さしわたし / ただちに / ケイ",
    radical: "径",
    componentHint: "classical radical 60",
    examples: [
      {word: "直径", reading: "ちょっけい", meaning: "diameter"},
      {word: "口径", reading: "こうけい", meaning: "aperture; bore"},
      {word: "半径", reading: "はんけい", meaning: "radius"}
    ],
  },
  {
    kanji: "怪",
    keyword: "suspicious/mystery",
    reading: "あや.しい / あや.しむ / カイ / ケ",
    radical: "怪",
    componentHint: "classical radical 61",
    examples: [
      {word: "怪しい", reading: "あやしい", meaning: "suspicious; dubious"},
      {word: "怪物", reading: "かいぶつ", meaning: "monster"},
      {word: "怪我", reading: "けが", meaning: "injury (to animate object); hurt"}
    ],
  },
  {
    kanji: "軽",
    keyword: "lightly/trifling",
    reading: "かる.い / かろ.やか / かろ.んじる / ケイ",
    radical: "軽",
    componentHint: "classical radical 159",
    examples: [
      {word: "軽い", reading: "かるい", meaning: "light (i.e. not heavy); feeling light (i.e. offering little resistance, moving easily)"},
      {word: "軽蔑", reading: "けいべつ", meaning: "scorn; disdain"},
      {word: "気軽", reading: "きがる", meaning: "carefree; buoyant"}
    ],
  },
  {
    kanji: "経",
    keyword: "sutra/longitude",
    reading: "へ.る / た.つ / たていと / はか.る / ケイ / キョウ",
    radical: "経",
    componentHint: "classical radical 120",
    examples: [
      {word: "経験", reading: "けいけん", meaning: "experience"},
      {word: "神経", reading: "しんけい", meaning: "nerve; nerves"},
      {word: "経つ", reading: "たつ", meaning: "to pass; to lapse"}
    ],
  },
  {
    kanji: "斉",
    keyword: "adjusted/alike",
    reading: "そろ.う / ひと.しい / ひと.しく / あたる / セイ / サイ",
    radical: "斉",
    componentHint: "classical radical 210",
    examples: [
      {word: "一斉", reading: "いっせい", meaning: "simultaneous; all at once"},
      {word: "斉射", reading: "せいしゃ", meaning: "volley; fusillade"},
      {word: "均斉", reading: "きんせい", meaning: "symmetry; balance"}
    ],
  },
  {
    kanji: "斎",
    keyword: "purification/Buddhist food",
    reading: "とき / つつし.む / ものいみ / い.む / サイ",
    radical: "斎",
    componentHint: "classical radical 210",
    examples: [
      {word: "書斎", reading: "しょさい", meaning: "study; library"},
      {word: "斎宮", reading: "さいぐう", meaning: "the ancient imperial princesses serving at the Ise shrine"},
      {word: "斎場", reading: "さいじょう", meaning: "funeral hall; ceremony site"}
    ],
  },
  {
    kanji: "済",
    keyword: "finish/come to an end",
    reading: "す.む / -ず.み / -ずみ / す.まない / サイ / セイ",
    radical: "済",
    componentHint: "classical radical 85",
    examples: [
      {word: "済む", reading: "すむ", meaning: "to finish; to end"},
      {word: "経済", reading: "けいざい", meaning: "economics; business"},
      {word: "済ませる", reading: "すませる", meaning: "to finish; to make an end of"}
    ],
  },
  {
    kanji: "剤",
    keyword: "dose/medicine",
    reading: "かる / けず.る / ザイ / スイ / セイ",
    radical: "剤",
    componentHint: "classical radical 18",
    examples: [
      {word: "覚醒剤", reading: "かくせいざい", meaning: "stimulant (e.g. psychoactive drugs like methamphetamine, ritalin, etc.)"},
      {word: "錠剤", reading: "じょうざい", meaning: "pill; lozenge"},
      {word: "洗剤", reading: "せんざい", meaning: "detergent; washing material"}
    ],
  },
  {
    kanji: "剖",
    keyword: "divide",
    reading: "ボウ",
    radical: "剖",
    componentHint: "classical radical 18",
    examples: [
      {word: "解剖", reading: "かいぼう", meaning: "dissection; autopsy"},
      {word: "剖検", reading: "ぼうけん", meaning: "autopsy; necropsy"},
      {word: "解剖学", reading: "かいぼうがく", meaning: "anatomy"}
    ],
  },
  {
    kanji: "陪",
    keyword: "obeisance/follow",
    reading: "バイ",
    radical: "陪",
    componentHint: "classical radical 170",
    examples: [
      {word: "陪審", reading: "ばいしん", meaning: "jury"},
      {word: "陪臣", reading: "ばいしん", meaning: "rear vassal; daimyo's retainer"},
      {word: "陪席", reading: "ばいせき", meaning: "sitting with one's superior; in attendance"}
    ],
  },
  {
    kanji: "培",
    keyword: "cultivate/foster",
    reading: "つちか.う / バイ",
    radical: "培",
    componentHint: "classical radical 32",
    examples: [
      {word: "栽培", reading: "さいばい", meaning: "cultivation"},
      {word: "培養", reading: "ばいよう", meaning: "cultivation; nurture"},
      {word: "培う", reading: "つちかう", meaning: "to cultivate; to foster"}
    ],
  },
  {
    kanji: "賠",
    keyword: "compensation/indemnify",
    reading: "バイ",
    radical: "賠",
    componentHint: "classical radical 154",
    examples: [
      {word: "賠償", reading: "ばいしょう", meaning: "compensation; reparations"},
      {word: "賠責", reading: "ばいせき", meaning: "liability insurance"},
      {word: "損賠", reading: "そんばい", meaning: "restitution; compensation for damages"}
    ],
  },
  {
    kanji: "貼",
    keyword: "stick/paste",
    reading: "は.る / つ.く / テン / チョウ",
    radical: "貼",
    componentHint: "classical radical 154",
    examples: [
      {word: "貼る", reading: "はる", meaning: "to stick; to paste"},
      {word: "貼り紙", reading: "はりがみ", meaning: "paper patch; paper backing"},
      {word: "貼紙", reading: "はりがみ", meaning: "paper patch; paper backing"}
    ],
  },
  {
    kanji: "粘",
    keyword: "sticky/glutinous",
    reading: "ねば.る / ネン",
    radical: "粘",
    componentHint: "classical radical 119",
    examples: [
      {word: "粘土", reading: "ねんど", meaning: "clay"},
      {word: "粘る", reading: "ねばる", meaning: "to be sticky; to be adhesive"},
      {word: "粘液", reading: "ねんえき", meaning: "mucus; mucilage"}
    ],
  },
  {
    kanji: "衡",
    keyword: "equilibrium/measuring rod",
    reading: "コウ",
    radical: "衡",
    componentHint: "classical radical 144",
    examples: [
      {word: "均衡", reading: "きんこう", meaning: "equilibrium; balance"},
      {word: "平衡", reading: "へいこう", meaning: "even scale; equilibrium"},
      {word: "不均衡", reading: "ふきんこう", meaning: "imbalance; lack of balance"}
    ],
  },
  {
    kanji: "換",
    keyword: "interchange/period",
    reading: "か.える / -か.える / か.わる / カン",
    radical: "換",
    componentHint: "classical radical 64",
    examples: [
      {word: "交換", reading: "こうかん", meaning: "exchange; interchange"},
      {word: "転換", reading: "てんかん", meaning: "conversion; diversion"},
      {word: "換える", reading: "かえる", meaning: "to replace; to exchange"}
    ],
  },
  {
    kanji: "喚",
    keyword: "yell/cry",
    reading: "わめ.く / カン",
    radical: "喚",
    componentHint: "classical radical 30",
    examples: [
      {word: "喚く", reading: "わめく", meaning: "to shout; to cry"},
      {word: "召喚", reading: "しょうかん", meaning: "summons; summonsing"},
      {word: "喚声", reading: "かんせい", meaning: "shout"}
    ],
  },
  {
    kanji: "絶",
    keyword: "discontinue/beyond",
    reading: "た.える / た.やす / た.つ / ゼツ",
    radical: "絶",
    componentHint: "classical radical 120",
    examples: [
      {word: "絶対", reading: "ぜったい", meaning: "absolutely; unconditionally"},
      {word: "絶望", reading: "ぜつぼう", meaning: "despair; hopelessness"},
      {word: "絶える", reading: "たえる", meaning: "to die out; to peter out"}
    ],
  },
  {
    kanji: "免",
    keyword: "excuse/dismissal",
    reading: "まぬか.れる / まぬが.れる / メン",
    radical: "免",
    componentHint: "classical radical 10",
    examples: [
      {word: "御免", reading: "ごめん", meaning: "your pardon; declining (something)"},
      {word: "免れる", reading: "まぬかれる", meaning: "to escape from; to be rescued from"},
      {word: "免許", reading: "めんきょ", meaning: "license; permit"}
    ],
  },
  {
    kanji: "逸",
    keyword: "deviate/idleness",
    reading: "そ.れる / そ.らす / はぐ.れる / イツ",
    radical: "逸",
    componentHint: "classical radical 162",
    examples: [
      {word: "逸らす", reading: "そらす", meaning: "to turn away; to avert"},
      {word: "逸す", reading: "いっす", meaning: "to lose (a chance); to miss (a chance)"},
      {word: "逸話", reading: "いつわ", meaning: "anecdote"}
    ],
  },
  {
    kanji: "勉",
    keyword: "exertion/endeavour",
    reading: "つと.める / ベン",
    radical: "勉",
    componentHint: "classical radical 19",
    examples: [
      {word: "勉強", reading: "べんきょう", meaning: "study; diligence"},
      {word: "勤勉", reading: "きんべん", meaning: "diligent; industrious"},
      {word: "勉学", reading: "べんがく", meaning: "study; pursuit of knowledge"}
    ],
  },
  {
    kanji: "晩",
    keyword: "nightfall/night",
    reading: "バン",
    radical: "晩",
    componentHint: "classical radical 72",
    examples: [
      {word: "今晩", reading: "こんばん", meaning: "tonight; this evening"},
      {word: "一晩", reading: "ひとばん", meaning: "one night; one evening"},
      {word: "毎晩", reading: "まいばん", meaning: "every night"}
    ],
  },
  {
    kanji: "許",
    keyword: "permit/approve",
    reading: "ゆる.す / もと / キョ",
    radical: "許",
    componentHint: "classical radical 149",
    examples: [
      {word: "許す", reading: "ゆるす", meaning: "to permit; to allow"},
      {word: "許可", reading: "きょか", meaning: "permission; approval"},
      {word: "免許", reading: "めんきょ", meaning: "license; permit"}
    ],
  },
  {
    kanji: "象",
    keyword: "elephant/pattern after",
    reading: "かたど.る / ショウ / ゾウ",
    radical: "象",
    componentHint: "classical radical 152",
    examples: [
      {word: "印象", reading: "いんしょう", meaning: "impression"},
      {word: "現象", reading: "げんしょう", meaning: "phenomenon"},
      {word: "対象", reading: "たいしょう", meaning: "target; object (of worship, study, etc.)"}
    ],
  },
  {
    kanji: "像",
    keyword: "statue/picture",
    reading: "ゾウ",
    radical: "像",
    componentHint: "classical radical 9",
    examples: [
      {word: "想像", reading: "そうぞう", meaning: "imagination; guess"},
      {word: "映像", reading: "えいぞう", meaning: "reflection; image"},
      {word: "肖像", reading: "しょうぞう", meaning: "portrait"}
    ],
  },
  {
    kanji: "彫",
    keyword: "carve/engrave",
    reading: "ほ.る / -ぼ.り / チョウ",
    radical: "彫",
    componentHint: "classical radical 59",
    examples: [
      {word: "彫刻", reading: "ちょうこく", meaning: "carving; engraving"},
      {word: "彫る", reading: "ほる", meaning: "to carve; to engrave"},
      {word: "彫像", reading: "ちょうぞう", meaning: "sculpture; carved statue"}
    ],
  },
  {
    kanji: "景",
    keyword: "scenery/view",
    reading: "ケイ",
    radical: "景",
    componentHint: "classical radical 72",
    examples: [
      {word: "光景", reading: "こうけい", meaning: "scene; spectacle"},
      {word: "風景", reading: "ふうけい", meaning: "scenery; scene"},
      {word: "景色", reading: "けしき", meaning: "scenery; scene"}
    ],
  },
  {
    kanji: "影",
    keyword: "shadow/silhouette",
    reading: "かげ / エイ",
    radical: "影",
    componentHint: "classical radical 59",
    examples: [
      {word: "影響", reading: "えいきょう", meaning: "influence; effect"},
      {word: "人影", reading: "ひとかげ", meaning: "figure of a person; figures of people"},
      {word: "撮影", reading: "さつえい", meaning: "photography (still or motion); photographing"}
    ],
  },
  {
    kanji: "撮",
    keyword: "snapshot/take pictures",
    reading: "と.る / つま.む / -ど.り / サツ",
    radical: "撮",
    componentHint: "classical radical 64",
    examples: [
      {word: "撮る", reading: "とる", meaning: "to take (a photo); to record (video, audio, etc.)"},
      {word: "撮影", reading: "さつえい", meaning: "photography (still or motion); photographing"},
      {word: "撮れる", reading: "とれる", meaning: "to be photographed; to be able to photograph"}
    ],
  },
  {
    kanji: "就",
    keyword: "concerning/settle",
    reading: "つ.く / つ.ける / シュウ / ジュ",
    radical: "就",
    componentHint: "classical radical 43",
    examples: [
      {word: "就く", reading: "つく", meaning: "to ascend (the throne); to accede"},
      {word: "就職", reading: "しゅうしょく", meaning: "finding employment; getting a job"},
      {word: "就任", reading: "しゅうにん", meaning: "inauguration; assumption of office"}
    ],
  },
  {
    kanji: "涼",
    keyword: "refreshing/nice and cool",
    reading: "すず.しい / すず.む / すず.やか / うす.い / リョウ",
    radical: "涼",
    componentHint: "classical radical 85",
    examples: [
      {word: "涼しい", reading: "すずしい", meaning: "cool; refreshing"},
      {word: "涼しげ", reading: "すずしげ", meaning: "cool; cool-looking"},
      {word: "荒涼", reading: "こうりょう", meaning: "desolate; dreary"}
    ],
  },
  {
    kanji: "鯨",
    keyword: "whale",
    reading: "くじら / ゲイ",
    radical: "鯨",
    componentHint: "classical radical 195",
    examples: [
      {word: "捕鯨", reading: "ほげい", meaning: "whaling; whale fishing"},
      {word: "抹香鯨", reading: "まっこうくじら", meaning: "sperm whale"},
      {word: "鯨骨", reading: "げいこつ", meaning: "whale bone"}
    ],
  },
  {
    kanji: "隔",
    keyword: "isolate/alternate",
    reading: "へだ.てる / へだ.たる / カク",
    radical: "隔",
    componentHint: "classical radical 170",
    examples: [
      {word: "隔てる", reading: "へだてる", meaning: "to separate (by distance, time, etc.); to isolate"},
      {word: "間隔", reading: "かんかく", meaning: "space; interval"},
      {word: "隔離", reading: "かくり", meaning: "isolation; segregation"}
    ],
  },
  {
    kanji: "融",
    keyword: "dissolve/melt",
    reading: "と.ける / と.かす / ユウ",
    radical: "融",
    componentHint: "classical radical 142",
    examples: [
      {word: "融資", reading: "ゆうし", meaning: "financing; loan"},
      {word: "金融", reading: "きんゆう", meaning: "financing; credit transacting"},
      {word: "融合", reading: "ゆうごう", meaning: "agglutination; adhesion"}
    ],
  },
  {
    kanji: "肖",
    keyword: "resemblance",
    reading: "あやか.る / ショウ",
    radical: "肖",
    componentHint: "classical radical 130",
    examples: [
      {word: "肖像", reading: "しょうぞう", meaning: "portrait"},
      {word: "不肖", reading: "ふしょう", meaning: "unworthiness of one's father (or master); incompetence"},
      {word: "肖る", reading: "あやかる", meaning: "to share good luck; to follow (someone's) example"}
    ],
  },
  {
    kanji: "消",
    keyword: "extinguish/blow out",
    reading: "き.える / け.す / ショウ",
    radical: "消",
    componentHint: "classical radical 85",
    examples: [
      {word: "消える", reading: "きえる", meaning: "to go out; to vanish"},
      {word: "消す", reading: "けす", meaning: "to erase; to delete"},
      {word: "消滅", reading: "しょうめつ", meaning: "extinction; extinguishment"}
    ],
  },
  {
    kanji: "硝",
    keyword: "nitrate/saltpeter",
    reading: "ショウ",
    radical: "硝",
    componentHint: "classical radical 112",
    examples: [
      {word: "硝子", reading: "ガラス", meaning: "glass; pane"},
      {word: "硝煙", reading: "しょうえん", meaning: "gunpowder smoke"},
      {word: "煙硝", reading: "えんしょう", meaning: "gunpowder"}
    ],
  },
  {
    kanji: "梢",
    keyword: "treetops/twig",
    reading: "こずえ / くすのき / ショウ",
    radical: "梢",
    componentHint: "classical radical 75",
    examples: [
      {word: "末梢", reading: "まっしょう", meaning: "tree top; tip"},
      {word: "黄梢", reading: "こうしょう", meaning: "spring of yellow buds"},
      {word: "梢子", reading: "しょうし", meaning: "boatman"}
    ],
  },
  {
    kanji: "削",
    keyword: "plane/sharpen",
    reading: "けず.る / はつ.る / そ.ぐ / サク",
    radical: "削",
    componentHint: "classical radical 18",
    examples: [
      {word: "削る", reading: "けずる", meaning: "to shave (wood or leather); to sharpen"},
      {word: "削除", reading: "さくじょ", meaning: "elimination; cancellation"},
      {word: "削ぐ", reading: "そぐ", meaning: "to chip (off); to shave (off)"}
    ],
  },
  {
    kanji: "宵",
    keyword: "wee hours/evening",
    reading: "よい / ショウ",
    radical: "宵",
    componentHint: "classical radical 40",
    examples: [
      {word: "今宵", reading: "こよい", meaning: "this evening; tonight"},
      {word: "宵の口", reading: "よいのくち", meaning: "nightfall; early evening"},
      {word: "宵闇", reading: "よいやみ", meaning: "dusk; twilight"}
    ],
  },
  {
    kanji: "宴",
    keyword: "banquet/feast",
    reading: "うたげ / エン",
    radical: "宴",
    componentHint: "classical radical 40",
    examples: [
      {word: "宴会", reading: "えんかい", meaning: "party; banquet"},
      {word: "酒宴", reading: "しゅえん", meaning: "drinking bout; banquet"},
      {word: "饗宴", reading: "きょうえん", meaning: "feast; banquet"}
    ],
  },
  {
    kanji: "郷",
    keyword: "home town/village",
    reading: "さと / キョウ / ゴウ",
    radical: "郷",
    componentHint: "classical radical 163",
    examples: [
      {word: "故郷", reading: "こきょう", meaning: "home town; birthplace"},
      {word: "郷里", reading: "きょうり", meaning: "birth-place; home town"},
      {word: "本郷", reading: "ほんごう", meaning: "one's hometown"}
    ],
  },
  {
    kanji: "饗",
    keyword: "banquet",
    reading: "う.ける / もてな.す / キョウ",
    radical: "饗",
    componentHint: "classical radical 184",
    examples: [
      {word: "饗宴", reading: "きょうえん", meaning: "feast; banquet"},
      {word: "饗応", reading: "きょうおう", meaning: "entertainment; treat"},
      {word: "大饗", reading: "たいきょう", meaning: "large banquet; court banquet (Heian period)"}
    ],
  },
  {
    kanji: "響",
    keyword: "echo/sound",
    reading: "ひび.く / キョウ",
    radical: "響",
    componentHint: "classical radical 180",
    examples: [
      {word: "響く", reading: "ひびく", meaning: "to resound; to be heard far away"},
      {word: "影響", reading: "えいきょう", meaning: "influence; effect"},
      {word: "響き", reading: "どよめき", meaning: "commotion; stir"}
    ],
  },
  {
    kanji: "城",
    keyword: "castle",
    reading: "しろ / ジョウ",
    radical: "城",
    componentHint: "classical radical 32",
    examples: [
      {word: "城壁", reading: "じょうへき", meaning: "rampart; castle walls"},
      {word: "城内", reading: "じょうない", meaning: "inside a castle"},
      {word: "城門", reading: "じょうもん", meaning: "castle gate"}
    ],
  },
  {
    kanji: "誠",
    keyword: "sincerity/admonish",
    reading: "まこと / セイ",
    radical: "誠",
    componentHint: "classical radical 149",
    examples: [
      {word: "誠実", reading: "せいじつ", meaning: "sincere; honest"},
      {word: "忠誠", reading: "ちゅうせい", meaning: "loyalty; sincerity"},
      {word: "誠に", reading: "まことに", meaning: "indeed; really"}
    ],
  },
  {
    kanji: "盛",
    keyword: "boom/prosper",
    reading: "も.る / さか.る / さか.ん / セイ / ジョウ",
    radical: "盛",
    componentHint: "classical radical 108",
    examples: [
      {word: "盛る", reading: "さかる", meaning: "to prosper; to flourish"},
      {word: "盛り上がる", reading: "もりあがる", meaning: "to swell; to rise"},
      {word: "盛ん", reading: "さかん", meaning: "popular; prosperous"}
    ],
  },
  {
    kanji: "旺",
    keyword: "flourishing/successful",
    reading: "かがや.き / うつくし.い / さかん / オウ / キョウ / ゴウ",
    radical: "旺",
    componentHint: "classical radical 72",
    examples: [
      {word: "旺盛", reading: "おうせい", meaning: "full of vim and vigor"},
      {word: "旺然", reading: "おうぜん", meaning: "prosperous"},
      {word: "気力旺盛", reading: "きりょくおうせい", meaning: "being full of energy (drive, motivation, vitality)"}
    ],
  },
  {
    kanji: "盆",
    keyword: "basin/lantern festival",
    reading: "ボン",
    radical: "盆",
    componentHint: "classical radical 108",
    examples: [
      {word: "お盆", reading: "おぼん", meaning: "O-Bon; Bon Festival"},
      {word: "盆地", reading: "ぼんち", meaning: "basin (e.g. between mountains)"},
      {word: "盆栽", reading: "ぼんさい", meaning: "bonsai; miniature potted plant"}
    ],
  },
  {
    kanji: "蓋",
    keyword: "cover/lid",
    reading: "ふた / けだ.し / おお.う / かさ / ガイ / カイ / コウ",
    radical: "蓋",
    componentHint: "classical radical 140",
    examples: [
      {word: "頭蓋骨", reading: "ずがいこつ", meaning: "skull; cranium"},
      {word: "天蓋", reading: "てんがい", meaning: "canopy; dome"},
      {word: "頭蓋", reading: "ずがい", meaning: "cranium; skull"}
    ],
  },
  {
    kanji: "盗",
    keyword: "steal/rob",
    reading: "ぬす.む / ぬす.み / トウ",
    radical: "盗",
    componentHint: "classical radical 108",
    examples: [
      {word: "盗む", reading: "ぬすむ", meaning: "to steal"},
      {word: "強盗", reading: "ごうとう", meaning: "robber; mugger"},
      {word: "盗賊", reading: "とうぞく", meaning: "thief; robber"}
    ],
  },
  {
    kanji: "盟",
    keyword: "alliance/oath",
    reading: "メイ",
    radical: "盟",
    componentHint: "classical radical 108",
    examples: [
      {word: "同盟", reading: "どうめい", meaning: "alliance; union"},
      {word: "連盟", reading: "れんめい", meaning: "league; federation"},
      {word: "盟主", reading: "めいしゅ", meaning: "leader; leading power"}
    ],
  },
  {
    kanji: "塩",
    keyword: "salt",
    reading: "しお / エン",
    radical: "塩",
    componentHint: "classical radical 32",
    examples: [
      {word: "塩梅", reading: "えんばい", meaning: "seasoning; flavour"},
      {word: "塩水", reading: "えんすい", meaning: "salt water; brine"},
      {word: "塩分", reading: "えんぶん", meaning: "salt; salt content"}
    ],
  },
  {
    kanji: "傷",
    keyword: "wound/hurt",
    reading: "きず / いた.む / いた.める / ショウ",
    radical: "傷",
    componentHint: "classical radical 9",
    examples: [
      {word: "傷つける", reading: "きずつける", meaning: "to wound; to injure"},
      {word: "傷つく", reading: "きずつく", meaning: "to be wounded; to get injured"},
      {word: "負傷", reading: "ふしょう", meaning: "injury; wound"}
    ],
  },
  {
    kanji: "揚",
    keyword: "raise/elevate",
    reading: "あ.げる / -あ.げ / あ.がる / ヨウ",
    radical: "揚",
    componentHint: "classical radical 64",
    examples: [
      {word: "引き揚げる", reading: "ひきあげる", meaning: "to pull up; to drag up"},
      {word: "揚げる", reading: "あげる", meaning: "to raise; to elevate"},
      {word: "抑揚", reading: "よくよう", meaning: "intonation; accent"}
    ],
  },
  {
    kanji: "暢",
    keyword: "stretch",
    reading: "のび.る / チョウ",
    radical: "暢",
    componentHint: "classical radical 72",
    examples: [
      {word: "流暢", reading: "りゅうちょう", meaning: "fluent (language skill); flowing"},
      {word: "暢気", reading: "のんき", meaning: "carefree; optimistic"},
      {word: "暢達", reading: "ちょうたつ", meaning: "fluency; facileness"}
    ],
  },
  {
    kanji: "陽",
    keyword: "sunshine/yang principle",
    reading: "ひ / ヨウ",
    radical: "陽",
    componentHint: "classical radical 170",
    examples: [
      {word: "太陽", reading: "たいよう", meaning: "sun; solar"},
      {word: "陽子", reading: "ようし", meaning: "proton"},
      {word: "陽気", reading: "ようき", meaning: "cheerful; jovial"}
    ],
  },
  {
    kanji: "陰",
    keyword: "shade/yin",
    reading: "かげ / かげ.る / イン",
    radical: "陰",
    componentHint: "classical radical 170",
    examples: [
      {word: "陰気", reading: "いんき", meaning: "gloom; melancholy"},
      {word: "陰謀", reading: "いんぼう", meaning: "plot; intrigue"},
      {word: "お陰", reading: "おかげ", meaning: "grace (of God); benevolence (of Buddha)"}
    ],
  },
  {
    kanji: "隠",
    keyword: "conceal/hide",
    reading: "かく.す / かく.し / かく.れる / かか.す / イン / オン",
    radical: "隠",
    componentHint: "classical radical 170",
    examples: [
      {word: "隠す", reading: "かくす", meaning: "to hide; to conceal"},
      {word: "隠れる", reading: "かくれる", meaning: "to hide; to be hidden"},
      {word: "隠居", reading: "いんきょ", meaning: "retirement; retired person"}
    ],
  },
  {
    kanji: "穏",
    keyword: "calm/quiet",
    reading: "おだ.やか / オン",
    radical: "穏",
    componentHint: "classical radical 115",
    examples: [
      {word: "穏やか", reading: "おだやか", meaning: "calm; gentle"},
      {word: "平穏", reading: "へいおん", meaning: "tranquil; calm"},
      {word: "不穏", reading: "ふおん", meaning: "unrest; turbulence"}
    ],
  },
  {
    kanji: "穂",
    keyword: "ear/ear (grain)",
    reading: "ほ / スイ",
    radical: "穂",
    componentHint: "classical radical 115",
    examples: [
      {word: "穂先", reading: "ほさき", meaning: "ear (e.g. of wheat); tip (e.g. of brush or spear)"},
      {word: "穂波", reading: "ほなみ", meaning: "waving heads (of grain)"},
      {word: "稲穂", reading: "いなほ", meaning: "ear (head) of rice"}
    ],
  },
  {
    kanji: "稲",
    keyword: "rice plant",
    reading: "いね / いな- / トウ / テ",
    radical: "稲",
    componentHint: "classical radical 115",
    examples: [
      {word: "稲妻", reading: "いなづま", meaning: "(flash of) lightning"},
      {word: "稲荷", reading: "いなり", meaning: "Inari (god of harvests, Uka-no-Mitama); Inari shrine"},
      {word: "早稲田", reading: "わせだ", meaning: "field of early-blooming (or ripening) rice"}
    ],
  },
  {
    kanji: "愁",
    keyword: "distress/grieve",
    reading: "うれ.える / うれ.い / シュウ",
    radical: "愁",
    componentHint: "classical radical 61",
    examples: [
      {word: "郷愁", reading: "きょうしゅう", meaning: "nostalgia; homesickness"},
      {word: "哀愁", reading: "あいしゅう", meaning: "pathos; sorrow"},
      {word: "憂愁", reading: "ゆうしゅう", meaning: "melancholy; gloom"}
    ],
  },
  {
    kanji: "裁",
    keyword: "tailor/judge",
    reading: "た.つ / さば.く / サイ",
    radical: "裁",
    componentHint: "classical radical 145",
    examples: [
      {word: "裁判", reading: "さいばん", meaning: "trial; judgement"},
      {word: "裁判所", reading: "さいばんしょ", meaning: "court; courthouse"},
      {word: "裁判官", reading: "さいばんかん", meaning: "judge"}
    ],
  },
  {
    kanji: "載",
    keyword: "ride/board",
    reading: "の.せる / の.る / サイ",
    radical: "載",
    componentHint: "classical radical 159",
    examples: [
      {word: "載せる", reading: "のせる", meaning: "to place on (something); to give (someone) a ride"},
      {word: "載る", reading: "のる", meaning: "to be placed on; to be set on"},
      {word: "連載", reading: "れんさい", meaning: "serialization; serialisation"}
    ],
  },
  {
    kanji: "栽",
    keyword: "plantation/planting",
    reading: "サイ",
    radical: "栽",
    componentHint: "classical radical 75",
    examples: [
      {word: "栽培", reading: "さいばい", meaning: "cultivation"},
      {word: "盆栽", reading: "ぼんさい", meaning: "bonsai; miniature potted plant"},
      {word: "前栽", reading: "せんざい", meaning: "garden; trees and flowers in a garden"}
    ],
  },
  {
    kanji: "赦",
    keyword: "pardon/forgiveness",
    reading: "シャ",
    radical: "赦",
    componentHint: "classical radical 155",
    examples: [
      {word: "容赦", reading: "ようしゃ", meaning: "pardon; forgiveness"},
      {word: "赦す", reading: "ゆるす", meaning: "to permit; to allow"},
      {word: "赦免", reading: "しゃめん", meaning: "remission; pardon"}
    ],
  },
  {
    kanji: "跡",
    keyword: "tracks/mark",
    reading: "あと / セキ",
    radical: "跡",
    componentHint: "classical radical 157",
    examples: [
      {word: "足跡", reading: "あしあと", meaning: "footprints; record of page visitors (e.g. in social networking sites)"},
      {word: "奇跡", reading: "きせき", meaning: "miracle; wonder"},
      {word: "追跡", reading: "ついせき", meaning: "chase; pursuit"}
    ],
  },
  {
    kanji: "踪",
    keyword: "remains/clue",
    reading: "あと / ソウ / ショウ",
    radical: "踪",
    componentHint: "classical radical 157",
    examples: [
      {word: "失踪", reading: "しっそう", meaning: "absconding; disappearance"},
      {word: "失踪者", reading: "しっそうしゃ", meaning: "missing person; runaway"},
      {word: "失踪宣告", reading: "しっそうせんこく", meaning: "court decision declaring a missing person legally dead"}
    ],
  },
  {
    kanji: "痕",
    keyword: "mark/foot print",
    reading: "あと / コン",
    radical: "痕",
    componentHint: "classical radical 104",
    examples: [
      {word: "痕跡", reading: "こんせき", meaning: "trace; traces"},
      {word: "血痕", reading: "けっこん", meaning: "bloodstain"},
      {word: "傷痕", reading: "きずあと", meaning: "scar; cicatrix"}
    ],
  },
  {
    kanji: "蹴",
    keyword: "kick",
    reading: "け.る / シュク / シュウ",
    radical: "蹴",
    componentHint: "classical radical 157",
    examples: [
      {word: "蹴る", reading: "ける", meaning: "to kick; to refuse"},
      {word: "蹴飛ばす", reading: "けとばす", meaning: "to kick away; to kick off"},
      {word: "一蹴", reading: "いっしゅう", meaning: "kicking; rejecting"}
    ],
  },
  {
    kanji: "踊",
    keyword: "jump/dance",
    reading: "おど.る / ヨウ",
    radical: "踊",
    componentHint: "classical radical 157",
    examples: [
      {word: "踊る", reading: "おどる", meaning: "to dance (orig. a hopping dance)"},
      {word: "踊り", reading: "おどり", meaning: "dance"},
      {word: "踊り場", reading: "おどりば", meaning: "dance hall; dance floor"}
    ],
  },
  {
    kanji: "踏",
    keyword: "step/trample",
    reading: "ふ.む / ふ.まえる / トウ",
    radical: "踏",
    componentHint: "classical radical 157",
    examples: [
      {word: "踏む", reading: "ふむ", meaning: "to step on; to tread on"},
      {word: "踏み込む", reading: "ふみこむ", meaning: "to step into (e.g. someone else's territory); to break into"},
      {word: "踏み出す", reading: "ふみだす", meaning: "to step forward; to step forth"}
    ],
  },
  {
    kanji: "躍",
    keyword: "leap/dance",
    reading: "おど.る / ヤク",
    radical: "躍",
    componentHint: "classical radical 157",
    examples: [
      {word: "躍る", reading: "おどる", meaning: "to jump; to leap"},
      {word: "活躍", reading: "かつやく", meaning: "activity (esp. energetic); great efforts"},
      {word: "跳躍", reading: "ちょうやく", meaning: "jump; leap"}
    ],
  },
  {
    kanji: "濯",
    keyword: "laundry/wash",
    reading: "すす.ぐ / ゆす.ぐ / タク",
    radical: "濯",
    componentHint: "classical radical 85",
    examples: [
      {word: "洗濯", reading: "せんたく", meaning: "washing; laundry"},
      {word: "洗濯機", reading: "せんたくき", meaning: "washing machine (laundry)"},
      {word: "濯ぐ", reading: "すすぐ", meaning: "to rinse; to wash out"}
    ],
  },
  {
    kanji: "奇",
    keyword: "strange/strangeness",
    reading: "く.しき / あや.しい / くし / めずら.しい / キ",
    radical: "奇",
    componentHint: "classical radical 37",
    examples: [
      {word: "奇妙", reading: "きみょう", meaning: "strange; queer"},
      {word: "好奇", reading: "こうき", meaning: "inquisitiveness"},
      {word: "奇跡", reading: "きせき", meaning: "miracle; wonder"}
    ],
  },
  {
    kanji: "寄",
    keyword: "draw near/stop in",
    reading: "よ.る / -よ.り / よ.せる / キ",
    radical: "寄",
    componentHint: "classical radical 40",
    examples: [
      {word: "寄る", reading: "よる", meaning: "to approach; to draw near"},
      {word: "寄せる", reading: "よせる", meaning: "to come near; to let someone approach"},
      {word: "近寄る", reading: "ちかよる", meaning: "to approach; to draw near"}
    ],
  },
  {
    kanji: "騎",
    keyword: "equestrian/riding on horses",
    reading: "キ",
    radical: "騎",
    componentHint: "classical radical 187",
    examples: [
      {word: "騎士", reading: "きし", meaning: "knight"},
      {word: "騎馬", reading: "きば", meaning: "horse-riding"},
      {word: "騎兵", reading: "きへい", meaning: "cavalry; cavalryman"}
    ],
  },
  {
    kanji: "椅",
    keyword: "chair",
    reading: "イ",
    radical: "椅",
    componentHint: "classical radical 75",
    examples: [
      {word: "椅子", reading: "いす", meaning: "chair; stool"},
      {word: "長椅子", reading: "ながいす", meaning: "couch; bench"},
      {word: "車椅子", reading: "くるまいす", meaning: "wheelchair; folding push-chair"}
    ],
  },
  {
    kanji: "崎",
    keyword: "promontory/cape",
    reading: "さき / さい / みさき / キ",
    radical: "崎",
    componentHint: "classical radical 46",
    examples: [
      {word: "長崎", reading: "ながさき", meaning: "Nagasaki (city); atomic bombing of Nagasaki"},
      {word: "川崎", reading: "かわさき", meaning: "Kawasaki (city)"},
      {word: "州崎", reading: "すさき", meaning: "sandspit"}
    ],
  },
  {
    kanji: "埼",
    keyword: "cape/spit",
    reading: "さき / さい / みさき / キ",
    radical: "埼",
    componentHint: "classical radical 32",
    examples: [
      {word: "埼玉", reading: "さいたま", meaning: "Saitama (city)"},
      {word: "埼銀", reading: "さいぎん", meaning: "Saitama Bank"},
      {word: "埼玉県", reading: "さいたまけん", meaning: "Saitama prefecture (Kanto area)"}
    ],
  },
  {
    kanji: "岬",
    keyword: "headland/cape",
    reading: "みさき / コウ",
    radical: "岬",
    componentHint: "classical radical 46",
    examples: [
      {word: "岬湾", reading: "こうわん", meaning: "indentations; capes"},
      {word: "岬角", reading: "こうかく", meaning: "anat promontory; promontory"},
      {word: "岬", reading: "さき", meaning: "small peninsula"}
    ],
  },
  {
    kanji: "模",
    keyword: "imitation/copy",
    reading: "モ / ボ",
    radical: "模",
    componentHint: "classical radical 75",
    examples: [
      {word: "模様", reading: "もよう", meaning: "pattern; figure"},
      {word: "規模", reading: "きぼ", meaning: "scale; scope"},
      {word: "模型", reading: "もけい", meaning: "model; dummy"}
    ],
  },
  {
    kanji: "膜",
    keyword: "membrane",
    reading: "マク",
    radical: "膜",
    componentHint: "classical radical 130",
    examples: [
      {word: "鼓膜", reading: "こまく", meaning: "eardrum; tympanic membrane"},
      {word: "網膜", reading: "もうまく", meaning: "retina"},
      {word: "粘膜", reading: "ねんまく", meaning: "mucous membrane"}
    ],
  },
  {
    kanji: "漠",
    keyword: "vague/obscure",
    reading: "バク",
    radical: "漠",
    componentHint: "classical radical 85",
    examples: [
      {word: "砂漠", reading: "さばく", meaning: "desert"},
      {word: "沙漠", reading: "さばく", meaning: "desert"},
      {word: "漠然", reading: "ばくぜん", meaning: "obscure; vague"}
    ],
  },
  {
    kanji: "幕",
    keyword: "curtain/bunting",
    reading: "とばり / マク / バク",
    radical: "幕",
    componentHint: "classical radical 50",
    examples: [
      {word: "幕府", reading: "ばくふ", meaning: "bakufu; shogunate"},
      {word: "字幕", reading: "じまく", meaning: "subtitles; captioning"},
      {word: "天幕", reading: "てんまく", meaning: "curtain; tent"}
    ],
  },
  {
    kanji: "墓",
    keyword: "grave/tomb",
    reading: "はか / ボ",
    radical: "墓",
    componentHint: "classical radical 32",
    examples: [
      {word: "墓地", reading: "ぼち", meaning: "cemetery; graveyard"},
      {word: "墓場", reading: "はかば", meaning: "graveyard; cemetery"},
      {word: "墓石", reading: "はかいし", meaning: "tombstone; gravestone"}
    ],
  },
  {
    kanji: "募",
    keyword: "recruit/campaign",
    reading: "つの.る / ボ",
    radical: "募",
    componentHint: "classical radical 19",
    examples: [
      {word: "募る", reading: "つのる", meaning: "to grow violent; to become stronger"},
      {word: "募集", reading: "ぼしゅう", meaning: "recruiting; taking applications"},
      {word: "応募", reading: "おうぼ", meaning: "application; subscription"}
    ],
  },
  {
    kanji: "暮",
    keyword: "evening/twilight",
    reading: "く.れる / く.らす / ボ",
    radical: "暮",
    componentHint: "classical radical 72",
    examples: [
      {word: "暮らす", reading: "くらす", meaning: "to live; to get along"},
      {word: "暮れる", reading: "くれる", meaning: "to get dark; to end"},
      {word: "暮す", reading: "くらす", meaning: "to live; to get along"}
    ],
  },
  {
    kanji: "慕",
    keyword: "pining/yearn for",
    reading: "した.う / ボ",
    radical: "慕",
    componentHint: "classical radical 61",
    examples: [
      {word: "慕う", reading: "したう", meaning: "to yearn for; to long for"},
      {word: "思慕", reading: "しぼ", meaning: "yearning; deep affection"},
      {word: "恋慕", reading: "れんぼ", meaning: "love; attachment"}
    ],
  },
  {
    kanji: "添",
    keyword: "annexed/accompany",
    reading: "そ.える / そ.う / も.える / も.う / テン",
    radical: "添",
    componentHint: "classical radical 85",
    examples: [
      {word: "添える", reading: "そえる", meaning: "to garnish; to accompany (as a card does a gift)"},
      {word: "添う", reading: "そう", meaning: "to meet (one's expectations, etc.); to satisfy"},
      {word: "寄り添う", reading: "よりそう", meaning: "to get close; to cuddle close together"}
    ],
  },
  {
    kanji: "恭",
    keyword: "respect/reverent",
    reading: "うやうや.しい / キョウ",
    radical: "恭",
    componentHint: "classical radical 61",
    examples: [
      {word: "恭しい", reading: "うやうやしい", meaning: "respectful; reverent"},
      {word: "恭順", reading: "きょうじゅん", meaning: "allegiance"},
      {word: "恭敬", reading: "きょうけい", meaning: "respect; reverence"}
    ],
  },
  {
    kanji: "暴",
    keyword: "outburst/rave",
    reading: "あば.く / あば.れる / ボウ / バク",
    radical: "暴",
    componentHint: "classical radical 72",
    examples: [
      {word: "乱暴", reading: "らんぼう", meaning: "rude; violent"},
      {word: "暴力", reading: "ぼうりょく", meaning: "violence; mayhem"},
      {word: "暴れる", reading: "あばれる", meaning: "to act violently; to rage"}
    ],
  },
  {
    kanji: "爆",
    keyword: "bomb/burst open",
    reading: "は.ぜる / バク",
    radical: "爆",
    componentHint: "classical radical 86",
    examples: [
      {word: "爆発", reading: "ばくはつ", meaning: "explosion; detonation"},
      {word: "爆弾", reading: "ばくだん", meaning: "bomb; alcohol with liquor added (esp. wine-based shochu highball, also beer with whiskey)"},
      {word: "爆撃", reading: "ばくげき", meaning: "bombing (raid)"}
    ],
  },
  {
    kanji: "沿",
    keyword: "run alongside/follow along",
    reading: "そ.う / -ぞ.い / エン",
    radical: "沿",
    componentHint: "classical radical 85",
    examples: [
      {word: "沿う", reading: "そう", meaning: "to run along; to run beside"},
      {word: "沿い", reading: "ぞい", meaning: "along"},
      {word: "沿岸", reading: "えんがん", meaning: "coast; shore"}
    ],
  },
  {
    kanji: "礎",
    keyword: "cornerstone/foundation stone",
    reading: "いしずえ / ソ",
    radical: "礎",
    componentHint: "classical radical 112",
    examples: [
      {word: "基礎", reading: "きそ", meaning: "foundation; basis"},
      {word: "礎石", reading: "そせき", meaning: "foundation stone; cornerstone"},
      {word: "定礎", reading: "ていそ", meaning: "laying a cornerstone (foundation stone)"}
    ],
  },
  {
    kanji: "疑",
    keyword: "doubt/distrust",
    reading: "うたが.う / ギ",
    radical: "疑",
    componentHint: "classical radical 21",
    examples: [
      {word: "疑う", reading: "うたがう", meaning: "to doubt; to distrust"},
      {word: "疑問", reading: "ぎもん", meaning: "question; problem"},
      {word: "疑い", reading: "うたがい", meaning: "doubt; question"}
    ],
  },
  {
    kanji: "凝",
    keyword: "congeal/freeze",
    reading: "こ.る / こ.らす / こご.らす / こご.らせる / ギョウ",
    radical: "凝",
    componentHint: "classical radical 15",
    examples: [
      {word: "凝視", reading: "ぎょうし", meaning: "stare; gaze"},
      {word: "凝らす", reading: "こごらす", meaning: "to freeze; to congeal"},
      {word: "凝る", reading: "こごる", meaning: "to congeal; to freeze"}
    ],
  },
  {
    kanji: "擬",
    keyword: "mimic/aim (a gun) at",
    reading: "まが.い / もど.き / ギ",
    radical: "擬",
    componentHint: "classical radical 64",
    examples: [
      {word: "模擬", reading: "もぎ", meaning: "imitation; sham"},
      {word: "擬態", reading: "ぎたい", meaning: "mimesis; mimicry"},
      {word: "擬似", reading: "ぎじ", meaning: "suspected; pseudo"}
    ],
  },
  {
    kanji: "倣",
    keyword: "emulate/imitate",
    reading: "なら.う / ホウ",
    radical: "倣",
    componentHint: "classical radical 9",
    examples: [
      {word: "模倣", reading: "もほう", meaning: "imitation; copying"},
      {word: "倣う", reading: "ならう", meaning: "to imitate; to follow"},
      {word: "摸倣", reading: "もほう", meaning: "imitation; copying"}
    ],
  },
  {
    kanji: "似",
    keyword: "becoming/resemble",
    reading: "に.る / ひ.る / ジ",
    radical: "似",
    componentHint: "classical radical 9",
    examples: [
      {word: "似る", reading: "にる", meaning: "to resemble; to look like"},
      {word: "真似", reading: "まね", meaning: "imitating; copying"},
      {word: "似合う", reading: "にあう", meaning: "to suit; to match"}
    ],
  },
  {
    kanji: "俵",
    keyword: "bag/bale",
    reading: "たわら / ヒョウ",
    radical: "俵",
    componentHint: "classical radical 9",
    examples: [
      {word: "土俵", reading: "どひょう", meaning: "arena, esp. in sumo; forum (e.g. for discussion)"},
      {word: "土俵入り", reading: "どひょういり", meaning: "entrance procession of wrestlers into the ring"},
      {word: "土俵際", reading: "どひょうぎわ", meaning: "edge of the ring; verge"}
    ],
  },
  {
    kanji: "俺",
    keyword: "I/myself",
    reading: "おれ / われ / エン",
    radical: "俺",
    componentHint: "classical radical 9",
    examples: [
      {word: "満俺", reading: "マンガン", meaning: "manganese (Mn)"},
      {word: "俺ら", reading: "おれら", meaning: "we; us"},
      {word: "俺等", reading: "おれら", meaning: "we; us"}
    ],
  },
  {
    kanji: "庵",
    keyword: "hermitage/retreat",
    reading: "いおり / いお / アン",
    radical: "庵",
    componentHint: "classical radical 53",
    examples: [
      {word: "沢庵", reading: "たくあん", meaning: "pickled daikon radish"},
      {word: "草庵", reading: "そうあん", meaning: "thatched hut"},
      {word: "庵室", reading: "あんしつ", meaning: "hermit's cell; retreat"}
    ],
  },
  {
    kanji: "僕",
    keyword: "me/I (male)",
    reading: "しもべ / ボク",
    radical: "僕",
    componentHint: "classical radical 9",
    examples: [
      {word: "僕たち", reading: "ぼくたち", meaning: "we"},
      {word: "僕ら", reading: "ぼくら", meaning: "we"},
      {word: "下僕", reading: "げぼく", meaning: "manservant"}
    ],
  },
  {
    kanji: "撲",
    keyword: "slap/strike",
    reading: "ボク",
    radical: "撲",
    componentHint: "classical radical 64",
    examples: [
      {word: "相撲", reading: "すもう", meaning: "sumo wrestling; wrestler"},
      {word: "撲る", reading: "なぐる", meaning: "to strike; to hit"},
      {word: "打撲", reading: "だぼく", meaning: "blow; hit (on the body)"}
    ],
  },
  {
    kanji: "叩",
    keyword: "strike/beat",
    reading: "たた.く / はた.く / すぎ / コウ",
    radical: "叩",
    componentHint: "classical radical 30",
    examples: [
      {word: "叩く", reading: "たたく", meaning: "to strike; to clap"},
      {word: "叩きつける", reading: "たたきつける", meaning: "to strike; to throw"},
      {word: "叩き込む", reading: "たたきこむ", meaning: "to drive into; to throw into"}
    ],
  },
  {
    kanji: "伐",
    keyword: "fell/strike",
    reading: "き.る / そむ.く / う.つ / バツ / ハツ / カ",
    radical: "伐",
    componentHint: "classical radical 9",
    examples: [
      {word: "討伐", reading: "とうばつ", meaning: "subjugation; suppression"},
      {word: "伐る", reading: "きる", meaning: "to cut down (e.g. trees)"},
      {word: "征伐", reading: "せいばつ", meaning: "conquest; subjugation"}
    ],
  },
  {
    kanji: "閥",
    keyword: "clique/lineage",
    reading: "バツ",
    radical: "閥",
    componentHint: "classical radical 169",
    examples: [
      {word: "派閥", reading: "はばつ", meaning: "clique; faction"},
      {word: "財閥", reading: "ざいばつ", meaning: "zaibatsu; plutocrats"},
      {word: "軍閥", reading: "ぐんばつ", meaning: "military clique or party"}
    ],
  },
  {
    kanji: "闘",
    keyword: "fight/war",
    reading: "たたか.う / あらそ.う / トウ",
    radical: "闘",
    componentHint: "classical radical 169",
    examples: [
      {word: "戦闘", reading: "せんとう", meaning: "battle; fight"},
      {word: "闘う", reading: "たたかう", meaning: "to make war (on); to wage war (against)"},
      {word: "闘争", reading: "とうそう", meaning: "strife; conflict"}
    ],
  },
  {
    kanji: "闇",
    keyword: "get dark/gloom",
    reading: "やみ / くら.い / アン / オン",
    radical: "闇",
    componentHint: "classical radical 169",
    examples: [
      {word: "暗闇", reading: "くらやみ", meaning: "darkness; the dark"},
      {word: "夕闇", reading: "ゆうやみ", meaning: "dusk; twilight"},
      {word: "薄闇", reading: "うすやみ", meaning: "very dim light"}
    ],
  },
  {
    kanji: "閑",
    keyword: "leisure",
    reading: "カン",
    radical: "閑",
    componentHint: "classical radical 169",
    examples: [
      {word: "閑静", reading: "かんせい", meaning: "quiet (e.g. neighbourhood, neighborhood)"},
      {word: "有閑", reading: "ゆうかん", meaning: "leisured"},
      {word: "長閑", reading: "のどか", meaning: "tranquil; calm"}
    ],
  },
  {
    kanji: "脈",
    keyword: "vein/pulse",
    reading: "すじ / ミャク",
    radical: "脈",
    componentHint: "classical radical 130",
    examples: [
      {word: "山脈", reading: "さんみゃく", meaning: "mountain range"},
      {word: "動脈", reading: "どうみゃく", meaning: "artery"},
      {word: "脈打つ", reading: "みゃくうつ", meaning: "to pound (e.g. heart); to pulse (e.g. vein)"}
    ],
  },
  {
    kanji: "派",
    keyword: "faction/group",
    reading: "ハ",
    radical: "派",
    componentHint: "classical radical 85",
    examples: [
      {word: "立派", reading: "りっぱ", meaning: "splendid; fine"},
      {word: "派手", reading: "はで", meaning: "showy; loud"},
      {word: "派遣", reading: "はけん", meaning: "dispatch; despatch"}
    ],
  },
  {
    kanji: "缶",
    keyword: "tin can/container",
    reading: "かま / カン",
    radical: "缶",
    componentHint: "classical radical 121",
    examples: [
      {word: "缶詰", reading: "かんづめ", meaning: "packing (in cans); canning"},
      {word: "空き缶", reading: "あきかん", meaning: "empty can"},
      {word: "ドラム缶", reading: "ドラムかん", meaning: "drum"}
    ],
  },
  {
    kanji: "揺",
    keyword: "swing/shake",
    reading: "ゆ.れる / ゆ.る / ゆ.らぐ / ゆ.るぐ / ヨウ",
    radical: "揺",
    componentHint: "classical radical 64",
    examples: [
      {word: "揺れる", reading: "ゆれる", meaning: "to shake; to sway"},
      {word: "動揺", reading: "どうよう", meaning: "shaking; trembling"},
      {word: "揺らす", reading: "ゆらす", meaning: "to rock; to shake"}
    ],
  },
  {
    kanji: "謡",
    keyword: "song/sing",
    reading: "うた.い / うた.う / ヨウ",
    radical: "謡",
    componentHint: "classical radical 149",
    examples: [
      {word: "民謡", reading: "みんよう", meaning: "folk song; popular song"},
      {word: "歌謡", reading: "かよう", meaning: "song; ballad"},
      {word: "童謡", reading: "どうよう", meaning: "children's song; nursery rhyme"}
    ],
  },
  {
    kanji: "遥",
    keyword: "far off/distant",
    reading: "はる.か / ヨウ",
    radical: "遥",
    componentHint: "classical radical 162",
    examples: [
      {word: "遥か", reading: "はるか", meaning: "far; far away"},
      {word: "遥かに", reading: "はるかに", meaning: "far off; in the distance"},
      {word: "逍遥", reading: "しょうよう", meaning: "ramble; saunter"}
    ],
  },
  {
    kanji: "陶",
    keyword: "pottery/porcelain",
    reading: "トウ",
    radical: "陶",
    componentHint: "classical radical 170",
    examples: [
      {word: "陶器", reading: "とうき", meaning: "porcelain (esp. soft-paste porcelain); china"},
      {word: "陶酔", reading: "とうすい", meaning: "intoxication"},
      {word: "鬱陶しい", reading: "うっとうしい", meaning: "gloomy (e.g. mood); depressing"}
    ],
  },
  {
    kanji: "陳",
    keyword: "exhibit/state",
    reading: "ひ.ねる / チン",
    radical: "陳",
    componentHint: "classical radical 170",
    examples: [
      {word: "陳列", reading: "ちんれつ", meaning: "exhibition; display"},
      {word: "陳述", reading: "ちんじゅつ", meaning: "statement; declaration"},
      {word: "陳腐", reading: "ちんぷ", meaning: "stale; hackneyed"}
    ],
  },
  {
    kanji: "陣",
    keyword: "camp/battle array",
    reading: "ジン",
    radical: "陣",
    componentHint: "classical radical 170",
    examples: [
      {word: "陣地", reading: "じんち", meaning: "encampment; position"},
      {word: "本陣", reading: "ほんじん", meaning: "troop headquarters; stronghold"},
      {word: "出陣", reading: "しゅつじん", meaning: "departure for the front"}
    ],
  },
  {
    kanji: "陥",
    keyword: "collapse/fall into",
    reading: "おちい.る / おとしい.れる / カン",
    radical: "陥",
    componentHint: "classical radical 170",
    examples: [
      {word: "陥る", reading: "おちいる", meaning: "to fall into (e.g. a hole); to fall into (chaos, depression, dilemma, illness, etc.)"},
      {word: "欠陥", reading: "けっかん", meaning: "defect; fault"},
      {word: "陥落", reading: "かんらく", meaning: "fall; sinking"}
    ],
  },
  {
    kanji: "隆",
    keyword: "hump/high",
    reading: "リュウ",
    radical: "隆",
    componentHint: "classical radical 170",
    examples: [
      {word: "隆起", reading: "りゅうき", meaning: "protuberance; projection"},
      {word: "隆盛", reading: "りゅうせい", meaning: "prosperity"},
      {word: "隆々", reading: "りゅうりゅう", meaning: "prosperous; flourishing"}
    ],
  },
  {
    kanji: "降",
    keyword: "descend/precipitate",
    reading: "お.りる / お.ろす / ふ.る / ふ.り / コウ / ゴ",
    radical: "降",
    componentHint: "classical radical 170",
    examples: [
      {word: "降りる", reading: "おりる", meaning: "to descend (e.g. a mountain); to go down"},
      {word: "降る", reading: "くだる", meaning: "to descend; to go down"},
      {word: "降ろす", reading: "おろす", meaning: "to take down (e.g. flag); to launch (e.g. boat)"}
    ],
  },
  {
    kanji: "峰",
    keyword: "summit/peak",
    reading: "みね / ね / ホウ",
    radical: "峰",
    componentHint: "classical radical 46",
    examples: [
      {word: "高峰", reading: "こうほう", meaning: "high mountain; lofty peak"},
      {word: "連峰", reading: "れんぽう", meaning: "mountain range"},
      {word: "最高峰", reading: "さいこうほう", meaning: "highest peak; highest mountain"}
    ],
  },
  {
    kanji: "逢",
    keyword: "meeting/tryst",
    reading: "あ.う / むか.える / ホウ",
    radical: "逢",
    componentHint: "classical radical 162",
    examples: [
      {word: "逢う", reading: "あう", meaning: "to meet; to encounter"},
      {word: "出逢う", reading: "であう", meaning: "to meet (by chance); to come across"},
      {word: "逢瀬", reading: "おうせ", meaning: "rendezvous; tryst"}
    ],
  },
  {
    kanji: "縫",
    keyword: "sew/stitch",
    reading: "ぬ.う / ホウ",
    radical: "縫",
    componentHint: "classical radical 120",
    examples: [
      {word: "縫う", reading: "ぬう", meaning: "to sew; to stitch"},
      {word: "裁縫", reading: "さいほう", meaning: "sewing"},
      {word: "縫いつける", reading: "ぬいつける", meaning: "to sew on"}
    ],
  },
  {
    kanji: "蜂",
    keyword: "bee/wasp",
    reading: "はち / ホウ",
    radical: "蜂",
    componentHint: "classical radical 142",
    examples: [
      {word: "蜂蜜", reading: "はちみつ", meaning: "honey"},
      {word: "蜂の巣", reading: "はちのす", meaning: "beehive; hive"},
      {word: "蜂起", reading: "ほうき", meaning: "uprising; revolt"}
    ],
  },
  {
    kanji: "蜜",
    keyword: "honey/nectar",
    reading: "ミツ / ビツ",
    radical: "蜜",
    componentHint: "classical radical 40",
    examples: [
      {word: "蜜柑", reading: "みかん", meaning: "mandarin orange (esp. the satsuma mandarin, Citrus unshiu)"},
      {word: "蜂蜜", reading: "はちみつ", meaning: "honey"},
      {word: "蜜蜂", reading: "みつばち", meaning: "honeybee; hive bee"}
    ],
  },
  {
    kanji: "密",
    keyword: "secrecy/density (pop)",
    reading: "ひそ.か / ミツ",
    radical: "密",
    componentHint: "classical radical 40",
    examples: [
      {word: "秘密", reading: "ひみつ", meaning: "secret; secrecy"},
      {word: "密か", reading: "ひそか", meaning: "secret; private"},
      {word: "厳密", reading: "げんみつ", meaning: "strict; close"}
    ],
  },
  {
    kanji: "秘",
    keyword: "secret/conceal",
    reading: "ひ.める / ひそ.か / かく.す / ヒ",
    radical: "秘",
    componentHint: "classical radical 115",
    examples: [
      {word: "秘密", reading: "ひみつ", meaning: "secret; secrecy"},
      {word: "秘書", reading: "ひしょ", meaning: "(private) secretary; treasured book"},
      {word: "神秘", reading: "しんぴ", meaning: "mystery; mysteriousness"}
    ],
  },
  {
    kanji: "欧",
    keyword: "Europe",
    reading: "うた.う / は.く / オウ",
    radical: "欧",
    componentHint: "classical radical 76",
    examples: [
      {word: "西欧", reading: "せいおう", meaning: "Western Europe"},
      {word: "欧米", reading: "おうべい", meaning: "Europe and America; the West"},
      {word: "欧州", reading: "おうしゅう", meaning: "Europe"}
    ],
  },
  {
    kanji: "枢",
    keyword: "hinge/pivot",
    reading: "とぼそ / からくり / スウ / シュ",
    radical: "枢",
    componentHint: "classical radical 75",
    examples: [
      {word: "中枢", reading: "ちゅうすう", meaning: "centre; center"},
      {word: "枢機卿", reading: "すうききょう", meaning: "cardinal (Catholic church)"},
      {word: "枢密院", reading: "すうみついん", meaning: "(Japanese) Privy Council (abolished in 1947)"}
    ],
  },
  {
    kanji: "殴",
    keyword: "assault/hit",
    reading: "なぐ.る / オウ",
    radical: "殴",
    componentHint: "classical radical 79",
    examples: [
      {word: "殴る", reading: "なぐる", meaning: "to strike; to hit"},
      {word: "殴りつける", reading: "なぐりつける", meaning: "to bash; to hit hard"},
      {word: "ぶん殴る", reading: "ぶんなぐる", meaning: "to knock; to hit hard"}
    ],
  },
  {
    kanji: "駆",
    keyword: "drive/run",
    reading: "か.ける / か.る / ク",
    radical: "駆",
    componentHint: "classical radical 187",
    examples: [
      {word: "駆ける", reading: "かける", meaning: "to run (race, esp. horse); to dash"},
      {word: "駆けつける", reading: "かけつける", meaning: "to run to; to come running"},
      {word: "駆け寄る", reading: "かけよる", meaning: "to rush over; to run up to"}
    ],
  },
  {
    kanji: "馳",
    keyword: "run/gallop",
    reading: "は.せる / チ / ジ",
    radical: "馳",
    componentHint: "classical radical 187",
    examples: [
      {word: "ご馳走", reading: "ごちそう", meaning: "feast; treating (someone)"},
      {word: "馳せる", reading: "はせる", meaning: "to run; to hurry (when going somewhere)"},
      {word: "御馳走", reading: "ごちそう", meaning: "feast; treating (someone)"}
    ],
  },
  {
    kanji: "騒",
    keyword: "boisterous/make noise",
    reading: "さわ.ぐ / うれい / さわ.がしい / ソウ",
    radical: "騒",
    componentHint: "classical radical 187",
    examples: [
      {word: "騒ぎ", reading: "さわぎ", meaning: "uproar; disturbance"},
      {word: "騒ぐ", reading: "さわぐ", meaning: "to make noise; to make racket"},
      {word: "騒動", reading: "そうどう", meaning: "strife; riot"}
    ],
  },
  {
    kanji: "旭",
    keyword: "rising sun/morning sun",
    reading: "あさひ / キョク",
    radical: "旭",
    componentHint: "classical radical 72",
    examples: [
      {word: "旭日", reading: "きょくじつ", meaning: "rising sun"},
      {word: "旭光", reading: "きょっこう", meaning: "rays of the rising sun"},
      {word: "旭日大綬章", reading: "きょくじつだいじゅしょう", meaning: "Grand Cordon of the Order of the Rising Sun"}
    ],
  },
  {
    kanji: "旦",
    keyword: "daybreak/dawn",
    reading: "あき.らか / あきら / ただし / あさ / タン / ダン",
    radical: "旦",
    componentHint: "classical radical 72",
    examples: [
      {word: "旦那", reading: "だんな", meaning: "master (of a house, shop, etc.); husband (informal)"},
      {word: "一旦", reading: "いったん", meaning: "once; for a moment"},
      {word: "若旦那", reading: "わかだんな", meaning: "young master; young gentleman"}
    ],
  },
  {
    kanji: "但",
    keyword: "however/but",
    reading: "ただ.し / タン",
    radical: "但",
    componentHint: "classical radical 9",
    examples: [
      {word: "但し", reading: "ただし", meaning: "but; however"},
      {word: "但し書き", reading: "ただしがき", meaning: "proviso"},
      {word: "但書", reading: "ただしがき", meaning: "proviso"}
    ],
  },
  {
    kanji: "担",
    keyword: "shouldering/carry",
    reading: "かつ.ぐ / にな.う / タン",
    radical: "担",
    componentHint: "classical radical 64",
    examples: [
      {word: "担当", reading: "たんとう", meaning: "being in charge (of an area of responsibility); being responsible (for a work role, etc.)"},
      {word: "担ぐ", reading: "かつぐ", meaning: "to shoulder; to carry on one's shoulder"},
      {word: "負担", reading: "ふたん", meaning: "burden; charge"}
    ],
  },
  {
    kanji: "亘",
    keyword: "span/range",
    reading: "わた.る / もと.める / コウ / カン / セン",
    radical: "亘",
    componentHint: "classical radical 7",
    examples: [
      {word: "亘る", reading: "わたる", meaning: "to cross over; to go across"},
      {word: "亘古", reading: "こうこ", meaning: "for ever; from ancient times"},
      {word: "連亘", reading: "れんこう", meaning: "extending in a row"}
    ],
  },
  {
    kanji: "恒",
    keyword: "constancy/always",
    reading: "つね / つねに / コウ",
    radical: "恒",
    componentHint: "classical radical 61",
    examples: [
      {word: "恒星", reading: "こうせい", meaning: "(fixed) star (i.e. not a planet, meteorite, etc.)"},
      {word: "恒例", reading: "こうれい", meaning: "established practice; custom"},
      {word: "恒久", reading: "こうきゅう", meaning: "permanent; perpetuity"}
    ],
  },
  {
    kanji: "垣",
    keyword: "hedge/fence",
    reading: "かき / エン",
    radical: "垣",
    componentHint: "classical radical 32",
    examples: [
      {word: "石垣", reading: "いしがき", meaning: "stone wall"},
      {word: "垣根", reading: "かきね", meaning: "hedge; fence"},
      {word: "人垣", reading: "ひとがき", meaning: "crowd of people"}
    ],
  },
  {
    kanji: "宣",
    keyword: "proclaim/say",
    reading: "のたま.う / セン",
    radical: "宣",
    componentHint: "classical radical 40",
    examples: [
      {word: "宣伝", reading: "せんでん", meaning: "publicity; advertisement"},
      {word: "宣言", reading: "せんげん", meaning: "declaration; proclamation"},
      {word: "宣告", reading: "せんこく", meaning: "sentence; verdict"}
    ],
  },
  {
    kanji: "喧",
    keyword: "noisy/boisterous",
    reading: "やかま.しい / かまびす.しい / ケン",
    radical: "喧",
    componentHint: "classical radical 30",
    examples: [
      {word: "喧嘩", reading: "けんか", meaning: "quarrel; brawl"},
      {word: "喧騒", reading: "けんそう", meaning: "tumult; great noise"},
      {word: "喧噪", reading: "けんそう", meaning: "tumult; great noise"}
    ],
  },
  {
    kanji: "嘩",
    keyword: "noisy",
    reading: "かまびす.しい / カ / ケ",
    radical: "嘩",
    componentHint: "classical radical 30",
    examples: [
      {word: "喧嘩", reading: "けんか", meaning: "quarrel; brawl"},
      {word: "口喧嘩", reading: "くちげんか", meaning: "quarrel; dispute"},
      {word: "喧嘩腰", reading: "けんかごし", meaning: "belligerent"}
    ],
  },
  {
    kanji: "唾",
    keyword: "saliva/sputum",
    reading: "つば / つばき / ダ / タ",
    radical: "唾",
    componentHint: "classical radical 30",
    examples: [
      {word: "唾液", reading: "だえき", meaning: "saliva; sputum"},
      {word: "固唾", reading: "かたず", meaning: "saliva held in one's mouth during times of tension"},
      {word: "生唾", reading: "なまつば", meaning: "saliva (in one's mouth)"}
    ],
  },
  {
    kanji: "壷",
    keyword: "jar/pot",
    reading: "つぼ / コ",
    radical: "壷",
    componentHint: "classical radical 32",
    examples: [
      {word: "滝壷", reading: "たきつぼ", meaning: "plunge basin; waterfall lake"},
      {word: "思う壷", reading: "おもうつぼ", meaning: "one's wishes; one's expectations"},
      {word: "骨壷", reading: "こつつぼ", meaning: "funerary urn"}
    ],
  },
  {
    kanji: "坪",
    keyword: "two-mat area/approx. thirty-six sq ft",
    reading: "つぼ / ヘイ",
    radical: "坪",
    componentHint: "classical radical 32",
    examples: [
      {word: "建坪", reading: "たてつぼ", meaning: "floor space"},
      {word: "坪数", reading: "つぼすう", meaning: "floor space; area (in tsubo)"},
      {word: "建て坪", reading: "たてつぼ", meaning: "floor space"}
    ],
  },
  {
    kanji: "畔",
    keyword: "paddy ridge/levee",
    reading: "あぜ / くろ / ほとり / ハン",
    radical: "畔",
    componentHint: "classical radical 102",
    examples: [
      {word: "湖畔", reading: "こはん", meaning: "lake shore"},
      {word: "河畔", reading: "かはん", meaning: "riverside"},
      {word: "池畔", reading: "ちはん", meaning: "near the pond; edge of a pond"}
    ],
  },
  {
    kanji: "衆",
    keyword: "masses/great numbers",
    reading: "おお.い / シュウ / シュ",
    radical: "衆",
    componentHint: "classical radical 143",
    examples: [
      {word: "群衆", reading: "ぐんしゅう", meaning: "group (of people); crowd"},
      {word: "民衆", reading: "みんしゅう", meaning: "people; populace"},
      {word: "大衆", reading: "たいしゅう", meaning: "general public; the masses"}
    ],
  },
  {
    kanji: "伊",
    keyword: "Italy/that one",
    reading: "かれ / イ",
    radical: "伊",
    componentHint: "classical radical 9",
    examples: [
      {word: "伊達", reading: "だて", meaning: "elegance; dandyism"},
      {word: "伊吹", reading: "いぶき", meaning: "Chinese juniper (Juniperus chinensis)"},
      {word: "木乃伊", reading: "みいら", meaning: "mummy"}
    ],
  },
  {
    kanji: "君",
    keyword: "mister/you",
    reading: "きみ / -ぎみ / クン",
    radical: "君",
    componentHint: "classical radical 30",
    examples: [
      {word: "諸君", reading: "しょくん", meaning: "Gentlemen!; Ladies!"},
      {word: "細君", reading: "さいくん", meaning: "one's wife (when speaking with a close friend); your wife (when speaking with a junior)"},
      {word: "君たち", reading: "きみたち", meaning: "(used colloquially by young females) you (plural); all of you"}
    ],
  },
  {
    kanji: "群",
    keyword: "flock/group",
    reading: "む.れる / む.れ / むら / むら.がる / グン",
    radical: "群",
    componentHint: "classical radical 123",
    examples: [
      {word: "群れ", reading: "むれ", meaning: "group; crowd"},
      {word: "群衆", reading: "ぐんしゅう", meaning: "group (of people); crowd"},
      {word: "群集", reading: "ぐんしゅう", meaning: "group (of living things); crowd"}
    ],
  },
  {
    kanji: "郡",
    keyword: "county/district",
    reading: "こおり / グン",
    radical: "郡",
    componentHint: "classical radical 163",
    examples: [
      {word: "郡部", reading: "ぐんぶ", meaning: "rural districts; counties"},
      {word: "郡県", reading: "ぐんけん", meaning: "counties and prefectures"},
      {word: "郡制", reading: "ぐんせい", meaning: "county system"}
    ],
  },
  {
    kanji: "那",
    keyword: "what?",
    reading: "なに / なんぞ / いかん / ナ / ダ",
    radical: "那",
    componentHint: "classical radical 163",
    examples: [
      {word: "旦那", reading: "だんな", meaning: "master (of a house, shop, etc.); husband (informal)"},
      {word: "刹那", reading: "せつな", meaning: "moment; instant"},
      {word: "若旦那", reading: "わかだんな", meaning: "young master; young gentleman"}
    ],
  },
  {
    kanji: "邦",
    keyword: "home country/country",
    reading: "くに / ホウ",
    radical: "邦",
    componentHint: "classical radical 163",
    examples: [
      {word: "連邦", reading: "れんぽう", meaning: "commonwealth; federation of states"},
      {word: "異邦", reading: "いほう", meaning: "foreign country"},
      {word: "邦人", reading: "ほうじん", meaning: "Japanese national (esp. one living overseas); fellow countryman"}
    ],
  },
  {
    kanji: "郊",
    keyword: "outskirts/suburbs",
    reading: "コウ",
    radical: "郊",
    componentHint: "classical radical 163",
    examples: [
      {word: "郊外", reading: "こうがい", meaning: "suburb; outskirts"},
      {word: "近郊", reading: "きんこう", meaning: "suburbs; outskirts"},
      {word: "南郊", reading: "なんこう", meaning: "southern suburbs"}
    ],
  },
  {
    kanji: "効",
    keyword: "merit/efficacy",
    reading: "き.く / ききめ / なら.う / コウ",
    radical: "効",
    componentHint: "classical radical 19",
    examples: [
      {word: "効果", reading: "こうか", meaning: "effect; effectiveness"},
      {word: "効く", reading: "きく", meaning: "to be effective; to show effect"},
      {word: "有効", reading: "ゆうこう", meaning: "validity; legality"}
    ],
  },
  {
    kanji: "絞",
    keyword: "strangle/constrict",
    reading: "しぼ.る / し.める / し.まる / コウ",
    radical: "絞",
    componentHint: "classical radical 120",
    examples: [
      {word: "絞る", reading: "しぼる", meaning: "to wring (towel, rag); to squeeze"},
      {word: "絞める", reading: "しめる", meaning: "to strangle; to constrict"},
      {word: "絞り出す", reading: "しぼりだす", meaning: "to squeeze out; to wring out"}
    ],
  },
  {
    kanji: "搾",
    keyword: "squeeze",
    reading: "しぼ.る / サク",
    radical: "搾",
    componentHint: "classical radical 64",
    examples: [
      {word: "搾る", reading: "しぼる", meaning: "to wring (towel, rag); to squeeze"},
      {word: "搾取", reading: "さくしゅ", meaning: "exploitation; squeezing"},
      {word: "圧搾", reading: "あっさく", meaning: "pressure; compression"}
    ],
  },
  {
    kanji: "紋",
    keyword: "family crest/figures",
    reading: "モン",
    radical: "紋",
    componentHint: "classical radical 120",
    examples: [
      {word: "指紋", reading: "しもん", meaning: "fingerprint"},
      {word: "紋章", reading: "もんしょう", meaning: "crest; coat of arms"},
      {word: "波紋", reading: "はもん", meaning: "ripple; ring on the water"}
    ],
  },
  {
    kanji: "菊",
    keyword: "chrysanthemum",
    reading: "キク",
    radical: "菊",
    componentHint: "classical radical 140",
    examples: [
      {word: "小菊", reading: "こぎく", meaning: "small chrysanthemum; small low grade piece of japanese paper used as a kettle rest or as a tissue"},
      {word: "白菊", reading: "しらぎく", meaning: "white chrysanthemum"},
      {word: "菊花", reading: "きっか", meaning: "chrysanthemum"}
    ],
  },
  {
    kanji: "帝",
    keyword: "sovereign/the emperor",
    reading: "みかど / テイ",
    radical: "帝",
    componentHint: "classical radical 50",
    examples: [
      {word: "皇帝", reading: "こうてい", meaning: "emperor"},
      {word: "帝国", reading: "ていこく", meaning: "empire; imperial"},
      {word: "帝王", reading: "ていおう", meaning: "sovereign; emperor"}
    ],
  },
  {
    kanji: "締",
    keyword: "tighten/tie",
    reading: "し.まる / し.まり / し.める / -し.め / テイ",
    radical: "締",
    componentHint: "classical radical 120",
    examples: [
      {word: "締める", reading: "しめる", meaning: "to tie; to fasten"},
      {word: "握り締める", reading: "にぎりしめる", meaning: "to grasp tightly"},
      {word: "締めつける", reading: "しめつける", meaning: "to tighten; to press hard"}
    ],
  },
  {
    kanji: "諦",
    keyword: "truth/clarity",
    reading: "あきら.める / つまびらか / まこと / テイ / タイ",
    radical: "諦",
    componentHint: "classical radical 149",
    examples: [
      {word: "諦める", reading: "あきらめる", meaning: "to give up; to abandon (hope, plans)"},
      {word: "諦観", reading: "ていかん", meaning: "clear vision; resignation (as in reconciling oneself)"},
      {word: "諦念", reading: "ていねん", meaning: "understanding and acceptance; spiritual awakening"}
    ],
  },
  {
    kanji: "享",
    keyword: "enjoy/receive",
    reading: "う.ける / キョウ / コウ",
    radical: "享",
    componentHint: "classical radical 8",
    examples: [
      {word: "享楽", reading: "きょうらく", meaning: "enjoyment; pleasure"},
      {word: "享受", reading: "きょうじゅ", meaning: "reception; acceptance"},
      {word: "享年", reading: "きょうねん", meaning: "one's age at death"}
    ],
  },
  {
    kanji: "郭",
    keyword: "enclosure/quarters",
    reading: "くるわ / カク",
    radical: "郭",
    componentHint: "classical radical 163",
    examples: [
      {word: "輪郭", reading: "りんかく", meaning: "contour; outline"},
      {word: "城郭", reading: "じょうかく", meaning: "fortress; castle"},
      {word: "外郭", reading: "がいかく", meaning: "outer wall (e.g. castle); outer block (enclosure)"}
    ],
  },
  {
    kanji: "亭",
    keyword: "pavilion/restaurant",
    reading: "テイ / チン",
    radical: "亭",
    componentHint: "classical radical 8",
    examples: [
      {word: "亭主", reading: "ていしゅ", meaning: "household head; master"},
      {word: "料亭", reading: "りょうてい", meaning: "ryotei; traditional Japanese restaurant (esp. a luxurious one)"},
      {word: "亭主関白", reading: "ていしゅかんぱく", meaning: "husband who rules the roost; domineering husband"}
    ],
  },
  {
    kanji: "停",
    keyword: "halt/stopping",
    reading: "と.める / と.まる / テイ",
    radical: "停",
    componentHint: "classical radical 9",
    examples: [
      {word: "停止", reading: "ていし", meaning: "suspension; interruption"},
      {word: "停める", reading: "とめる", meaning: "to stop; to turn off"},
      {word: "停車", reading: "ていしゃ", meaning: "stopping (e.g. train)"}
    ],
  },
  {
    kanji: "昆",
    keyword: "descendants/elder brother",
    reading: "コン",
    radical: "昆",
    componentHint: "classical radical 72",
    examples: [
      {word: "昆虫", reading: "こんちゅう", meaning: "insect; bug"},
      {word: "昆布", reading: "こんぶ", meaning: "kombu (any kelp of genus Laminaria); konbu"},
      {word: "とろろ昆布", reading: "とろろこんぶ", meaning: "shredded kombu; Kjellmaniella gyrata (species of kelp)"}
    ],
  },
  {
    kanji: "混",
    keyword: "mix/blend",
    reading: "ま.じる / -ま.じり / ま.ざる / ま.ぜる / コン",
    radical: "混",
    componentHint: "classical radical 85",
    examples: [
      {word: "混乱", reading: "こんらん", meaning: "disorder; chaos"},
      {word: "混じる", reading: "まじる", meaning: "to be mixed; to be blended with"},
      {word: "混む", reading: "こむ", meaning: "to be crowded; to be packed"}
    ],
  },
  {
    kanji: "皆",
    keyword: "all/everything",
    reading: "みな / みんな / カイ",
    radical: "皆",
    componentHint: "classical radical 106",
    examples: [
      {word: "皆さん", reading: "みなさん", meaning: "all; everyone"},
      {word: "皆無", reading: "かいむ", meaning: "nonexistent; nil"},
      {word: "皆様", reading: "みなさま", meaning: "everyone"}
    ],
  },
  {
    kanji: "楷",
    keyword: "square character style/correctness",
    reading: "カイ",
    radical: "楷",
    componentHint: "classical radical 75",
    examples: [
      {word: "楷書", reading: "かいしょ", meaning: "square style of handwriting; printed style of handwriting"},
      {word: "楷書体", reading: "かいしょたい", meaning: "square (block) style of printed typeface"},
      {word: "楷行草", reading: "かいぎょうそう", meaning: "printed, semi-cursive, and cursive scripts"}
    ],
  },
  {
    kanji: "諧",
    keyword: "harmony",
    reading: "かな.う / やわ.らぐ / カイ",
    radical: "諧",
    componentHint: "classical radical 149",
    examples: [
      {word: "俳諧", reading: "はいかい", meaning: "haikai; collective name for haiku, haibun, haiga, senryū, etc."},
      {word: "諧謔", reading: "かいぎゃく", meaning: "joke; jest"},
      {word: "諧調", reading: "かいちょう", meaning: "harmonious melody; harmony"}
    ],
  },
  {
    kanji: "階",
    keyword: "storey/stair",
    reading: "きざはし / カイ",
    radical: "階",
    componentHint: "classical radical 170",
    examples: [
      {word: "階段", reading: "かいだん", meaning: "stairs; stairway"},
      {word: "段階", reading: "だんかい", meaning: "grade; level"},
      {word: "階級", reading: "かいきゅう", meaning: "(social) class; rank"}
    ],
  },
  {
    kanji: "陛",
    keyword: "highness/steps (of throne)",
    reading: "ヘイ",
    radical: "陛",
    componentHint: "classical radical 170",
    examples: [
      {word: "陛下", reading: "へいか", meaning: "your Majesty; his (or her) Majesty"},
      {word: "天皇陛下", reading: "てんのうへいか", meaning: "His Majesty the Emperor"},
      {word: "陛衛", reading: "へいえい", meaning: "Imperial guard"}
    ],
  },
  {
    kanji: "陸",
    keyword: "land/six",
    reading: "おか / リク / ロク",
    radical: "陸",
    componentHint: "classical radical 170",
    examples: [
      {word: "陸軍", reading: "りくぐん", meaning: "army"},
      {word: "上陸", reading: "じょうりく", meaning: "landing; disembarkation"},
      {word: "大陸", reading: "たいりく", meaning: "continent; continental Asia (esp. mainland China)"}
    ],
  },
  {
    kanji: "睦",
    keyword: "intimate/friendly",
    reading: "むつ.まじい / むつ.む / むつ.ぶ / ボク / モク",
    radical: "睦",
    componentHint: "classical radical 109",
    examples: [
      {word: "和睦", reading: "わぼく", meaning: "reconciliation; peace"},
      {word: "睦まじい", reading: "むつまじい", meaning: "harmonious; happy"},
      {word: "親睦", reading: "しんぼく", meaning: "friendship; amity"}
    ],
  },
  {
    kanji: "勢",
    keyword: "forces/energy",
    reading: "いきお.い / はずみ / セイ / ゼイ",
    radical: "勢",
    componentHint: "classical radical 19",
    examples: [
      {word: "勢い", reading: "いきおい", meaning: "force; vigor"},
      {word: "姿勢", reading: "しせい", meaning: "attitude; posture"},
      {word: "大勢", reading: "おおぜい", meaning: "many; crowd"}
    ],
  },
  {
    kanji: "熱",
    keyword: "heat/temperature",
    reading: "あつ.い / ネツ",
    radical: "熱",
    componentHint: "classical radical 86",
    examples: [
      {word: "熱い", reading: "あつい", meaning: "hot (thing); passionate (feelings, etc.)"},
      {word: "熱心", reading: "ねっしん", meaning: "zeal; enthusiasm"},
      {word: "情熱", reading: "じょうねつ", meaning: "passion; enthusiasm"}
    ],
  },
  {
    kanji: "熟",
    keyword: "mellow/ripen",
    reading: "う.れる / ジュク",
    radical: "熟",
    componentHint: "classical radical 86",
    examples: [
      {word: "未熟", reading: "みじゅく", meaning: "inexperience; unripeness"},
      {word: "成熟", reading: "せいじゅく", meaning: "maturity; ripeness"},
      {word: "熟練", reading: "じゅくれん", meaning: "skill; dexterity"}
    ],
  },
  {
    kanji: "塾",
    keyword: "cram school/private school",
    reading: "ジュク",
    radical: "塾",
    componentHint: "classical radical 32",
    examples: [
      {word: "塾生", reading: "じゅくせい", meaning: "private-school student"},
      {word: "私塾", reading: "しじゅく", meaning: "private school (in house)"},
      {word: "学習塾", reading: "がくしゅうじゅく", meaning: "private night-school; tutoring school (math, English, etc.)"}
    ],
  },
  {
    kanji: "陵",
    keyword: "mausoleum/imperial tomb",
    reading: "みささぎ / リョウ",
    radical: "陵",
    componentHint: "classical radical 170",
    examples: [
      {word: "丘陵", reading: "きゅうりょう", meaning: "hill"},
      {word: "御陵", reading: "ごりょう", meaning: "imperial tomb"},
      {word: "陵辱", reading: "りょうじょく", meaning: "insult; affront"}
    ],
  },
  {
    kanji: "菱",
    keyword: "diamond (shape)/water chestnut",
    reading: "ひし / リョウ",
    radical: "菱",
    componentHint: "classical radical 140",
    examples: [
      {word: "三菱", reading: "みつびし", meaning: "Mitsubishi (company)"},
      {word: "菱形", reading: "ひしがた", meaning: "diamond shape"},
      {word: "三菱電機", reading: "みつびしでんき", meaning: "Mitsubishi Electric"}
    ],
  },
  {
    kanji: "俊",
    keyword: "sagacious/genius",
    reading: "シュン",
    radical: "俊",
    componentHint: "classical radical 9",
    examples: [
      {word: "俊彦", reading: "しゅんげん", meaning: "gifted man; accomplished man"},
      {word: "俊敏", reading: "しゅんびん", meaning: "quick-witted and agile; keen and nimble"},
      {word: "俊才", reading: "しゅんさい", meaning: "prodigy; talented person"}
    ],
  },
  {
    kanji: "唆",
    keyword: "tempt/seduce",
    reading: "そそ.る / そそのか.す / サ",
    radical: "唆",
    componentHint: "classical radical 30",
    examples: [
      {word: "示唆", reading: "しさ", meaning: "suggestion; hint"},
      {word: "唆す", reading: "そそのかす", meaning: "to instigate; to tempt"},
      {word: "教唆", reading: "きょうさ", meaning: "instigation"}
    ],
  },
  {
    kanji: "筈",
    keyword: "notch of an arrow/ought",
    reading: "はず / やはず / カツ",
    radical: "筈",
    componentHint: "classical radical 118",
    examples: [
      {word: "手筈", reading: "てはず", meaning: "arrangement; plan"},
      {word: "矢筈", reading: "やはず", meaning: "nock of an arrow; forked tool used for hanging scrolls"},
      {word: "弓筈", reading: "ゆはず", meaning: "nock (of a bow)"}
    ],
  },
  {
    kanji: "箸",
    keyword: "chopsticks",
    reading: "はし / チョ / チャク",
    radical: "箸",
    componentHint: "classical radical 118",
    examples: [
      {word: "火箸", reading: "ひばし", meaning: "long metal chopsticks (for handling charcoal, esp. in a brazier); fire tongs"},
      {word: "割り箸", reading: "わりばし", meaning: "splittable (wood) chopsticks"},
      {word: "割箸", reading: "わりばし", meaning: "splittable (wood) chopsticks"}
    ],
  },
  {
    kanji: "暑",
    keyword: "sultry/hot",
    reading: "あつ.い / ショ",
    radical: "暑",
    componentHint: "classical radical 72",
    examples: [
      {word: "暑い", reading: "あつい", meaning: "hot (weather, etc.); warm"},
      {word: "蒸し暑い", reading: "むしあつい", meaning: "humid; sultry"},
      {word: "避暑", reading: "ひしょ", meaning: "summering; going to a summer resort"}
    ],
  },
  {
    kanji: "署",
    keyword: "signature/govt office",
    reading: "ショ",
    radical: "署",
    componentHint: "classical radical 122",
    examples: [
      {word: "署長", reading: "しょちょう", meaning: "chief (of police); head (of office)"},
      {word: "署名", reading: "しょめい", meaning: "signature"},
      {word: "部署", reading: "ぶしょ", meaning: "one's post; one's station"}
    ],
  },
  {
    kanji: "曙",
    keyword: "dawn/daybreak",
    reading: "あけぼの / ショ",
    radical: "曙",
    componentHint: "classical radical 72",
    examples: [
      {word: "曙光", reading: "しょこう", meaning: "dawn; daybreak"},
      {word: "曙貴", reading: "あけたか", meaning: "era during mid-1990s dominated by grand champions Akebono and Takanohana II"},
      {word: "曙草", reading: "あけぼのそう", meaning: "Swertia bimaculata (species of felwort)"}
    ],
  },
  {
    kanji: "賭",
    keyword: "gamble/wager",
    reading: "か.ける / かけ / ト",
    radical: "賭",
    componentHint: "classical radical 154",
    examples: [
      {word: "賭ける", reading: "かける", meaning: "to wager; to bet"},
      {word: "賭け", reading: "かけ", meaning: "betting; gambling"},
      {word: "賭博", reading: "とばく", meaning: "gambling"}
    ],
  },
  {
    kanji: "諸",
    keyword: "various/many",
    reading: "もろ / ショ",
    radical: "諸",
    componentHint: "classical radical 149",
    examples: [
      {word: "諸君", reading: "しょくん", meaning: "Gentlemen!; Ladies!"},
      {word: "諸国", reading: "しょこく", meaning: "various countries; various regions"},
      {word: "諸島", reading: "しょとう", meaning: "archipelago; group of islands"}
    ],
  },
  {
    kanji: "儲",
    keyword: "be profitable/yield profit",
    reading: "もう.ける / もう.かる / もうけ / たくわ.える / チョ",
    radical: "儲",
    componentHint: "classical radical 9",
    examples: [
      {word: "儲ける", reading: "もうける", meaning: "to profit; to get"},
      {word: "儲け", reading: "もうけ", meaning: "profit; earnings"},
      {word: "儲かる", reading: "もうかる", meaning: "to be profitable; to yield a profit"}
    ],
  },
  {
    kanji: "緒",
    keyword: "thong/beginning",
    reading: "お / いとぐち / ショ / チョ",
    radical: "緒",
    componentHint: "classical radical 120",
    examples: [
      {word: "一緒", reading: "いっしょ", meaning: "together; at the same time"},
      {word: "内緒", reading: "ないしょ", meaning: "secrecy; confidentiality"},
      {word: "情緒", reading: "じょうちょ", meaning: "emotion; feeling"}
    ],
  },
  {
    kanji: "翁",
    keyword: "venerable old man",
    reading: "おきな / オウ",
    radical: "翁",
    componentHint: "classical radical 124",
    examples: [
      {word: "老翁", reading: "ろうおう", meaning: "old man"},
      {word: "玄翁", reading: "げんのう", meaning: "sledgehammer"},
      {word: "信天翁", reading: "あほうどり", meaning: "albatross (esp. the short-tailed albatross, Phoebastria albatrus)"}
    ],
  },
  {
    kanji: "婆",
    keyword: "old woman/grandma",
    reading: "ばば / ばあ / バ",
    radical: "婆",
    componentHint: "classical radical 38",
    examples: [
      {word: "老婆", reading: "ろうば", meaning: "old woman"},
      {word: "婆さん", reading: "ばあさん", meaning: "grandmother; female senior citizen"},
      {word: "お婆さん", reading: "おばあさん", meaning: "grandmother; female senior-citizen"}
    ],
  },
  {
    kanji: "姿",
    keyword: "figure/form",
    reading: "すがた / シ",
    radical: "姿",
    componentHint: "classical radical 38",
    examples: [
      {word: "姿勢", reading: "しせい", meaning: "attitude; posture"},
      {word: "後ろ姿", reading: "うしろすがた", meaning: "retreating figure; appearance from behind"},
      {word: "容姿", reading: "ようし", meaning: "(physical) appearance (of a person); one's face and figure"}
    ],
  },
  {
    kanji: "恣",
    keyword: "selfish/arbitrary",
    reading: "ほしいまま / シ",
    radical: "恣",
    componentHint: "classical radical 61",
    examples: [
      {word: "恣意", reading: "しい", meaning: "arbitrariness"},
      {word: "放恣", reading: "ほうし", meaning: "licentious; self-indulgent"},
      {word: "驕恣", reading: "きょうし", meaning: "being proud and self-willed"}
    ],
  },
  {
    kanji: "妄",
    keyword: "delusion/unnecessarily",
    reading: "みだ.りに / モウ / ボウ",
    radical: "妄",
    componentHint: "classical radical 38",
    examples: [
      {word: "妄想", reading: "もうそう", meaning: "wild idea; delusion"},
      {word: "妄執", reading: "もうしゅう", meaning: "deep-rooted delusion; firm conviction (based on incorrect beliefs)"},
      {word: "妄念", reading: "もうねん", meaning: "conviction based on flawed ideas; obstructive thought"}
    ],
  },
  {
    kanji: "萎",
    keyword: "wither/droop",
    reading: "な / しお.れる / しな.びる / しぼ.む / イ",
    radical: "萎",
    componentHint: "classical radical 140",
    examples: [
      {word: "萎える", reading: "なえる", meaning: "to lose strength; to become weak"},
      {word: "萎縮", reading: "いしゅく", meaning: "withering; atrophy"},
      {word: "萎れる", reading: "しおれる", meaning: "to wither; to wilt"}
    ],
  },
  {
    kanji: "妻",
    keyword: "wife/spouse",
    reading: "つま / サイ",
    radical: "妻",
    componentHint: "classical radical 38",
    examples: [
      {word: "夫妻", reading: "ふさい", meaning: "man and wife; married couple"},
      {word: "稲妻", reading: "いなづま", meaning: "(flash of) lightning"},
      {word: "妻子", reading: "さいし", meaning: "wife and children; wife"}
    ],
  },
  {
    kanji: "凄",
    keyword: "uncanny/weird",
    reading: "さむ.い / すご.い / すさ.まじい / セイ / サイ",
    radical: "凄",
    componentHint: "classical radical 15",
    examples: [
      {word: "凄い", reading: "すごい", meaning: "terrible; dreadful"},
      {word: "凄まじい", reading: "すさまじい", meaning: "terrific; fierce"},
      {word: "物凄い", reading: "ものすごい", meaning: "earth-shattering; staggering"}
    ],
  },
  {
    kanji: "章",
    keyword: "badge/chapter",
    reading: "ショウ",
    radical: "章",
    componentHint: "classical radical 117",
    examples: [
      {word: "文章", reading: "ぶんしょう", meaning: "sentence; article"},
      {word: "紋章", reading: "もんしょう", meaning: "crest; coat of arms"},
      {word: "勲章", reading: "くんしょう", meaning: "decoration; order"}
    ],
  },
  {
    kanji: "彰",
    keyword: "patent/clear",
    reading: "ショウ",
    radical: "彰",
    componentHint: "classical radical 59",
    examples: [
      {word: "表彰", reading: "ひょうしょう", meaning: "public acknowledgment; public acknowledgement"},
      {word: "顕彰", reading: "けんしょう", meaning: "honouring (publicly); honoring"},
      {word: "表彰状", reading: "ひょうしょうじょう", meaning: "testimonial; certificate of commendation"}
    ],
  },
  {
    kanji: "障",
    keyword: "hinder/hurt",
    reading: "さわ.る / ショウ",
    radical: "障",
    componentHint: "classical radical 170",
    examples: [
      {word: "障子", reading: "しょうじ", meaning: "shoji (paper sliding door)"},
      {word: "障害", reading: "しょうがい", meaning: "obstacle; impediment"},
      {word: "故障", reading: "こしょう", meaning: "breakdown; failure"}
    ],
  },
  {
    kanji: "辛",
    keyword: "spicy/bitter",
    reading: "から.い / つら.い / -づら.い / かのと / シン",
    radical: "辛",
    componentHint: "classical radical 160",
    examples: [
      {word: "辛い", reading: "からい", meaning: "spicy; hot"},
      {word: "辛抱", reading: "しんぼう", meaning: "patience; endurance"},
      {word: "辛うじて", reading: "かろうじて", meaning: "barely; narrowly"}
    ],
  },
  {
    kanji: "宰",
    keyword: "superintend/manager",
    reading: "サイ",
    radical: "宰",
    componentHint: "classical radical 40",
    examples: [
      {word: "宰相", reading: "さいしょう", meaning: "prime minister"},
      {word: "主宰", reading: "しゅさい", meaning: "supervision; chairmanship"},
      {word: "宰領", reading: "さいりょう", meaning: "supervision; superintendence"}
    ],
  },
  {
    kanji: "辣",
    keyword: "pungent/spicy",
    reading: "から.い / ラツ",
    radical: "辣",
    componentHint: "classical radical 160",
    examples: [
      {word: "辛辣", reading: "しんらつ", meaning: "bitter; sharp"},
      {word: "悪辣", reading: "あくらつ", meaning: "crafty; vicious"},
      {word: "辣腕", reading: "らつわん", meaning: "shrewdness; tact"}
    ],
  },
  {
    kanji: "辞",
    keyword: "resign/word",
    reading: "や.める / いな.む / ジ",
    radical: "辞",
    componentHint: "classical radical 160",
    examples: [
      {word: "辞める", reading: "やめる", meaning: "to resign; to retire"},
      {word: "お辞儀", reading: "おじぎ", meaning: "bow; bowing"},
      {word: "お世辞", reading: "おせじ", meaning: "flattery; compliment"}
    ],
  },
  {
    kanji: "壁",
    keyword: "wall/lining (stomach)",
    reading: "かべ / ヘキ",
    radical: "壁",
    componentHint: "classical radical 32",
    examples: [
      {word: "城壁", reading: "じょうへき", meaning: "rampart; castle walls"},
      {word: "壁面", reading: "へきめん", meaning: "surface of a wall"},
      {word: "壁際", reading: "かべぎわ", meaning: "close to the wall; alongside the wall"}
    ],
  },
  {
    kanji: "璧",
    keyword: "sphere/ball",
    reading: "たま / ヘキ",
    radical: "璧",
    componentHint: "classical radical 96",
    examples: [
      {word: "完璧", reading: "かんぺき", meaning: "perfect; complete"},
      {word: "双璧", reading: "そうへき", meaning: "matchless things; matchless people"},
      {word: "圭璧", reading: "けいへき", meaning: "ritual jades worn by feudal lords in ancient China"}
    ],
  },
  {
    kanji: "癖",
    keyword: "mannerism/habit",
    reading: "くせ / くせ.に / ヘキ",
    radical: "癖",
    componentHint: "classical radical 104",
    examples: [
      {word: "口癖", reading: "くちぐせ", meaning: "way of saying; favorite phrase"},
      {word: "潔癖", reading: "けっぺき", meaning: "fastidiousness; love of cleanliness"},
      {word: "性癖", reading: "せいへき", meaning: "disposition; inclination"}
    ],
  },
  {
    kanji: "避",
    keyword: "evade/avoid",
    reading: "さ.ける / よ.ける / ヒ",
    radical: "避",
    componentHint: "classical radical 162",
    examples: [
      {word: "避ける", reading: "さける", meaning: "to avoid (physical contact with); to avoid (situation)"},
      {word: "避難", reading: "ひなん", meaning: "taking refuge; finding shelter"},
      {word: "回避", reading: "かいひ", meaning: "evasion; avoidance"}
    ],
  },
  {
    kanji: "幸",
    keyword: "happiness/blessing",
    reading: "さいわ.い / さち / しあわ.せ / コウ",
    radical: "幸",
    componentHint: "classical radical 51",
    examples: [
      {word: "幸福", reading: "こうふく", meaning: "happiness; blessedness"},
      {word: "不幸", reading: "ふこう", meaning: "unhappiness; sorrow"},
      {word: "幸せ", reading: "しあわせ", meaning: "happiness; good fortune"}
    ],
  },
  {
    kanji: "服",
    keyword: "clothing/admit",
    reading: "フク",
    radical: "服",
    componentHint: "classical radical 74",
    examples: [
      {word: "制服", reading: "せいふく", meaning: "uniform"},
      {word: "服装", reading: "ふくそう", meaning: "garments; attire"},
      {word: "衣服", reading: "いふく", meaning: "clothes"}
    ],
  },
  {
    kanji: "報",
    keyword: "report/news",
    reading: "むく.いる / ホウ",
    radical: "報",
    componentHint: "classical radical 32",
    examples: [
      {word: "情報", reading: "じょうほう", meaning: "information; news"},
      {word: "報告", reading: "ほうこく", meaning: "report; information"},
      {word: "電報", reading: "でんぽう", meaning: "telegram"}
    ],
  },
  {
    kanji: "執",
    keyword: "tenacious/take hold",
    reading: "と.る / シツ / シュウ",
    radical: "執",
    componentHint: "classical radical 32",
    examples: [
      {word: "執行", reading: "しっこう", meaning: "execution; carrying out"},
      {word: "執事", reading: "しつじ", meaning: "steward; butler"},
      {word: "執拗", reading: "しつよう", meaning: "persistent; obstinate"}
    ],
  },
  {
    kanji: "摯",
    keyword: "gift/seriousness",
    reading: "いた.る / シ",
    radical: "摯",
    componentHint: "classical radical 64",
    examples: [
      {word: "真摯", reading: "しんし", meaning: "sincerity; earnestness"},
      {word: "摯実", reading: "しじつ", meaning: "serious, sincere"},
      {word: "摯", reading: "いた.る", meaning: "kanji entry"}
    ],
  },
  {
    kanji: "達",
    keyword: "accomplished/reach",
    reading: "-たち / タツ / ダ",
    radical: "達",
    componentHint: "classical radical 162",
    examples: [
      {word: "友達", reading: "ともだち", meaning: "friend; companion"},
      {word: "達し", reading: "たっし", meaning: "official notice; notification"},
      {word: "達する", reading: "たっする", meaning: "to reach; to get to"}
    ],
  },
  {
    kanji: "朗",
    keyword: "melodious/clear",
    reading: "ほが.らか / あき.らか / ロウ",
    radical: "朗",
    componentHint: "classical radical 74",
    examples: [
      {word: "朗読", reading: "ろうどく", meaning: "reading aloud; recitation"},
      {word: "朗らか", reading: "ほがらか", meaning: "bright; cheerful"},
      {word: "朗々", reading: "ろうろう", meaning: "clear; sonorous"}
    ],
  },
  {
    kanji: "浪",
    keyword: "wandering/waves",
    reading: "ロウ",
    radical: "浪",
    componentHint: "classical radical 85",
    examples: [
      {word: "浪人", reading: "ろうにん", meaning: "ronin; wandering samurai without a master to serve"},
      {word: "放浪", reading: "ほうろう", meaning: "wandering"},
      {word: "浮浪", reading: "ふろう", meaning: "vagrancy; vagabondage"}
    ],
  },
  {
    kanji: "呉",
    keyword: "give/do something for",
    reading: "く.れる / くれ / ゴ",
    radical: "呉",
    componentHint: "classical radical 30",
    examples: [
      {word: "呉れる", reading: "くれる", meaning: "to give; to let one have"},
      {word: "呉服", reading: "ごふく", meaning: "cloth (for Japanese clothes); textile"},
      {word: "呉竹", reading: "くれたけ", meaning: "Alternative name for henon bamboo (Phyllostachys nigra var. henonis)"}
    ],
  },
  {
    kanji: "娯",
    keyword: "recreation/pleasure",
    reading: "ゴ",
    radical: "娯",
    componentHint: "classical radical 38",
    examples: [
      {word: "娯楽", reading: "ごらく", meaning: "pleasure; amusement"},
      {word: "娯しい", reading: "たのしい", meaning: "enjoyable; fun"},
      {word: "娯楽室", reading: "ごらくしつ", meaning: "recreation room"}
    ],
  },
  {
    kanji: "誤",
    keyword: "mistake/err",
    reading: "あやま.る / -あやま.る / ゴ",
    radical: "誤",
    componentHint: "classical radical 149",
    examples: [
      {word: "誤解", reading: "ごかい", meaning: "misunderstanding"},
      {word: "誤る", reading: "あやまる", meaning: "to make a mistake; to err"},
      {word: "誤り", reading: "あやまり", meaning: "error; mistake"}
    ],
  },
  {
    kanji: "富",
    keyword: "wealth/enrich",
    reading: "と.む / とみ / フ / フウ",
    radical: "富",
    componentHint: "classical radical 40",
    examples: [
      {word: "富む", reading: "とむ", meaning: "to be rich; to become rich"},
      {word: "豊富", reading: "ほうふ", meaning: "abundance; wealth"},
      {word: "富士山", reading: "ふじさん", meaning: "Mount Fuji; Mt. Fuji"}
    ],
  },
  {
    kanji: "副",
    keyword: "vice-/assistant",
    reading: "フク",
    radical: "副",
    componentHint: "classical radical 18",
    examples: [
      {word: "副官", reading: "ふくかん", meaning: "adjutant; aide"},
      {word: "副長", reading: "ふくちょう", meaning: "deputy head; deputy director"},
      {word: "副作用", reading: "ふくさよう", meaning: "reaction; secondary effect"}
    ],
  },
  {
    kanji: "幅",
    keyword: "hanging scroll/width",
    reading: "はば / フク",
    radical: "幅",
    componentHint: "classical radical 50",
    examples: [
      {word: "大幅", reading: "おおはば", meaning: "big; large"},
      {word: "増幅", reading: "ぞうふく", meaning: "amplification (elec.); magnification"},
      {word: "肩幅", reading: "かたはば", meaning: "shoulder width (breadth)"}
    ],
  },
  {
    kanji: "福",
    keyword: "blessing/fortune",
    reading: "フク",
    radical: "福",
    componentHint: "classical radical 113",
    examples: [
      {word: "幸福", reading: "こうふく", meaning: "happiness; blessedness"},
      {word: "祝福", reading: "しゅくふく", meaning: "blessing"},
      {word: "福岡", reading: "ふくおか", meaning: "Fukuoka (city)"}
    ],
  },
  {
    kanji: "祉",
    keyword: "welfare/happiness",
    reading: "シ",
    radical: "祉",
    componentHint: "classical radical 113",
    examples: [
      {word: "福祉", reading: "ふくし", meaning: "welfare; well-being"},
      {word: "祉福", reading: "しふく", meaning: "prosperity; happiness"},
      {word: "児童福祉", reading: "じどうふくし", meaning: "child welfare"}
    ],
  },
  {
    kanji: "禍",
    keyword: "calamity/misfortune",
    reading: "わざわい / カ",
    radical: "禍",
    componentHint: "classical radical 113",
    examples: [
      {word: "禍々しい", reading: "まがまがしい", meaning: "ominous; sinister"},
      {word: "災禍", reading: "さいか", meaning: "accident; calamity"},
      {word: "禍根", reading: "かこん", meaning: "root of evil; source of evil"}
    ],
  },
  {
    kanji: "渦",
    keyword: "whirlpool/eddy",
    reading: "うず / カ",
    radical: "渦",
    componentHint: "classical radical 85",
    examples: [
      {word: "渦巻く", reading: "うずまく", meaning: "to whirl; to eddy"},
      {word: "渦中", reading: "かちゅう", meaning: "vortex; maelstrom"},
      {word: "渦巻", reading: "うずまき", meaning: "whirlpool; eddy"}
    ],
  },
  {
    kanji: "鍋",
    keyword: "pot/pan",
    reading: "なべ / カ",
    radical: "鍋",
    componentHint: "classical radical 167",
    examples: [
      {word: "大鍋", reading: "おおなべ", meaning: "cauldron"},
      {word: "土鍋", reading: "どなべ", meaning: "earthenware pot"},
      {word: "お鍋", reading: "おなべ", meaning: "pot; typical name for a female servant in the Edo-period"}
    ],
  },
  {
    kanji: "蘭",
    keyword: "orchid/Holland",
    reading: "ラン / ラ",
    radical: "蘭",
    componentHint: "classical radical 140",
    examples: [
      {word: "仏蘭西", reading: "フランス", meaning: "France"},
      {word: "木蘭", reading: "もくれん", meaning: "lily magnolia (Magnolia quinquepeta, Magnolia liliiflora)"},
      {word: "蘭学", reading: "らんがく", meaning: "Dutch studies; studies of Western knowledge"}
    ],
  },
  {
    kanji: "欄",
    keyword: "column/handrail",
    reading: "てすり / ラン",
    radical: "欄",
    componentHint: "classical radical 75",
    examples: [
      {word: "欄干", reading: "らんかん", meaning: "guardrail; handrail"},
      {word: "欄間", reading: "らんま", meaning: "(in Japanese architecture) transom"},
      {word: "欄外", reading: "らんがい", meaning: "margin"}
    ],
  },
  {
    kanji: "潤",
    keyword: "wet/be watered",
    reading: "うるお.う / うるお.す / うる.む / ジュン",
    radical: "潤",
    componentHint: "classical radical 85",
    examples: [
      {word: "潤む", reading: "うるむ", meaning: "to be wet; to be moist"},
      {word: "潤す", reading: "うるおす", meaning: "to moisten; to wet"},
      {word: "利潤", reading: "りじゅん", meaning: "profit; returns"}
    ],
  },
  {
    kanji: "淵",
    keyword: "abyss/edge",
    reading: "ふち / かた.い / はなわ / エン / カク / コウ",
    radical: "淵",
    componentHint: "classical radical 85",
    examples: [
      {word: "深淵", reading: "しんえん", meaning: "abyss; ravine"},
      {word: "淵源", reading: "えんげん", meaning: "origin"},
      {word: "海淵", reading: "かいえん", meaning: "ocean depths"}
    ],
  },
  {
    kanji: "滑",
    keyword: "slippery/slide",
    reading: "すべ.る / なめ.らか / カツ / コツ",
    radical: "滑",
    componentHint: "classical radical 85",
    examples: [
      {word: "滑る", reading: "すべる", meaning: "to glide; to slide (e.g. on skis)"},
      {word: "滑稽", reading: "こっけい", meaning: "funny; humorous"},
      {word: "滑らか", reading: "なめらか", meaning: "smooth (e.g. skin or ground); glassy"}
    ],
  },
  {
    kanji: "稽",
    keyword: "think/consider",
    reading: "かんが.える / とど.める / ケイ",
    radical: "稽",
    componentHint: "classical radical 115",
    examples: [
      {word: "稽古", reading: "けいこ", meaning: "practice; practising"},
      {word: "滑稽", reading: "こっけい", meaning: "funny; humorous"},
      {word: "お稽古", reading: "おけいこ", meaning: "practice; training"}
    ],
  },
  {
    kanji: "肩",
    keyword: "shoulder",
    reading: "かた / ケン",
    radical: "肩",
    componentHint: "classical radical 130",
    examples: [
      {word: "肩越し", reading: "かたごし", meaning: "over one's shoulder"},
      {word: "右肩", reading: "みぎかた", meaning: "right shoulder"},
      {word: "左肩", reading: "ひだりかた", meaning: "left shoulder"}
    ],
  },
  {
    kanji: "脅",
    keyword: "threaten/coerce",
    reading: "おびや.かす / おど.す / おど.かす / キョウ",
    radical: "脅",
    componentHint: "classical radical 130",
    examples: [
      {word: "脅迫", reading: "きょうはく", meaning: "threat; menace"},
      {word: "脅す", reading: "おどす", meaning: "to threaten; to menace"},
      {word: "脅かす", reading: "おどかす", meaning: "to threaten; to menace"}
    ],
  },
  {
    kanji: "肯",
    keyword: "agreement/consent",
    reading: "がえんじ.る / コウ",
    radical: "肯",
    componentHint: "classical radical 130",
    examples: [
      {word: "肯く", reading: "うなずく", meaning: "to nod; to bow one's head in assent"},
      {word: "肯定", reading: "こうてい", meaning: "positive; affirmation"},
      {word: "首肯", reading: "しゅこう", meaning: "assent; consent"}
    ],
  },
  {
    kanji: "双",
    keyword: "pair/set",
    reading: "ふた / たぐい / ならぶ / ふたつ / ソウ",
    radical: "双",
    componentHint: "classical radical 29",
    examples: [
      {word: "双方", reading: "そうほう", meaning: "two way; both parties"},
      {word: "双子", reading: "ふたご", meaning: "twins; twin"},
      {word: "双眼鏡", reading: "そうがんきょう", meaning: "binoculars; field glasses"}
    ],
  },
  {
    kanji: "江",
    keyword: "creek/inlet",
    reading: "え / コウ",
    radical: "江",
    componentHint: "classical radical 85",
    examples: [
      {word: "江戸", reading: "えど", meaning: "old name of Tokyo"},
      {word: "入江", reading: "いりえ", meaning: "inlet; cove"},
      {word: "江戸城", reading: "えどじょう", meaning: "Edo Castle (residence of the Shogun during the Edo period, now the site of the Tokyo Imperial Palace)"}
    ],
  },
  {
    kanji: "湾",
    keyword: "gulf/bay",
    reading: "いりえ / ワン",
    radical: "湾",
    componentHint: "classical radical 85",
    examples: [
      {word: "台湾", reading: "たいわん", meaning: "Taiwan"},
      {word: "東京湾", reading: "とうきょうわん", meaning: "Tokyo Bay; Bay of Tokyo"},
      {word: "真珠湾", reading: "しんじゅわん", meaning: "Pearl Harbor"}
    ],
  },
  {
    kanji: "港",
    keyword: "harbor",
    reading: "みなと / コウ",
    radical: "港",
    componentHint: "classical radical 85",
    examples: [
      {word: "空港", reading: "くうこう", meaning: "airport"},
      {word: "香港", reading: "ほんこん", meaning: "Hong Kong; Hongkong"},
      {word: "入港", reading: "にゅうこう", meaning: "entry into port"}
    ],
  },
  {
    kanji: "選",
    keyword: "elect/select",
    reading: "えら.ぶ / セン",
    radical: "選",
    componentHint: "classical radical 162",
    examples: [
      {word: "選ぶ", reading: "えらぶ", meaning: "to choose; to select"},
      {word: "選手", reading: "せんしゅ", meaning: "player (in game); team member"},
      {word: "選択", reading: "せんたく", meaning: "selection; choice"}
    ],
  },
  {
    kanji: "択",
    keyword: "choose/select",
    reading: "えら.ぶ / タク",
    radical: "択",
    componentHint: "classical radical 64",
    examples: [
      {word: "選択", reading: "せんたく", meaning: "selection; choice"},
      {word: "選択肢", reading: "せんたくし", meaning: "choices; alternatives"},
      {word: "択ぶ", reading: "えらぶ", meaning: "to choose; to select"}
    ],
  },
  {
    kanji: "沢",
    keyword: "swamp/marsh",
    reading: "さわ / うるお.い / うるお.す / つや / タク",
    radical: "沢",
    componentHint: "classical radical 85",
    examples: [
      {word: "沢山", reading: "たくさん", meaning: "a lot; lots"},
      {word: "贅沢", reading: "ぜいたく", meaning: "luxury; extravagance"},
      {word: "沢庵", reading: "たくあん", meaning: "pickled daikon radish"}
    ],
  },
  {
    kanji: "訳",
    keyword: "translate/reason",
    reading: "わけ / ヤク",
    radical: "訳",
    componentHint: "classical radical 149",
    examples: [
      {word: "申し訳", reading: "もうしわけ", meaning: "apology; excuse"},
      {word: "言い訳", reading: "いいわけ", meaning: "excuse; explanation"},
      {word: "翻訳", reading: "ほんやく", meaning: "translation; de-encryption"}
    ],
  },
  {
    kanji: "釈",
    keyword: "explanation",
    reading: "とく / す.てる / ゆる.す / シャク / セキ",
    radical: "釈",
    componentHint: "classical radical 165",
    examples: [
      {word: "解釈", reading: "かいしゃく", meaning: "explanation; interpretation"},
      {word: "会釈", reading: "えしゃく", meaning: "nod; salutation"},
      {word: "釈放", reading: "しゃくほう", meaning: "release; liberation"}
    ],
  },
  {
    kanji: "敷",
    keyword: "spread/pave",
    reading: "し.く / -し.き / フ",
    radical: "敷",
    componentHint: "classical radical 66",
    examples: [
      {word: "屋敷", reading: "やしき", meaning: "residence; estate"},
      {word: "座敷", reading: "ざしき", meaning: "tatami room; tatami mat room"},
      {word: "敷く", reading: "しく", meaning: "to spread out; to lay out"}
    ],
  },
  {
    kanji: "傲",
    keyword: "be proud",
    reading: "おご.る / あなど.る / ゴウ",
    radical: "傲",
    componentHint: "classical radical 9",
    examples: [
      {word: "傲慢", reading: "ごうまん", meaning: "pride; haughtiness"},
      {word: "傲然", reading: "ごうぜん", meaning: "proud; arrogant"},
      {word: "傲岸", reading: "ごうがん", meaning: "haughtiness; pride"}
    ],
  },
  {
    kanji: "贅",
    keyword: "luxury",
    reading: "いぼ / セイ",
    radical: "贅",
    componentHint: "classical radical 154",
    examples: [
      {word: "贅沢", reading: "ぜいたく", meaning: "luxury; extravagance"},
      {word: "贅肉", reading: "ぜいにく", meaning: "excess flesh; flab"},
      {word: "贅言", reading: "ぜいげん", meaning: "verbosity; redundancy"}
    ],
  },
  {
    kanji: "審",
    keyword: "hearing/judge",
    reading: "つまび.らか / つぶさ.に / シン",
    radical: "審",
    componentHint: "classical radical 40",
    examples: [
      {word: "不審", reading: "ふしん", meaning: "incomplete understanding; doubt"},
      {word: "審査", reading: "しんさ", meaning: "judging; inspection"},
      {word: "陪審", reading: "ばいしん", meaning: "jury"}
    ],
  },
  {
    kanji: "藩",
    keyword: "clan/enclosure",
    reading: "ハン",
    radical: "藩",
    componentHint: "classical radical 140",
    examples: [
      {word: "藩主", reading: "はんしゅ", meaning: "feudal lord; daimyo"},
      {word: "藩士", reading: "はんし", meaning: "feudal retainer or warrior"},
      {word: "藩邸", reading: "はんてい", meaning: "residence maintained by a daimyo in Edo"}
    ],
  },
  {
    kanji: "翻",
    keyword: "flip/turn over",
    reading: "ひるがえ.る / ひるがえ.す / ホン / ハン",
    radical: "翻",
    componentHint: "classical radical 124",
    examples: [
      {word: "翻訳", reading: "ほんやく", meaning: "translation; de-encryption"},
      {word: "翻す", reading: "ひるがえす", meaning: "to turn over; to turn around"},
      {word: "翻弄", reading: "ほんろう", meaning: "trifling with; toying with"}
    ],
  },
  {
    kanji: "翔",
    keyword: "soar/fly",
    reading: "かけ.る / と.ぶ / ショウ",
    radical: "翔",
    componentHint: "classical radical 124",
    examples: [
      {word: "飛翔", reading: "ひしょう", meaning: "flight; flying"},
      {word: "翔ける", reading: "かける", meaning: "to soar; to fly"},
      {word: "翔ぶ", reading: "とぶ", meaning: "to fly; to soar"}
    ],
  },
  {
    kanji: "査",
    keyword: "investigate",
    reading: "サ",
    radical: "査",
    componentHint: "classical radical 75",
    examples: [
      {word: "捜査", reading: "そうさ", meaning: "search (esp. in criminal investigations); investigation"},
      {word: "調査", reading: "ちょうさ", meaning: "investigation; examination"},
      {word: "巡査", reading: "じゅんさ", meaning: "police; policeman"}
    ],
  },
  {
    kanji: "租",
    keyword: "tariff/crop tax",
    reading: "ソ",
    radical: "租",
    componentHint: "classical radical 115",
    examples: [
      {word: "租税", reading: "そぜい", meaning: "taxes; taxation"},
      {word: "租界", reading: "そかい", meaning: "concession; settlement"},
      {word: "租借", reading: "そしゃく", meaning: "lease"}
    ],
  },
  {
    kanji: "粗",
    keyword: "coarse/rough",
    reading: "あら.い / あら- / ソ",
    radical: "粗",
    componentHint: "classical radical 119",
    examples: [
      {word: "粗末", reading: "そまつ", meaning: "crude; rough"},
      {word: "粗野", reading: "そや", meaning: "rustic; rude"},
      {word: "粗い", reading: "あらい", meaning: "coarse; rough"}
    ],
  },
  {
    kanji: "阻",
    keyword: "thwart/separate from",
    reading: "はば.む / ソ",
    radical: "阻",
    componentHint: "classical radical 170",
    examples: [
      {word: "阻止", reading: "そし", meaning: "obstruction; check"},
      {word: "阻む", reading: "はばむ", meaning: "to keep someone from doing; to stop"},
      {word: "阻害", reading: "そがい", meaning: "obstruction; inhibition"}
    ],
  },
  {
    kanji: "狙",
    keyword: "aim at/sight",
    reading: "ねら.う / ねら.い / ソ / ショ",
    radical: "狙",
    componentHint: "classical radical 94",
    examples: [
      {word: "狙う", reading: "ねらう", meaning: "to aim at"},
      {word: "狙い", reading: "ねらい", meaning: "aim"},
      {word: "狙撃", reading: "そげき", meaning: "shooting; sniping"}
    ],
  },
  {
    kanji: "宜",
    keyword: "best regards/good",
    reading: "よろ.しい / よろ.しく / ギ",
    radical: "宜",
    componentHint: "classical radical 40",
    examples: [
      {word: "宜しい", reading: "よろしい", meaning: "good; OK"},
      {word: "便宜", reading: "べんぎ", meaning: "convenience; accommodation"},
      {word: "宜い", reading: "よい", meaning: "good; excellent"}
    ],
  },
  {
    kanji: "畳",
    keyword: "tatami mat/counter for tatami mats",
    reading: "たた.む / たたみ / かさ.なる / ジョウ / チョウ",
    radical: "畳",
    componentHint: "classical radical 102",
    examples: [
      {word: "畳む", reading: "たたむ", meaning: "to fold (clothes); to close (a shop)"},
      {word: "石畳", reading: "いしだたみ", meaning: "(flat) stone paving; sett"},
      {word: "四畳半", reading: "よじょうはん", meaning: "4.5 tatami mats"}
    ],
  },
  {
    kanji: "甲",
    keyword: "armor/high (voice)",
    reading: "きのえ / コウ / カン",
    radical: "甲",
    componentHint: "classical radical 102",
    examples: [
      {word: "甲板", reading: "かんぱん", meaning: "deck (of a ship)"},
      {word: "甲高い", reading: "かんだかい", meaning: "high-pitched; shrill"},
      {word: "装甲", reading: "そうこう", meaning: "armored; armoured"}
    ],
  },
  {
    kanji: "乙",
    keyword: "the latter/duplicate",
    reading: "おと- / きのと / オツ / イツ",
    radical: "乙",
    componentHint: "classical radical 5",
    examples: [
      {word: "乙女", reading: "おとめ", meaning: "little girl; maiden"},
      {word: "乙姫", reading: "おとひめ", meaning: "youngest princess"},
      {word: "早乙女", reading: "さおとめ", meaning: "young female rice planter; young girl"}
    ],
  },
  {
    kanji: "丙",
    keyword: "third class/3rd",
    reading: "ひのえ / ヘイ",
    radical: "丙",
    componentHint: "classical radical 1",
    examples: [
      {word: "丙午", reading: "ひのえうま", meaning: "43rd year of the sexagenary cycle (year of the Fire Horse, renowned for disasters and the birth of women destined to kill their husbands)"},
      {word: "丙種", reading: "へいしゅ", meaning: "C-grade; third-class"},
      {word: "丙夜", reading: "へいや", meaning: "third division of the night (approx. 11 pm to 1 am)"}
    ],
  },
  {
    kanji: "柄",
    keyword: "design/pattern",
    reading: "がら / え / つか / ヘイ",
    radical: "柄",
    componentHint: "classical radical 75",
    examples: [
      {word: "小柄", reading: "こがら", meaning: "small build; small stature"},
      {word: "事柄", reading: "ことがら", meaning: "matter; thing"},
      {word: "人柄", reading: "ひとがら", meaning: "personality; character"}
    ],
  },
  {
    kanji: "押",
    keyword: "push/stop",
    reading: "お.す / お.し- / お.っ- / お.さえる / オウ",
    radical: "押",
    componentHint: "classical radical 64",
    examples: [
      {word: "押す", reading: "おす", meaning: "to push; to press"},
      {word: "押さえる", reading: "おさえる", meaning: "to pin something down; to hold something down"},
      {word: "押しつける", reading: "おしつける", meaning: "to press; to push"}
    ],
  },
  {
    kanji: "抽",
    keyword: "pluck/pull",
    reading: "ひき- / チュウ",
    radical: "抽",
    componentHint: "classical radical 64",
    examples: [
      {word: "抽象", reading: "ちゅうしょう", meaning: "abstract"},
      {word: "抽出", reading: "ちゅうしゅつ", meaning: "extraction; abstraction"},
      {word: "抽斗", reading: "ひきだし", meaning: "drawer; withdrawal"}
    ],
  },
  {
    kanji: "捜",
    keyword: "search/look for",
    reading: "さが.す / ソウ / シュ / シュウ",
    radical: "捜",
    componentHint: "classical radical 64",
    examples: [
      {word: "捜査", reading: "そうさ", meaning: "search (esp. in criminal investigations); investigation"},
      {word: "捜す", reading: "さがす", meaning: "to search (for something desired, needed); to look for"},
      {word: "捜索", reading: "そうさく", meaning: "search (esp. for someone or something missing); investigation"}
    ],
  },
  {
    kanji: "届",
    keyword: "deliver/reach",
    reading: "とど.ける / -とど.け / とど.く / カイ",
    radical: "届",
    componentHint: "classical radical 44",
    examples: [
      {word: "届く", reading: "とどく", meaning: "to reach; to arrive"},
      {word: "届ける", reading: "とどける", meaning: "to deliver; to forward"},
      {word: "見届ける", reading: "みとどける", meaning: "to make sure of; to assure oneself of"}
    ],
  },
  {
    kanji: "宙",
    keyword: "mid-air/air",
    reading: "チュウ",
    radical: "宙",
    componentHint: "classical radical 40",
    examples: [
      {word: "宇宙", reading: "うちゅう", meaning: "universe; cosmos"},
      {word: "宇宙船", reading: "うちゅうせん", meaning: "space ship"},
      {word: "宙返り", reading: "ちゅうがえり", meaning: "somersault; looping-the-loop"}
    ],
  },
  {
    kanji: "笛",
    keyword: "flute/clarinet",
    reading: "ふえ / テキ",
    radical: "笛",
    componentHint: "classical radical 118",
    examples: [
      {word: "口笛", reading: "くちぶえ", meaning: "whistle"},
      {word: "汽笛", reading: "きてき", meaning: "steam whistle"},
      {word: "警笛", reading: "けいてき", meaning: "horn; alarm"}
    ],
  },
  {
    kanji: "袖",
    keyword: "sleeve/wing (building)",
    reading: "そで / シュウ",
    radical: "袖",
    componentHint: "classical radical 145",
    examples: [
      {word: "袖口", reading: "そでぐち", meaning: "cuff; armhole"},
      {word: "小袖", reading: "こそで", meaning: "short sleeves; quilted silk garment"},
      {word: "半袖", reading: "はんそで", meaning: "short sleeves"}
    ],
  },
  {
    kanji: "襟",
    keyword: "collar/neck",
    reading: "えり / キン",
    radical: "襟",
    componentHint: "classical radical 145",
    examples: [
      {word: "襟首", reading: "えりくび", meaning: "nape of neck"},
      {word: "襟元", reading: "えりもと", meaning: "front of neck; collar"},
      {word: "襟巻", reading: "えりまき", meaning: "muffler; scarf"}
    ],
  },
  {
    kanji: "衿",
    keyword: "neck/collar",
    reading: "えり / キン / コン",
    radical: "衿",
    componentHint: "classical radical 145",
    examples: [
      {word: "衿元", reading: "えりもと", meaning: "front of neck; collar"},
      {word: "衿足", reading: "えりあし", meaning: "nape of neck; border of hair at back of neck"},
      {word: "衿裏", reading: "えりうら", meaning: "lining of the collar"}
    ],
  },
  {
    kanji: "裾",
    keyword: "cuff/hem",
    reading: "すそ / キョ / コ",
    radical: "裾",
    componentHint: "classical radical 145",
    examples: [
      {word: "裾野", reading: "すその", meaning: "foot of a mountain; plain at the foot of a mountain"},
      {word: "山裾", reading: "やますそ", meaning: "foot or base of a mountain; foothills"},
      {word: "裳裾", reading: "もすそ", meaning: "cuff (of pants); hem (of skirt)"}
    ],
  },
  {
    kanji: "据",
    keyword: "set/lay a foundation",
    reading: "す.える / す.わる / キョ",
    radical: "据",
    componentHint: "classical radical 64",
    examples: [
      {word: "据える", reading: "すえる", meaning: "to place (in position); to fix"},
      {word: "見据える", reading: "みすえる", meaning: "to gaze at; to stare at"},
      {word: "据わる", reading: "すわる", meaning: "to sit; to squat"}
    ],
  },
  {
    kanji: "握",
    keyword: "grip/hold",
    reading: "にぎ.る / アク",
    radical: "握",
    componentHint: "classical radical 64",
    examples: [
      {word: "握る", reading: "にぎる", meaning: "to clasp; to grasp"},
      {word: "握りしめる", reading: "にぎりしめる", meaning: "to grasp tightly"},
      {word: "握手", reading: "あくしゅ", meaning: "handshake"}
    ],
  },
  {
    kanji: "揃",
    keyword: "be complete/uniform",
    reading: "そろ.える / そろ.う / そろ.い / き.る / セン",
    radical: "揃",
    componentHint: "classical radical 64",
    examples: [
      {word: "揃う", reading: "そろう", meaning: "to become complete; to be all present"},
      {word: "揃える", reading: "そろえる", meaning: "to collect; to gather"},
      {word: "揃い", reading: "そろい", meaning: "set; suit"}
    ],
  },
  {
    kanji: "撫",
    keyword: "stroke/pat",
    reading: "な.でる / ブ / フ",
    radical: "撫",
    componentHint: "classical radical 64",
    examples: [
      {word: "撫でる", reading: "なでる", meaning: "to brush gently; to stroke"},
      {word: "愛撫", reading: "あいぶ", meaning: "caress; loving dearly"},
      {word: "撫でつける", reading: "なでつける", meaning: "to comb down; to smooth down"}
    ],
  },
  {
    kanji: "託",
    keyword: "consign/requesting",
    reading: "かこつ.ける / かこ.つ / かこ.つける / タク",
    radical: "託",
    componentHint: "classical radical 149",
    examples: [
      {word: "託す", reading: "たくす", meaning: "to entrust; to make an excuse of"},
      {word: "屈託", reading: "くったく", meaning: "worry; care"},
      {word: "神託", reading: "しんたく", meaning: "oracle"}
    ],
  },
  {
    kanji: "宅",
    keyword: "home/house",
    reading: "タク",
    radical: "宅",
    componentHint: "classical radical 40",
    examples: [
      {word: "自宅", reading: "じたく", meaning: "one's home"},
      {word: "住宅", reading: "じゅうたく", meaning: "residence; housing"},
      {word: "帰宅", reading: "きたく", meaning: "returning home"}
    ],
  },
  {
    kanji: "詫",
    keyword: "apologize",
    reading: "わび / わび.しい / かこつ / わ.びる / タ",
    radical: "詫",
    componentHint: "classical radical 149",
    examples: [
      {word: "詫びる", reading: "わびる", meaning: "to apologize; to apologise"},
      {word: "お詫び", reading: "おわび", meaning: "apology"},
      {word: "詫び", reading: "わび", meaning: "apology; excuse"}
    ],
  },
  {
    kanji: "宇",
    keyword: "eaves/roof",
    reading: "ウ",
    radical: "宇",
    componentHint: "classical radical 40",
    examples: [
      {word: "宇宙", reading: "うちゅう", meaning: "universe; cosmos"},
      {word: "宇宙船", reading: "うちゅうせん", meaning: "space ship"},
      {word: "眉宇", reading: "びう", meaning: "brow; brows"}
    ],
  },
  {
    kanji: "芋",
    keyword: "potato",
    reading: "いも / ウ",
    radical: "芋",
    componentHint: "classical radical 140",
    examples: [
      {word: "芋虫", reading: "いもむし", meaning: "hornworm (caterpillar of a hawk moth); (hairless) caterpillar"},
      {word: "里芋", reading: "さといも", meaning: "taro (Colocasia esculenta); dasheen"},
      {word: "山芋", reading: "やまいも", meaning: "Japanese yam (Dioscorea japonica)"}
    ],
  },
  {
    kanji: "寿",
    keyword: "longevity/congratulations",
    reading: "ことぶき / ことぶ.く / ことほ.ぐ / ジュ / ス / シュウ",
    radical: "寿",
    componentHint: "classical radical 41",
    examples: [
      {word: "寿命", reading: "じゅみょう", meaning: "life span"},
      {word: "寿司", reading: "すし", meaning: "sushi; anything made with vinegared rice (may also contain vegetables, spices, fish, or other delicacies)"},
      {word: "長寿", reading: "ちょうじゅ", meaning: "longevity"}
    ],
  },
  {
    kanji: "鋳",
    keyword: "casting/mint",
    reading: "い.る / チュウ / イ / シュ",
    radical: "鋳",
    componentHint: "classical radical 167",
    examples: [
      {word: "鋳造", reading: "ちゅうぞう", meaning: "casting; founding"},
      {word: "鋳る", reading: "いる", meaning: "to cast; to mint"},
      {word: "鋳型", reading: "いがた", meaning: "mold; mould"}
    ],
  },
  {
    kanji: "銘",
    keyword: "inscription/signature (of artisan)",
    reading: "メイ",
    radical: "銘",
    componentHint: "classical radical 167",
    examples: [
      {word: "正真正銘", reading: "しょうしんしょうめい", meaning: "genuine; authentic"},
      {word: "感銘", reading: "かんめい", meaning: "deep impression"},
      {word: "銘じる", reading: "めいじる", meaning: "to stamp; to engrave"}
    ],
  },
  {
    kanji: "鏡",
    keyword: "mirror/speculum",
    reading: "かがみ / キョウ / ケイ",
    radical: "鏡",
    componentHint: "classical radical 167",
    examples: [
      {word: "眼鏡", reading: "めがね", meaning: "spectacles; glasses"},
      {word: "望遠鏡", reading: "ぼうえんきょう", meaning: "telescope"},
      {word: "双眼鏡", reading: "そうがんきょう", meaning: "binoculars; field glasses"}
    ],
  },
  {
    kanji: "境",
    keyword: "boundary/border",
    reading: "さかい / キョウ / ケイ",
    radical: "境",
    componentHint: "classical radical 32",
    examples: [
      {word: "環境", reading: "かんきょう", meaning: "environment; circumstance"},
      {word: "国境", reading: "こっきょう", meaning: "national border; provincial border"},
      {word: "境内", reading: "けいだい", meaning: "grounds (esp. of shrines and temples); compound"}
    ],
  },
  {
    kanji: "環",
    keyword: "ring/circle",
    reading: "わ / カン",
    radical: "環",
    componentHint: "classical radical 96",
    examples: [
      {word: "環境", reading: "かんきょう", meaning: "environment; circumstance"},
      {word: "循環", reading: "じゅんかん", meaning: "circulation; rotation"},
      {word: "一環", reading: "いっかん", meaning: "link (e.g. a part of a larger plan)"}
    ],
  },
  {
    kanji: "還",
    keyword: "send back/return",
    reading: "かえ.る / カン",
    radical: "還",
    componentHint: "classical radical 162",
    examples: [
      {word: "帰還", reading: "きかん", meaning: "repatriation; return"},
      {word: "還る", reading: "かえる", meaning: "to return; to come home"},
      {word: "生還", reading: "せいかん", meaning: "returning alive; reaching the home plate"}
    ],
  },
  {
    kanji: "盾",
    keyword: "shield/escutcheon",
    reading: "たて / ジュン",
    radical: "盾",
    componentHint: "classical radical 109",
    examples: [
      {word: "矛盾", reading: "むじゅん", meaning: "contradiction; inconsistency"},
      {word: "盾突く", reading: "たてつく", meaning: "to oppose; to resist"},
      {word: "盾座", reading: "たてざ", meaning: "Scutum (constellation); the Shield"}
    ],
  },
  {
    kanji: "循",
    keyword: "sequential/follow",
    reading: "ジュン",
    radical: "循",
    componentHint: "classical radical 60",
    examples: [
      {word: "循環", reading: "じゅんかん", meaning: "circulation; rotation"},
      {word: "悪循環", reading: "あくじゅんかん", meaning: "vicious circle"},
      {word: "因循", reading: "いんじゅん", meaning: "indecision; vacillation"}
    ],
  },
  {
    kanji: "巡",
    keyword: "patrol/go around",
    reading: "めぐ.る / めぐ.り / ジュン",
    radical: "巡",
    componentHint: "classical radical 47",
    examples: [
      {word: "巡査", reading: "じゅんさ", meaning: "police; policeman"},
      {word: "巡る", reading: "めぐる", meaning: "to go around; to return"},
      {word: "巡礼", reading: "じゅんれい", meaning: "pilgrimage; pilgrim"}
    ],
  },
  {
    kanji: "這",
    keyword: "crawl/creep",
    reading: "は.う / は.い / むか.える / この / シャ / ゲン",
    radical: "這",
    componentHint: "classical radical 162",
    examples: [
      {word: "這う", reading: "はう", meaning: "to creep; to crawl"},
      {word: "這入る", reading: "はいる", meaning: "to enter; to go into"},
      {word: "這い出す", reading: "はいだす", meaning: "to crawl out; to creep out"}
    ],
  },
  {
    kanji: "逓",
    keyword: "relay/in turn",
    reading: "かわ.る / たがいに / テイ",
    radical: "逓",
    componentHint: "classical radical 162",
    examples: [
      {word: "逓信", reading: "ていしん", meaning: "communications (e.g. post, tele.)"},
      {word: "駅逓", reading: "えきてい", meaning: "delivery of packages; postal service"},
      {word: "逓減", reading: "ていげん", meaning: "gradual decrease; gradual diminution"}
    ],
  },
  {
    kanji: "息",
    keyword: "breath/respiration",
    reading: "いき / ソク",
    radical: "息",
    componentHint: "classical radical 61",
    examples: [
      {word: "息子", reading: "むすこ", meaning: "son; penis"},
      {word: "ため息", reading: "ためいき", meaning: "sigh"},
      {word: "溜息", reading: "ためいき", meaning: "sigh"}
    ],
  },
  {
    kanji: "憩",
    keyword: "recess/rest",
    reading: "いこ.い / いこ.う / ケイ",
    radical: "憩",
    componentHint: "classical radical 61",
    examples: [
      {word: "休憩", reading: "きゅうけい", meaning: "rest; break"},
      {word: "憩い", reading: "いこい", meaning: "rest"},
      {word: "憩う", reading: "いこう", meaning: "to rest; to relax"}
    ],
  },
  {
    kanji: "鼻",
    keyword: "nose/snout",
    reading: "はな / ビ",
    radical: "鼻",
    componentHint: "classical radical 209",
    examples: [
      {word: "鼻先", reading: "はなさき", meaning: "tip of nose; before one's eyes"},
      {word: "鼻息", reading: "はないき", meaning: "nasal breathing; person's pleasure"},
      {word: "鼻血", reading: "はなぢ", meaning: "nosebleed"}
    ],
  },
  {
    kanji: "孔",
    keyword: "cavity/hole",
    reading: "あな / コウ",
    radical: "孔",
    componentHint: "classical radical 39",
    examples: [
      {word: "鼻孔", reading: "びこう", meaning: "nostril; nostrils"},
      {word: "孔子", reading: "こうし", meaning: "Confucius"},
      {word: "孔雀", reading: "くじゃく", meaning: "peafowl (incl. the male peacock, female peahen, and young peachick)"}
    ],
  },
  {
    kanji: "臭",
    keyword: "stinking/ill-smelling",
    reading: "くさ.い / -くさ.い / にお.う / にお.い / シュウ",
    radical: "臭",
    componentHint: "classical radical 132",
    examples: [
      {word: "臭い", reading: "くさい", meaning: "stinking; smelly"},
      {word: "悪臭", reading: "あくしゅう", meaning: "stink; bad odor"},
      {word: "臭気", reading: "しゅうき", meaning: "bad smell; stink"}
    ],
  },
  {
    kanji: "嗅",
    keyword: "smell/sniff",
    reading: "か.ぐ / キュウ",
    radical: "嗅",
    componentHint: "classical radical 30",
    examples: [
      {word: "嗅ぐ", reading: "かぐ", meaning: "to sniff; to smell"},
      {word: "嗅ぎつける", reading: "かぎつける", meaning: "to sniff out; to get wind of"},
      {word: "嗅覚", reading: "きゅうかく", meaning: "sense of smell; olfaction"}
    ],
  },
  {
    kanji: "奥",
    keyword: "heart/interior",
    reading: "おく / おく.まる / くま / オウ",
    radical: "奥",
    componentHint: "classical radical 37",
    examples: [
      {word: "奥さん", reading: "おくさん", meaning: "wife; your wife"},
      {word: "奥様", reading: "おくさま", meaning: "wife; your wife"},
      {word: "奥さま", reading: "おくさま", meaning: "wife; your wife"}
    ],
  },
  {
    kanji: "尖",
    keyword: "be pointed/sharp",
    reading: "とが.る / さき / するど.い / セン",
    radical: "尖",
    componentHint: "classical radical 42",
    examples: [
      {word: "尖る", reading: "とんがる", meaning: "to taper to a point; to become sharp"},
      {word: "尖塔", reading: "せんとう", meaning: "spire; steeple"},
      {word: "尖端", reading: "せんたん", meaning: "pointed end; tip"}
    ],
  },
  {
    kanji: "突",
    keyword: "stab/protruding",
    reading: "つ.く / トツ / カ",
    radical: "突",
    componentHint: "classical radical 116",
    examples: [
      {word: "突然", reading: "とつぜん", meaning: "abrupt; sudden"},
      {word: "突く", reading: "つく", meaning: "to prick; to stab"},
      {word: "突っ込む", reading: "つっこむ", meaning: "to thrust (something) into (something); to cram"}
    ],
  },
  {
    kanji: "窒",
    keyword: "plug up/obstruct",
    reading: "チツ",
    radical: "窒",
    componentHint: "classical radical 116",
    examples: [
      {word: "窒息", reading: "ちっそく", meaning: "suffocation; choking"},
      {word: "窒素", reading: "ちっそ", meaning: "nitrogen (N)"},
      {word: "窒素肥料", reading: "ちっそひりょう", meaning: "nitrogenous fertilizer; nitrogenous fertiliser"}
    ],
  },
  {
    kanji: "窃",
    keyword: "stealth/steal",
    reading: "ぬす.む / ひそ.か / セツ",
    radical: "窃",
    componentHint: "classical radical 116",
    examples: [
      {word: "窃盗", reading: "せっとう", meaning: "theft; stealing"},
      {word: "剽窃", reading: "ひょうせつ", meaning: "plagiarism; piracy"},
      {word: "窃か", reading: "ひそか", meaning: "secret; private"}
    ],
  },
  {
    kanji: "衝",
    keyword: "collide/brunt",
    reading: "つ.く / ショウ",
    radical: "衝",
    componentHint: "classical radical 144",
    examples: [
      {word: "衝撃", reading: "しょうげき", meaning: "shock; crash"},
      {word: "衝動", reading: "しょうどう", meaning: "impulse; impetus"},
      {word: "衝突", reading: "しょうとつ", meaning: "collision; crash"}
    ],
  },
  {
    kanji: "契",
    keyword: "pledge/promise",
    reading: "ちぎ.る / ケイ",
    radical: "契",
    componentHint: "classical radical 37",
    examples: [
      {word: "契約", reading: "けいやく", meaning: "contract; compact"},
      {word: "契機", reading: "けいき", meaning: "opportunity; chance"},
      {word: "契り", reading: "ちぎり", meaning: "pledge; vow"}
    ],
  },
  {
    kanji: "喫",
    keyword: "consume/eat",
    reading: "の.む / キツ",
    radical: "喫",
    componentHint: "classical radical 30",
    examples: [
      {word: "喫茶店", reading: "きっさてん", meaning: "coffee shop; tearoom"},
      {word: "喫茶", reading: "きっさ", meaning: "tea drinking; teahouse"},
      {word: "喫煙", reading: "きつえん", meaning: "smoking"}
    ],
  },
  {
    kanji: "潔",
    keyword: "undefiled/pure",
    reading: "いさぎよ.い / ケツ",
    radical: "潔",
    componentHint: "classical radical 85",
    examples: [
      {word: "清潔", reading: "せいけつ", meaning: "clean; hygienic"},
      {word: "不潔", reading: "ふけつ", meaning: "unclean; dirty"},
      {word: "簡潔", reading: "かんけつ", meaning: "brevity; conciseness"}
    ],
  },
  {
    kanji: "侮",
    keyword: "scorn/despise",
    reading: "あなど.る / あなず.る / ブ",
    radical: "侮",
    componentHint: "classical radical 9",
    examples: [
      {word: "侮辱", reading: "ぶじょく", meaning: "insult; contempt"},
      {word: "侮蔑", reading: "ぶべつ", meaning: "scorn; disdain"},
      {word: "侮る", reading: "あなどる", meaning: "to despise; to disdain"}
    ],
  },
  {
    kanji: "梅",
    keyword: "plum",
    reading: "うめ / バイ",
    radical: "梅",
    componentHint: "classical radical 75",
    examples: [
      {word: "梅雨", reading: "つゆ", meaning: "rainy season; rain during the rainy season"},
      {word: "塩梅", reading: "えんばい", meaning: "seasoning; flavour"},
      {word: "紅梅", reading: "こうばい", meaning: "red-blossomed plum tree; red Japanese apricot"}
    ],
  },
  {
    kanji: "悔",
    keyword: "repent/regret",
    reading: "く.いる / く.やむ / くや.しい / カイ",
    radical: "悔",
    componentHint: "classical radical 61",
    examples: [
      {word: "後悔", reading: "こうかい", meaning: "regret; repentance"},
      {word: "悔しい", reading: "くやしい", meaning: "vexing; annoying"},
      {word: "懺悔", reading: "ざんげ", meaning: "repentance; confession"}
    ],
  },
  {
    kanji: "敏",
    keyword: "cleverness/agile",
    reading: "さとい / ビン",
    radical: "敏",
    componentHint: "classical radical 66",
    examples: [
      {word: "敏感", reading: "びんかん", meaning: "sensibility; susceptibility"},
      {word: "敏捷", reading: "びんしょう", meaning: "nimble; prompt"},
      {word: "鋭敏", reading: "えいびん", meaning: "sharpness; keenness"}
    ],
  },
  {
    kanji: "繁",
    keyword: "luxuriant/thick",
    reading: "しげ.る / しげ.く / ハン",
    radical: "繁",
    componentHint: "classical radical 120",
    examples: [
      {word: "頻繁", reading: "ひんぱん", meaning: "frequent; incessant"},
      {word: "繁栄", reading: "はんえい", meaning: "prospering; prosperity"},
      {word: "繁華", reading: "はんか", meaning: "bustle; prosperity"}
    ],
  },
  {
    kanji: "繋",
    keyword: "tie/fasten",
    reading: "つな.ぐ / かか.る / か.ける / ケイ",
    radical: "繋",
    componentHint: "classical radical 120",
    examples: [
      {word: "繋ぐ", reading: "つなぐ", meaning: "to tie; to fasten"},
      {word: "繋がる", reading: "つながる", meaning: "to be tied together; to be connected to"},
      {word: "繋がり", reading: "つながり", meaning: "connection; link"}
    ],
  },
  {
    kanji: "茂",
    keyword: "overgrown/grow thick",
    reading: "しげ.る / モ",
    radical: "茂",
    componentHint: "classical radical 140",
    examples: [
      {word: "茂み", reading: "しげみ", meaning: "thicket; coppice"},
      {word: "茂る", reading: "しげる", meaning: "to grow thickly; to be in full leaf"},
      {word: "生い茂る", reading: "おいしげる", meaning: "to grow thickly; to be overgrown"}
    ],
  },
  {
    kanji: "橋",
    keyword: "bridge",
    reading: "はし / キョウ",
    radical: "橋",
    componentHint: "classical radical 75",
    examples: [
      {word: "桟橋", reading: "さんばし", meaning: "wharf; bridge"},
      {word: "新橋", reading: "しんばし", meaning: "Shinbashi (section of Tokyo)"},
      {word: "艦橋", reading: "かんきょう", meaning: "bridge (e.g. on a warship)"}
    ],
  },
  {
    kanji: "矯",
    keyword: "rectify/straighten",
    reading: "た.める / キョウ",
    radical: "矯",
    componentHint: "classical radical 111",
    examples: [
      {word: "矯正", reading: "きょうせい", meaning: "correction (of fault, defect, flaw, etc.); remedy"},
      {word: "奇矯", reading: "ききょう", meaning: "eccentric"},
      {word: "矯める", reading: "ためる", meaning: "to straighten; to correct"}
    ],
  },
  {
    kanji: "稿",
    keyword: "draft/copy",
    reading: "わら / したがき / コウ",
    radical: "稿",
    componentHint: "classical radical 115",
    examples: [
      {word: "原稿", reading: "げんこう", meaning: "manuscript; copy"},
      {word: "投稿", reading: "とうこう", meaning: "contribution; submission"},
      {word: "草稿", reading: "そうこう", meaning: "notes; draft"}
    ],
  },
  {
    kanji: "縞",
    keyword: "stripe",
    reading: "しま / しろぎぬ / コウ",
    radical: "縞",
    componentHint: "classical radical 120",
    examples: [
      {word: "格子縞", reading: "こうしじま", meaning: "check(ed) pattern; plaid"},
      {word: "横縞", reading: "よこじま", meaning: "horizontal stripes; lateral stripes"},
      {word: "縦縞", reading: "たてじま", meaning: "vertical stripes; striped fabric"}
    ],
  },
  {
    kanji: "箋",
    keyword: "paper/label",
    reading: "ふだ / セン",
    radical: "箋",
    componentHint: "classical radical 118",
    examples: [
      {word: "便箋", reading: "びんせん", meaning: "writing paper; stationery"},
      {word: "付箋", reading: "ふせん", meaning: "tag; slip"},
      {word: "処方箋", reading: "しょほうせん", meaning: "prescription"}
    ],
  },
  {
    kanji: "残",
    keyword: "remainder/leftover",
    reading: "のこ.る / のこ.す / そこな.う / のこ.り / ザン / サン",
    radical: "残",
    componentHint: "classical radical 78",
    examples: [
      {word: "残る", reading: "のこる", meaning: "to remain; to be left"},
      {word: "残す", reading: "のこす", meaning: "to leave (behind, over); to bequeath"},
      {word: "残念", reading: "ざんねん", meaning: "deplorable; bad luck"}
    ],
  },
  {
    kanji: "桟",
    keyword: "scaffold/cleat",
    reading: "かけはし / サン / セン",
    radical: "桟",
    componentHint: "classical radical 75",
    examples: [
      {word: "桟橋", reading: "さんばし", meaning: "wharf; bridge"},
      {word: "桟敷", reading: "さじき", meaning: "reviewing stand; box"},
      {word: "桟道", reading: "さんどう", meaning: "plank road; corduroy"}
    ],
  },
  {
    kanji: "銭",
    keyword: "coin/.01 yen",
    reading: "ぜに / すき / セン / ゼン",
    radical: "銭",
    componentHint: "classical radical 167",
    examples: [
      {word: "金銭", reading: "きんせん", meaning: "money; cash"},
      {word: "小銭", reading: "こぜに", meaning: "coins; small change"},
      {word: "銭湯", reading: "せんとう", meaning: "bath-house; public bath"}
    ],
  },
  {
    kanji: "践",
    keyword: "tread/step on",
    reading: "ふ.む / セン",
    radical: "践",
    componentHint: "classical radical 157",
    examples: [
      {word: "実践", reading: "じっせん", meaning: "practice; practising"},
      {word: "践祚", reading: "せんそ", meaning: "accession (to the throne)"},
      {word: "践む", reading: "ふむ", meaning: "to step on; to tread on"}
    ],
  },
  {
    kanji: "浅",
    keyword: "shallow/superficial",
    reading: "あさ.い / セン",
    radical: "浅",
    componentHint: "classical radical 85",
    examples: [
      {word: "浅い", reading: "あさい", meaning: "shallow; superficial"},
      {word: "浅黒い", reading: "あさぐろい", meaning: "darkish; swarthy"},
      {word: "浅見", reading: "せんけん", meaning: "shallow view; superficial idea"}
    ],
  },
  {
    kanji: "洩",
    keyword: "leak/escape",
    reading: "も.らす / の.びる / も.れる / エイ / セツ",
    radical: "洩",
    componentHint: "classical radical 85",
    examples: [
      {word: "洩らす", reading: "もらす", meaning: "to let leak; to reveal"},
      {word: "洩れる", reading: "もれる", meaning: "to leak out; to escape"},
      {word: "洩る", reading: "もる", meaning: "to leak; to run out"}
    ],
  },
  {
    kanji: "壮",
    keyword: "robust/manhood",
    reading: "さかん / ソウ",
    radical: "壮",
    componentHint: "classical radical 90",
    examples: [
      {word: "壮大", reading: "そうだい", meaning: "magnificent; grand"},
      {word: "悲壮", reading: "ひそう", meaning: "heroic; tragic"},
      {word: "壮麗", reading: "そうれい", meaning: "splendour; splendor"}
    ],
  },
  {
    kanji: "荘",
    keyword: "villa/inn",
    reading: "ほうき / おごそ.か / ソウ / ショウ / チャン",
    radical: "荘",
    componentHint: "classical radical 140",
    examples: [
      {word: "別荘", reading: "べっそう", meaning: "holiday house; villa"},
      {word: "山荘", reading: "さんそう", meaning: "mountain villa; mountain retreat"},
      {word: "荘厳", reading: "そうごん", meaning: "solemnity; gravity"}
    ],
  },
  {
    kanji: "装",
    keyword: "attire/dress",
    reading: "よそお.う / よそお.い / ソウ / ショウ",
    radical: "装",
    componentHint: "classical radical 145",
    examples: [
      {word: "装置", reading: "そうち", meaning: "equipment; installation"},
      {word: "服装", reading: "ふくそう", meaning: "garments; attire"},
      {word: "武装", reading: "ぶそう", meaning: "arms; armament"}
    ],
  },
  {
    kanji: "冥",
    keyword: "dark",
    reading: "くら.い / メイ / ミョウ",
    radical: "冥",
    componentHint: "classical radical 14",
    examples: [
      {word: "冥府", reading: "めいふ", meaning: "hades; realm of the dead"},
      {word: "冥界", reading: "めいかい", meaning: "hades; realm of the dead"},
      {word: "冥福", reading: "めいふく", meaning: "happiness in the next world"}
    ],
  },
  {
    kanji: "暗",
    keyword: "darkness/disappear",
    reading: "くら.い / くら.む / くれ.る / アン",
    radical: "暗",
    componentHint: "classical radical 72",
    examples: [
      {word: "暗い", reading: "くらい", meaning: "dark; gloomy"},
      {word: "暗闇", reading: "くらやみ", meaning: "darkness; the dark"},
      {word: "薄暗い", reading: "うすぐらい", meaning: "dim; gloomy"}
    ],
  },
  {
    kanji: "韻",
    keyword: "rhyme/elegance",
    reading: "イン",
    radical: "韻",
    componentHint: "classical radical 180",
    examples: [
      {word: "余韻", reading: "よいん", meaning: "reverberation; swelling (of a hymn)"},
      {word: "韻律", reading: "いんりつ", meaning: "rhythm; metre (poet)"},
      {word: "韻文", reading: "いんぶん", meaning: "verse; poetry"}
    ],
  },
  {
    kanji: "損",
    keyword: "damage/loss",
    reading: "そこ.なう / そこな.う / -そこ.なう / そこ.ねる / ソン",
    radical: "損",
    componentHint: "classical radical 64",
    examples: [
      {word: "損害", reading: "そんがい", meaning: "damage; injury"},
      {word: "損傷", reading: "そんしょう", meaning: "damage; injury"},
      {word: "損失", reading: "そんしつ", meaning: "loss (e.g. assets or profits)"}
    ],
  },
  {
    kanji: "捕",
    keyword: "catch/capture",
    reading: "と.らえる / と.らわれる / と.る / とら.える / ホ",
    radical: "捕",
    componentHint: "classical radical 64",
    examples: [
      {word: "逮捕", reading: "たいほ", meaning: "arrest; apprehension"},
      {word: "捕える", reading: "とらえる", meaning: "to seize; to capture"},
      {word: "捕虜", reading: "ほりょ", meaning: "prisoner (of war)"}
    ],
  },
  {
    kanji: "挿",
    keyword: "insert/put in",
    reading: "さ.す / はさ.む / ソウ",
    radical: "挿",
    componentHint: "classical radical 64",
    examples: [
      {word: "挿入", reading: "そうにゅう", meaning: "insertion; incorporation"},
      {word: "挿す", reading: "さす", meaning: "to insert; to put in"},
      {word: "挿絵", reading: "さしえ", meaning: "illustration (book, etc.); picture"}
    ],
  },
  {
    kanji: "補",
    keyword: "supplement/supply",
    reading: "おぎな.う / ホ",
    radical: "補",
    componentHint: "classical radical 145",
    examples: [
      {word: "警部補", reading: "けいぶほ", meaning: "assistant inspector"},
      {word: "候補", reading: "こうほ", meaning: "candidate; contender"},
      {word: "補給", reading: "ほきゅう", meaning: "supply; supplying"}
    ],
  },
  {
    kanji: "浦",
    keyword: "bay/creek",
    reading: "うら / ホ",
    radical: "浦",
    componentHint: "classical radical 85",
    examples: [
      {word: "津々浦々", reading: "つつうらうら", meaning: "all over the country; throughout the land"},
      {word: "浦辺", reading: "うらべ", meaning: "seacoast"},
      {word: "浦里", reading: "うらざと", meaning: "village by the sea"}
    ],
  },
  {
    kanji: "哺",
    keyword: "nurse/suckle",
    reading: "はぐく.む / ふく.む / ホ",
    radical: "哺",
    componentHint: "classical radical 30",
    examples: [
      {word: "哺乳類", reading: "ほにゅうるい", meaning: "mammal; mammalian"},
      {word: "哺乳", reading: "ほにゅう", meaning: "lactation; suckling"},
      {word: "哺育", reading: "ほいく", meaning: "nursing; nurturing"}
    ],
  },
  {
    kanji: "舗",
    keyword: "shop/store",
    reading: "ホ",
    radical: "舗",
    componentHint: "classical radical 9",
    examples: [
      {word: "舗装", reading: "ほそう", meaning: "pavement; road surface"},
      {word: "舗道", reading: "ほどう", meaning: "pavement; paved street"},
      {word: "店舗", reading: "てんぽ", meaning: "shop; store"}
    ],
  },
  {
    kanji: "掴",
    keyword: "catch/seize",
    reading: "つか.む / つか.まえる / つか.まる / カク",
    radical: "掴",
    componentHint: "classical radical 64",
    examples: [
      {word: "掴む", reading: "つかむ", meaning: "to seize; to catch"},
      {word: "掴まる", reading: "つかまる", meaning: "to be caught; to be arrested"},
      {word: "掴まえる", reading: "つかまえる", meaning: "to catch; to arrest"}
    ],
  },
  {
    kanji: "捉",
    keyword: "catch/capture",
    reading: "とら.える / ソク / サク",
    radical: "捉",
    componentHint: "classical radical 64",
    examples: [
      {word: "捉える", reading: "とらえる", meaning: "to seize; to capture"},
      {word: "捕捉", reading: "ほそく", meaning: "capture; seizure"},
      {word: "捉まえる", reading: "つかまえる", meaning: "to catch; to arrest"}
    ],
  },
  {
    kanji: "促",
    keyword: "stimulate/urge",
    reading: "うなが.す / ソク",
    radical: "促",
    componentHint: "classical radical 9",
    examples: [
      {word: "促す", reading: "うながす", meaning: "to urge; to press"},
      {word: "催促", reading: "さいそく", meaning: "pressing; demanding"},
      {word: "促進", reading: "そくしん", meaning: "promotion; acceleration"}
    ],
  },
  {
    kanji: "筆",
    keyword: "writing brush/writing",
    reading: "ふで / ヒツ",
    radical: "筆",
    componentHint: "classical radical 118",
    examples: [
      {word: "鉛筆", reading: "えんぴつ", meaning: "pencil"},
      {word: "筆者", reading: "ひっしゃ", meaning: "writer (often in self-reference); author"},
      {word: "執筆", reading: "しっぴつ", meaning: "writing (e.g. as a profession)"}
    ],
  },
  {
    kanji: "津",
    keyword: "haven/port",
    reading: "つ / シン",
    radical: "津",
    componentHint: "classical radical 85",
    examples: [
      {word: "津軽", reading: "つがる", meaning: "Tsugaru (Western region of Aomori Prefecture)"},
      {word: "摂津", reading: "せっつ", meaning: "Settsu (former province covering parts of modern Osaka and Hyogo)"},
      {word: "津波", reading: "つなみ", meaning: "tsunami; tidal wave"}
    ],
  },
  {
    kanji: "律",
    keyword: "rhythm/law",
    reading: "リツ / リチ / レツ",
    radical: "律",
    componentHint: "classical radical 60",
    examples: [
      {word: "法律", reading: "ほうりつ", meaning: "law"},
      {word: "規律", reading: "きりつ", meaning: "order; observance"},
      {word: "旋律", reading: "せんりつ", meaning: "melody; tune"}
    ],
  },
  {
    kanji: "逮",
    keyword: "apprehend/chase",
    reading: "タイ",
    radical: "逮",
    componentHint: "classical radical 162",
    examples: [
      {word: "逮捕", reading: "たいほ", meaning: "arrest; apprehension"},
      {word: "逮夜", reading: "たいや", meaning: "eve of the anniversary of a person's death"},
      {word: "逮捕者", reading: "たいほしゃ", meaning: "arrestee; person arrested"}
    ],
  },
  {
    kanji: "建",
    keyword: "build",
    reading: "た.てる / た.て / -だ.て / た.つ / ケン / コン",
    radical: "建",
    componentHint: "classical radical 54",
    examples: [
      {word: "建物", reading: "たてもの", meaning: "building"},
      {word: "建てる", reading: "たてる", meaning: "to build; to construct"},
      {word: "建設", reading: "けんせつ", meaning: "construction; establishment"}
    ],
  },
  {
    kanji: "健",
    keyword: "healthy/health",
    reading: "すこ.やか / ケン",
    radical: "健",
    componentHint: "classical radical 9",
    examples: [
      {word: "健康", reading: "けんこう", meaning: "health; sound"},
      {word: "健全", reading: "けんぜん", meaning: "health; soundness"},
      {word: "保健", reading: "ほけん", meaning: "health preservation; hygiene"}
    ],
  },
  {
    kanji: "康",
    keyword: "ease/peace",
    reading: "コウ",
    radical: "康",
    componentHint: "classical radical 53",
    examples: [
      {word: "健康", reading: "けんこう", meaning: "health; sound"},
      {word: "不健康", reading: "ふけんこう", meaning: "poor health; ill health"},
      {word: "小康", reading: "しょうこう", meaning: "lull"}
    ],
  },
  {
    kanji: "庸",
    keyword: "commonplace/ordinary",
    reading: "ヨウ",
    radical: "庸",
    componentHint: "classical radical 53",
    examples: [
      {word: "凡庸", reading: "ぼんよう", meaning: "mediocre; banality"},
      {word: "中庸", reading: "ちゅうよう", meaning: "middle way; (golden) mean"},
      {word: "登庸", reading: "とうよう", meaning: "appointment; assignment"}
    ],
  },
  {
    kanji: "粛",
    keyword: "solemn/quietly",
    reading: "つつし.む / シュク / スク",
    radical: "粛",
    componentHint: "classical radical 129",
    examples: [
      {word: "厳粛", reading: "げんしゅく", meaning: "gravity; solemnity"},
      {word: "静粛", reading: "せいしゅく", meaning: "silent"},
      {word: "粛清", reading: "しゅくせい", meaning: "(political) purge"}
    ],
  },
  {
    kanji: "繍",
    keyword: "sew/figured cloth",
    reading: "ぬいとり / シュウ",
    radical: "繍",
    componentHint: "classical radical 120",
    examples: [
      {word: "刺繍", reading: "ししゅう", meaning: "embroidery"},
      {word: "錦繍", reading: "きんしゅう", meaning: "fabric with a brocade and embroidery; beautiful fabric"},
      {word: "刺繍糸", reading: "ししゅういと", meaning: "embroidery thread"}
    ],
  },
  {
    kanji: "唐",
    keyword: "T'ang/China",
    reading: "から / トウ",
    radical: "唐",
    componentHint: "classical radical 30",
    examples: [
      {word: "唐突", reading: "とうとつ", meaning: "abrupt; sudden"},
      {word: "唐人", reading: "とうじん", meaning: "Chinese person; foreigner"},
      {word: "唐紙", reading: "からかみ", meaning: "thick printed paper (for covering sliding doors); paper sliding-door"}
    ],
  },
  {
    kanji: "糖",
    keyword: "sugar",
    reading: "トウ",
    radical: "糖",
    componentHint: "classical radical 119",
    examples: [
      {word: "砂糖", reading: "さとう", meaning: "sugar"},
      {word: "糖尿", reading: "とうにょう", meaning: "glycosuria; glucosuria"},
      {word: "角砂糖", reading: "かくざとう", meaning: "cube sugar"}
    ],
  },
  {
    kanji: "粧",
    keyword: "cosmetics/adorn (one's person)",
    reading: "ショウ",
    radical: "粧",
    componentHint: "classical radical 119",
    examples: [
      {word: "化粧", reading: "けしょう", meaning: "make-up; makeup"},
      {word: "厚化粧", reading: "あつげしょう", meaning: "thick makeup; heavy makeup"},
      {word: "粧う", reading: "よそおう", meaning: "to dress; to pretend"}
    ],
  },
  {
    kanji: "糧",
    keyword: "provisions/food",
    reading: "かて / リョウ / ロウ",
    radical: "糧",
    componentHint: "classical radical 119",
    examples: [
      {word: "食糧", reading: "しょくりょう", meaning: "food (esp. staple food such as rice or wheat); provisions"},
      {word: "兵糧", reading: "ひょうろう", meaning: "(army) provisions; food"},
      {word: "糧食", reading: "りょうしょく", meaning: "provisions"}
    ],
  },
  {
    kanji: "粉",
    keyword: "flour/powder",
    reading: "デシメートル / こ / こな / フン",
    radical: "粉",
    componentHint: "classical radical 119",
    examples: [
      {word: "粉砕", reading: "ふんさい", meaning: "pulverization; pulverisation"},
      {word: "粉々", reading: "こなごな", meaning: "in very small pieces"},
      {word: "白粉", reading: "おしろい", meaning: "(face) powder"}
    ],
  },
  {
    kanji: "紛",
    keyword: "distract/be mistaken for",
    reading: "まぎ.れる / -まぎ.れ / まぎ.らす / まぎ.らわす / フン",
    radical: "紛",
    componentHint: "classical radical 120",
    examples: [
      {word: "紛れる", reading: "まぎれる", meaning: "to disappear into; to be lost in"},
      {word: "紛れ", reading: "まぐれ", meaning: "fluke; chance"},
      {word: "紛失", reading: "ふんしつ", meaning: "losing something"}
    ],
  },
  {
    kanji: "糾",
    keyword: "twist/ask",
    reading: "ただ.す / キュウ",
    radical: "糾",
    componentHint: "classical radical 120",
    examples: [
      {word: "糾弾", reading: "きゅうだん", meaning: "censure; denunciation"},
      {word: "紛糾", reading: "ふんきゅう", meaning: "complication; confusion"},
      {word: "糾合", reading: "きゅうごう", meaning: "rally; muster"}
    ],
  },
  {
    kanji: "粋",
    keyword: "chic/style",
    reading: "いき / スイ",
    radical: "粋",
    componentHint: "classical radical 119",
    examples: [
      {word: "純粋", reading: "じゅんすい", meaning: "pure; true"},
      {word: "生粋", reading: "きっすい", meaning: "pure; genuine"},
      {word: "無粋", reading: "ぶすい", meaning: "boorish; inelegant"}
    ],
  },
  {
    kanji: "砕",
    keyword: "smash/break",
    reading: "くだ.く / くだ.ける / サイ",
    radical: "砕",
    componentHint: "classical radical 112",
    examples: [
      {word: "砕ける", reading: "くだける", meaning: "to break (into pieces); to be broken"},
      {word: "砕く", reading: "くだく", meaning: "to break; to smash"},
      {word: "粉砕", reading: "ふんさい", meaning: "pulverization; pulverisation"}
    ],
  },
  {
    kanji: "枠",
    keyword: "frame/framework",
    reading: "わく",
    radical: "枠",
    componentHint: "classical radical 75",
    examples: [
      {word: "枠組み", reading: "わくぐみ", meaning: "frame; framework"},
      {word: "枠組", reading: "わくぐみ", meaning: "frame; framework"},
      {word: "枠内", reading: "わくない", meaning: "within the limits (framework, boundaries, price, etc.)"}
    ],
  },
  {
    kanji: "酔",
    keyword: "drunk/feel sick",
    reading: "よ.う / よ.い / よ / スイ",
    radical: "酔",
    componentHint: "classical radical 164",
    examples: [
      {word: "酔う", reading: "よう", meaning: "to get drunk; to become intoxicated"},
      {word: "酔い", reading: "よい", meaning: "drunkenness; intoxication"},
      {word: "酔っぱらう", reading: "よっぱらう", meaning: "to get drunk"}
    ],
  },
  {
    kanji: "醒",
    keyword: "awake/be disillusioned",
    reading: "さ.ます / さ.める / セイ",
    radical: "醒",
    componentHint: "classical radical 164",
    examples: [
      {word: "醒める", reading: "さめる", meaning: "to wake; to wake up"},
      {word: "覚醒", reading: "かくせい", meaning: "waking up; awakening"},
      {word: "覚醒剤", reading: "かくせいざい", meaning: "stimulant (e.g. psychoactive drugs like methamphetamine, ritalin, etc.)"}
    ],
  },
  {
    kanji: "酬",
    keyword: "repay/reward",
    reading: "むく.いる / シュウ / シュ / トウ",
    radical: "酬",
    componentHint: "classical radical 164",
    examples: [
      {word: "報酬", reading: "ほうしゅう", meaning: "remuneration; recompense"},
      {word: "応酬", reading: "おうしゅう", meaning: "exchange; reciprocation"},
      {word: "酬う", reading: "むくう", meaning: "to reward; to recompense"}
    ],
  },
  {
    kanji: "酷",
    keyword: "cruel/severe",
    reading: "ひど.い / コク",
    radical: "酷",
    componentHint: "classical radical 164",
    examples: [
      {word: "残酷", reading: "ざんこく", meaning: "cruelty; harshness"},
      {word: "酷い", reading: "むごい", meaning: "cruel; merciless"},
      {word: "冷酷", reading: "れいこく", meaning: "cruelty; coldheartedness"}
    ],
  },
  {
    kanji: "凡",
    keyword: "commonplace/ordinary",
    reading: "およ.そ / おうよ.そ / すべ.て / ボン / ハン",
    radical: "凡",
    componentHint: "classical radical 16",
    examples: [
      {word: "平凡", reading: "へいぼん", meaning: "common; commonplace"},
      {word: "凡て", reading: "すべて", meaning: "everything; all"},
      {word: "非凡", reading: "ひぼん", meaning: "prodigy; rare"}
    ],
  },
  {
    kanji: "凧",
    keyword: "kite/(kokuji)",
    reading: "いかのぼり / たこ",
    radical: "凧",
    componentHint: "classical radical 16",
    examples: [
      {word: "奴凧", reading: "やっこだこ", meaning: "kite shaped like a footman"},
      {word: "紙凧", reading: "たこ", meaning: "kite"},
      {word: "和凧", reading: "わだこ", meaning: "Japanese kite"}
    ],
  },
  {
    kanji: "帆",
    keyword: "sail",
    reading: "ほ / ハン",
    radical: "帆",
    componentHint: "classical radical 50",
    examples: [
      {word: "帆船", reading: "ほぶね", meaning: "sailing ship; sailing boat"},
      {word: "出帆", reading: "しゅっぱん", meaning: "sailing; departure"},
      {word: "帆柱", reading: "ほばしら", meaning: "mast"}
    ],
  },
  {
    kanji: "汎",
    keyword: "pan-",
    reading: "ただよ.う / ひろ.い / ハン / ブ / フウ",
    radical: "汎",
    componentHint: "classical radical 85",
    examples: [
      {word: "汎用", reading: "はんよう", meaning: "generic; general purpose"},
      {word: "広汎", reading: "こうはん", meaning: "wide; extensive"},
      {word: "汎神論", reading: "はんしんろん", meaning: "pantheism"}
    ],
  },
  {
    kanji: "恐",
    keyword: "fear/dread",
    reading: "おそ.れる / おそ.る / おそ.ろしい / こわ.い / キョウ",
    radical: "恐",
    componentHint: "classical radical 61",
    examples: [
      {word: "恐ろしい", reading: "おそろしい", meaning: "terrible; dreadful"},
      {word: "恐怖", reading: "きょうふ", meaning: "fear; dread"},
      {word: "恐れる", reading: "おそれる", meaning: "to fear; to be afraid of"}
    ],
  },
  {
    kanji: "怖",
    keyword: "dreadful/be frightened",
    reading: "こわ.い / こわ.がる / お.じる / おそ.れる / フ / ホ",
    radical: "怖",
    componentHint: "classical radical 61",
    examples: [
      {word: "恐怖", reading: "きょうふ", meaning: "fear; dread"},
      {word: "怖い", reading: "こわい", meaning: "scary; frightening"},
      {word: "怖がる", reading: "こわがる", meaning: "to be afraid of; to fear"}
    ],
  },
  {
    kanji: "築",
    keyword: "fabricate/build",
    reading: "きず.く / チク",
    radical: "築",
    componentHint: "classical radical 118",
    examples: [
      {word: "建築", reading: "けんちく", meaning: "construction; architecture (of buildings)"},
      {word: "築く", reading: "きずく", meaning: "to build; to pile up"},
      {word: "構築", reading: "こうちく", meaning: "construction; building"}
    ],
  },
  {
    kanji: "尋",
    keyword: "inquire/fathom",
    reading: "たず.ねる / ひろ / ジン",
    radical: "尋",
    componentHint: "classical radical 41",
    examples: [
      {word: "尋ねる", reading: "たずねる", meaning: "to ask; to enquire"},
      {word: "尋常", reading: "じんじょう", meaning: "common; usual"},
      {word: "尋問", reading: "じんもん", meaning: "cross-examination; interrogation"}
    ],
  },
  {
    kanji: "訊",
    keyword: "request/question",
    reading: "き.く / と.う / たず.ねる / ジン / シュン / シン",
    radical: "訊",
    componentHint: "classical radical 149",
    examples: [
      {word: "訊く", reading: "きく", meaning: "to hear; to listen (e.g. to music)"},
      {word: "訊ねる", reading: "たずねる", meaning: "to ask; to enquire"},
      {word: "訊問", reading: "じんもん", meaning: "cross-examination; interrogation"}
    ],
  },
  {
    kanji: "諮",
    keyword: "consult with",
    reading: "はか.る / シ",
    radical: "諮",
    componentHint: "classical radical 149",
    examples: [
      {word: "諮る", reading: "はかる", meaning: "to consult with; to discuss"},
      {word: "諮問", reading: "しもん", meaning: "consultation; question"},
      {word: "諮詢", reading: "しじゅん", meaning: "question; enquiry"}
    ],
  },
  {
    kanji: "抗",
    keyword: "confront/resist",
    reading: "あらが.う / コウ",
    radical: "抗",
    componentHint: "classical radical 64",
    examples: [
      {word: "抵抗", reading: "ていこう", meaning: "resistance; opposition"},
      {word: "抗議", reading: "こうぎ", meaning: "protest; objection"},
      {word: "対抗", reading: "たいこう", meaning: "opposition; antagonism"}
    ],
  },
  {
    kanji: "航",
    keyword: "navigate/sail",
    reading: "コウ",
    radical: "航",
    componentHint: "classical radical 137",
    examples: [
      {word: "航空", reading: "こうくう", meaning: "aviation; flying"},
      {word: "航海", reading: "こうかい", meaning: "sail; voyage"},
      {word: "航行", reading: "こうこう", meaning: "cruise; navigation"}
    ],
  },
  {
    kanji: "坑",
    keyword: "pit/hole",
    reading: "コウ",
    radical: "坑",
    componentHint: "classical radical 32",
    examples: [
      {word: "坑夫", reading: "こうふ", meaning: "miner"},
      {word: "坑道", reading: "こうどう", meaning: "tunnel; (mine) level"},
      {word: "炭坑", reading: "たんこう", meaning: "coal mine; coal pit"}
    ],
  },
  {
    kanji: "拝",
    keyword: "worship/adore",
    reading: "おが.む / おろが.む / ハイ",
    radical: "拝",
    componentHint: "classical radical 64",
    examples: [
      {word: "礼拝", reading: "れいはい", meaning: "worship (esp. Christian); adoration"},
      {word: "拝む", reading: "おがむ", meaning: "to assume the posture of praying; to press the palms and fingers of both hands together"},
      {word: "拝見", reading: "はいけん", meaning: "seeing; look at"}
    ],
  },
  {
    kanji: "耕",
    keyword: "till/plow",
    reading: "たがや.す / コウ",
    radical: "耕",
    componentHint: "classical radical 127",
    examples: [
      {word: "耕作", reading: "こうさく", meaning: "cultivation; farming"},
      {word: "耕す", reading: "たがやす", meaning: "to till; to plow"},
      {word: "農耕", reading: "のうこう", meaning: "farming; agriculture"}
    ],
  },
  {
    kanji: "耗",
    keyword: "decrease",
    reading: "モウ / コウ",
    radical: "耗",
    componentHint: "classical radical 127",
    examples: [
      {word: "消耗", reading: "しょうもう", meaning: "exhaustion; consumption"},
      {word: "損耗", reading: "そんもう", meaning: "loss"},
      {word: "摩耗", reading: "まもう", meaning: "wear; abrasion"}
    ],
  },
  {
    kanji: "崇",
    keyword: "adore/respect",
    reading: "あが.める / スウ",
    radical: "崇",
    componentHint: "classical radical 46",
    examples: [
      {word: "崇拝", reading: "すうはい", meaning: "worship; adoration"},
      {word: "崇高", reading: "すうこう", meaning: "loftiness; sublimity"},
      {word: "崇める", reading: "あがめる", meaning: "to revere; to respect"}
    ],
  },
  {
    kanji: "灰",
    keyword: "ashes/puckery juice",
    reading: "はい / カイ",
    radical: "灰",
    componentHint: "classical radical 86",
    examples: [
      {word: "灰色", reading: "はいいろ", meaning: "grey; gray"},
      {word: "灰皿", reading: "はいざら", meaning: "ashtray"},
      {word: "石灰", reading: "せっかい", meaning: "lime; quicklime"}
    ],
  },
  {
    kanji: "炭",
    keyword: "charcoal/coal",
    reading: "すみ / タン",
    radical: "炭",
    componentHint: "classical radical 86",
    examples: [
      {word: "石炭", reading: "せきたん", meaning: "coal"},
      {word: "炭素", reading: "たんそ", meaning: "carbon (C)"},
      {word: "炭酸", reading: "たんさん", meaning: "carbonic acid; carbonated water"}
    ],
  },
  {
    kanji: "岸",
    keyword: "beach",
    reading: "きし / ガン",
    radical: "岸",
    componentHint: "classical radical 46",
    examples: [
      {word: "海岸", reading: "かいがん", meaning: "coast; beach"},
      {word: "河岸", reading: "かわぎし", meaning: "riverbank; riverside"},
      {word: "対岸", reading: "たいがん", meaning: "opposite shore"}
    ],
  },
  {
    kanji: "岩",
    keyword: "boulder/rock",
    reading: "いわ / ガン",
    radical: "岩",
    componentHint: "classical radical 46",
    examples: [
      {word: "岩場", reading: "いわば", meaning: "rocky area; rockface"},
      {word: "岩山", reading: "いわやま", meaning: "rocky mountain"},
      {word: "岩石", reading: "がんせき", meaning: "rock"}
    ],
  },
  {
    kanji: "崩",
    keyword: "crumble/die",
    reading: "くず.れる / -くず.れ / くず.す / ホウ",
    radical: "崩",
    componentHint: "classical radical 46",
    examples: [
      {word: "崩れる", reading: "くずれる", meaning: "to collapse; to crumble"},
      {word: "崩す", reading: "くずす", meaning: "to destroy; to demolish"},
      {word: "崩壊", reading: "ほうかい", meaning: "collapse; crumbling"}
    ],
  },
  {
    kanji: "嵐",
    keyword: "storm/tempest",
    reading: "あらし / ラン",
    radical: "嵐",
    componentHint: "classical radical 46",
    examples: [
      {word: "砂嵐", reading: "すなあらし", meaning: "sandstorm"},
      {word: "山嵐", reading: "やまあらし", meaning: "porcupine (any mammal of suborder Hystricomorpha)"},
      {word: "大嵐", reading: "おおあらし", meaning: "raging storm"}
    ],
  },
  {
    kanji: "崖",
    keyword: "cliff/bluff",
    reading: "がけ / きし / はて / ガイ / ゲ / ギ",
    radical: "崖",
    componentHint: "classical radical 46",
    examples: [
      {word: "断崖", reading: "だんがい", meaning: "palisade; cliff"},
      {word: "崖っぷち", reading: "がけっぷち", meaning: "edge (e.g. of a cliff, precipice); critical point or moment"},
      {word: "断崖絶壁", reading: "だんがいぜっぺき", meaning: "precipitous cliff; sheer precipice"}
    ],
  },
  {
    kanji: "催",
    keyword: "sponsor/hold (a meeting)",
    reading: "もよう.す / もよお.す / サイ",
    radical: "催",
    componentHint: "classical radical 9",
    examples: [
      {word: "催す", reading: "もよおす", meaning: "to hold (a meeting); to give (a dinner)"},
      {word: "催眠", reading: "さいみん", meaning: "hypnotism"},
      {word: "催促", reading: "さいそく", meaning: "pressing; demanding"}
    ],
  },
  {
    kanji: "焦",
    keyword: "char/hurry",
    reading: "こ.げる / こ.がす / こ.がれる / あせ.る / ショウ",
    radical: "焦",
    componentHint: "classical radical 86",
    examples: [
      {word: "焦る", reading: "あせる", meaning: "to be in a hurry; to be impatient"},
      {word: "焦点", reading: "しょうてん", meaning: "focus (e.g. photographic); focal point"},
      {word: "焦燥", reading: "しょうそう", meaning: "impatience; uneasiness"}
    ],
  },
  {
    kanji: "礁",
    keyword: "reef/sunken rock",
    reading: "ショウ",
    radical: "礁",
    componentHint: "classical radical 112",
    examples: [
      {word: "暗礁", reading: "あんしょう", meaning: "reef; sunken rock"},
      {word: "岩礁", reading: "がんしょう", meaning: "reef"},
      {word: "珊瑚礁", reading: "さんごしょう", meaning: "coral reef"}
    ],
  },
  {
    kanji: "奮",
    keyword: "stirred up/be invigorated",
    reading: "ふる.う / フン",
    radical: "奮",
    componentHint: "classical radical 37",
    examples: [
      {word: "興奮", reading: "こうふん", meaning: "excitement; stimulation"},
      {word: "昂奮", reading: "こうふん", meaning: "excitement; stimulation"},
      {word: "奮闘", reading: "ふんとう", meaning: "hard struggle; strenuous effort"}
    ],
  },
  {
    kanji: "奪",
    keyword: "rob/take by force",
    reading: "うば.う / ダツ",
    radical: "奪",
    componentHint: "classical radical 37",
    examples: [
      {word: "奪う", reading: "うばう", meaning: "to snatch away; to dispossess"},
      {word: "奪い取る", reading: "うばいとる", meaning: "to plunder; to grab"},
      {word: "略奪", reading: "りゃくだつ", meaning: "pillage; plunder"}
    ],
  },
  {
    kanji: "隻",
    keyword: "vessels/counter for ships",
    reading: "セキ",
    radical: "隻",
    componentHint: "classical radical 172",
    examples: [
      {word: "一隻", reading: "いっせき", meaning: "one boat; one ship"},
      {word: "隻眼", reading: "せきがん", meaning: "eye (for pictures, etc.); one eye"},
      {word: "隻腕", reading: "せきわん", meaning: "one-armed person; one-handed person"}
    ],
  },
  {
    kanji: "獲",
    keyword: "seize/get",
    reading: "え.る / カク",
    radical: "獲",
    componentHint: "classical radical 94",
    examples: [
      {word: "獲物", reading: "えもの", meaning: "game; spoils"},
      {word: "獲得", reading: "かくとく", meaning: "acquisition; possession"},
      {word: "獲る", reading: "とる", meaning: "to take; to catch"}
    ],
  },
  {
    kanji: "穫",
    keyword: "harvest/reap",
    reading: "カク",
    radical: "穫",
    componentHint: "classical radical 115",
    examples: [
      {word: "収穫", reading: "しゅうかく", meaning: "harvest; crop"},
      {word: "穫る", reading: "とる", meaning: "to harvest (a crop)"},
      {word: "収穫期", reading: "しゅうかくき", meaning: "harvest time"}
    ],
  },
  {
    kanji: "護",
    keyword: "safeguard/protect",
    reading: "まも.る / ゴ",
    radical: "護",
    componentHint: "classical radical 149",
    examples: [
      {word: "弁護士", reading: "べんごし", meaning: "lawyer; attorney"},
      {word: "看護婦", reading: "かんごふ", meaning: "(female) nurse"},
      {word: "保護", reading: "ほご", meaning: "care; protection"}
    ],
  },
  {
    kanji: "譲",
    keyword: "defer/turnover",
    reading: "ゆず.る / ジョウ",
    radical: "譲",
    componentHint: "classical radical 149",
    examples: [
      {word: "譲る", reading: "ゆずる", meaning: "to turn over; to assign"},
      {word: "譲歩", reading: "じょうほ", meaning: "concession; conciliation"},
      {word: "譲渡", reading: "じょうと", meaning: "transfer; assignment"}
    ],
  },
  {
    kanji: "嬢",
    keyword: "lass/girl",
    reading: "むすめ / ジョウ",
    radical: "嬢",
    componentHint: "classical radical 38",
    examples: [
      {word: "お嬢さん", reading: "おじょうさん", meaning: "daughter; young lady"},
      {word: "お嬢様", reading: "おじょうさま", meaning: "(term of respect for) another's daughter; daughter of a high-class family"},
      {word: "令嬢", reading: "れいじょう", meaning: "(your) daughter; young woman"}
    ],
  },
  {
    kanji: "醸",
    keyword: "brew/cause",
    reading: "かも.す / ジョウ",
    radical: "醸",
    componentHint: "classical radical 164",
    examples: [
      {word: "醸造", reading: "じょうぞう", meaning: "brewing; distillation"},
      {word: "醸し出す", reading: "かもしだす", meaning: "to engender; to bring about"},
      {word: "醸す", reading: "かもす", meaning: "to brew (sake, etc.); to cause"}
    ],
  },
  {
    kanji: "壌",
    keyword: "lot/earth",
    reading: "つち / ジョウ",
    radical: "壌",
    componentHint: "classical radical 32",
    examples: [
      {word: "土壌", reading: "どじょう", meaning: "soil; breeding ground"},
      {word: "平壌", reading: "ピョンヤン", meaning: "Pyongyang"},
      {word: "天壌", reading: "てんじょう", meaning: "heaven and earth"}
    ],
  },
  {
    kanji: "壊",
    keyword: "demolition/break",
    reading: "こわ.す / こわ.れる / やぶ.る / カイ / エ",
    radical: "壊",
    componentHint: "classical radical 32",
    examples: [
      {word: "破壊", reading: "はかい", meaning: "destruction; disruption"},
      {word: "壊れる", reading: "こわれる", meaning: "to be broken; to break"},
      {word: "壊す", reading: "こわす", meaning: "to break; to destroy"}
    ],
  },
  {
    kanji: "懐",
    keyword: "pocket/feelings",
    reading: "ふところ / なつ.かしい / なつ.かしむ / なつ.く / カイ / エ",
    radical: "懐",
    componentHint: "classical radical 61",
    examples: [
      {word: "懐中", reading: "かいちゅう", meaning: "one's pocket"},
      {word: "懐かしい", reading: "なつかしい", meaning: "dear; desired"},
      {word: "懐しい", reading: "ゆかしい", meaning: "admirable; charming"}
    ],
  },
  {
    kanji: "徳",
    keyword: "benevolence/virtue",
    reading: "トク",
    radical: "徳",
    componentHint: "classical radical 60",
    examples: [
      {word: "道徳", reading: "どうとく", meaning: "morals"},
      {word: "徳利", reading: "とっくり", meaning: "sake bottle; tall and slender bottle with a narrow mouth made from ceramic, metal or glass that can be used for sake, shoyu or rice vinegar"},
      {word: "美徳", reading: "びとく", meaning: "virtue"}
    ],
  },
  {
    kanji: "聴",
    keyword: "listen/headstrong",
    reading: "き.く / ゆる.す / チョウ / テイ",
    radical: "聴",
    componentHint: "classical radical 128",
    examples: [
      {word: "聴く", reading: "きく", meaning: "to hear; to listen (e.g. to music)"},
      {word: "聴取", reading: "ちょうしゅ", meaning: "listening; hearing"},
      {word: "聴衆", reading: "ちょうしゅう", meaning: "audience; attendance"}
    ],
  },
  {
    kanji: "恥",
    keyword: "shame/dishonor",
    reading: "は.じる / はじ / は.じらう / は.ずかしい / チ",
    radical: "恥",
    componentHint: "classical radical 61",
    examples: [
      {word: "恥ずかしい", reading: "はずかしい", meaning: "shy; ashamed"},
      {word: "恥じる", reading: "はじる", meaning: "to feel ashamed"},
      {word: "恥辱", reading: "ちじょく", meaning: "disgrace; shame"}
    ],
  },
  {
    kanji: "羞",
    keyword: "feel ashamed",
    reading: "はじ.る / すすめ.る / は.ずかしい / シュウ",
    radical: "羞",
    componentHint: "classical radical 123",
    examples: [
      {word: "羞恥", reading: "しゅうち", meaning: "shyness; bashfulness"},
      {word: "羞恥心", reading: "しゅうちしん", meaning: "shyness; shame"},
      {word: "含羞", reading: "がんしゅう", meaning: "shyness"}
    ],
  },
  {
    kanji: "爵",
    keyword: "baron/peerage",
    reading: "シャク",
    radical: "爵",
    componentHint: "classical radical 87",
    examples: [
      {word: "伯爵", reading: "はくしゃく", meaning: "count; earl"},
      {word: "公爵", reading: "こうしゃく", meaning: "prince; duke"},
      {word: "男爵", reading: "だんしゃく", meaning: "baron; Irish cobbler (variety of potato)"}
    ],
  },
  {
    kanji: "侯",
    keyword: "marquis/lord",
    reading: "コウ",
    radical: "侯",
    componentHint: "classical radical 9",
    examples: [
      {word: "侯爵", reading: "こうしゃく", meaning: "marquis; marquess"},
      {word: "諸侯", reading: "しょこう", meaning: "princes; lords"},
      {word: "王侯", reading: "おうこう", meaning: "king and princes; noble rank"}
    ],
  },
  {
    kanji: "喉",
    keyword: "throat/voice",
    reading: "のど / コウ",
    radical: "喉",
    componentHint: "classical radical 30",
    examples: [
      {word: "咽喉", reading: "いんこう", meaning: "throat"},
      {word: "喉元", reading: "のどもと", meaning: "throat"},
      {word: "喉笛", reading: "のどぶえ", meaning: "windpipe"}
    ],
  },
  {
    kanji: "候",
    keyword: "climate/season",
    reading: "そうろう / コウ",
    radical: "候",
    componentHint: "classical radical 9",
    examples: [
      {word: "候補", reading: "こうほ", meaning: "candidate; contender"},
      {word: "天候", reading: "てんこう", meaning: "weather"},
      {word: "気候", reading: "きこう", meaning: "climate"}
    ],
  },
  {
    kanji: "修",
    keyword: "discipline/conduct oneself well",
    reading: "おさ.める / おさ.まる / シュウ / シュ",
    radical: "修",
    componentHint: "classical radical 9",
    examples: [
      {word: "修理", reading: "しゅうり", meaning: "repairing; mending"},
      {word: "修行", reading: "しゅぎょう", meaning: "ascetic practices; training"},
      {word: "修道", reading: "しゅうどう", meaning: "learning; studying the fine arts"}
    ],
  },
  {
    kanji: "悠",
    keyword: "permanence/distant",
    reading: "ユウ",
    radical: "悠",
    componentHint: "classical radical 61",
    examples: [
      {word: "悠々", reading: "ゆうゆう", meaning: "quiet; calm"},
      {word: "悠長", reading: "ゆうちょう", meaning: "leisurely; slow"},
      {word: "悠久", reading: "ゆうきゅう", meaning: "eternity; perpetuity"}
    ],
  },
  {
    kanji: "是",
    keyword: "just so/this",
    reading: "これ / この / ここ / ゼ / シ",
    radical: "是",
    componentHint: "classical radical 72",
    examples: [
      {word: "是非", reading: "ぜひ", meaning: "certainly; without fail"},
      {word: "是非とも", reading: "ぜひとも", meaning: "by all means (with sense of not taking \"no\" for an answer)"},
      {word: "是認", reading: "ぜにん", meaning: "approval"}
    ],
  },
  {
    kanji: "提",
    keyword: "propose/take along",
    reading: "さ.げる / テイ / チョウ / ダイ",
    radical: "提",
    componentHint: "classical radical 64",
    examples: [
      {word: "提案", reading: "ていあん", meaning: "proposal; proposition"},
      {word: "提供", reading: "ていきょう", meaning: "offer; tender"},
      {word: "提出", reading: "ていしゅつ", meaning: "to present; to submit (e.g. a report or a thesis)"}
    ],
  },
  {
    kanji: "堤",
    keyword: "dike/bank",
    reading: "つつみ / テイ",
    radical: "堤",
    componentHint: "classical radical 32",
    examples: [
      {word: "堤防", reading: "ていぼう", meaning: "bank; weir"},
      {word: "防波堤", reading: "ぼうはてい", meaning: "breakwater; mole"},
      {word: "突堤", reading: "とってい", meaning: "breakwater"}
    ],
  },
  {
    kanji: "題",
    keyword: "topic/subject",
    reading: "ダイ",
    radical: "題",
    componentHint: "classical radical 181",
    examples: [
      {word: "問題", reading: "もんだい", meaning: "question (e.g. on a test); problem"},
      {word: "話題", reading: "わだい", meaning: "topic; subject"},
      {word: "放題", reading: "ほうだい", meaning: "as much as you would like to; as much as one likes"}
    ],
  },
  {
    kanji: "匙",
    keyword: "spoon",
    reading: "さじ / シ",
    radical: "匙",
    componentHint: "classical radical 72",
    examples: [
      {word: "匙加減", reading: "さじかげん", meaning: "prescription; consideration"},
      {word: "茶匙", reading: "ちゃさじ", meaning: "teaspoon"},
      {word: "小匙", reading: "こさじ", meaning: "teaspoon"}
    ],
  },
  {
    kanji: "冒",
    keyword: "risk/face",
    reading: "おか.す / ボウ",
    radical: "冒",
    componentHint: "classical radical 109",
    examples: [
      {word: "冒険", reading: "ぼうけん", meaning: "risk; venture"},
      {word: "冒す", reading: "おかす", meaning: "to brave; to risk"},
      {word: "冒頭", reading: "ぼうとう", meaning: "beginning; start"}
    ],
  },
  {
    kanji: "昌",
    keyword: "prosperous/bright",
    reading: "さかん / ショウ",
    radical: "昌",
    componentHint: "classical radical 72",
    examples: [
      {word: "繁昌", reading: "はんじょう", meaning: "prosperity; flourishing"},
      {word: "昌平", reading: "しょうへい", meaning: "peace; tranquility"},
      {word: "隆昌", reading: "りゅうしょう", meaning: "prosperity"}
    ],
  },
  {
    kanji: "唱",
    keyword: "chant/recite",
    reading: "とな.える / ショウ",
    radical: "唱",
    componentHint: "classical radical 30",
    examples: [
      {word: "唱える", reading: "となえる", meaning: "to recite; to chant"},
      {word: "合唱", reading: "がっしょう", meaning: "chorus; singing in a chorus"},
      {word: "詠唱", reading: "えいしょう", meaning: "aria; singing"}
    ],
  },
  {
    kanji: "晶",
    keyword: "sparkle/clear",
    reading: "ショウ",
    radical: "晶",
    componentHint: "classical radical 72",
    examples: [
      {word: "水晶", reading: "すいしょう", meaning: "crystal"},
      {word: "結晶", reading: "けっしょう", meaning: "crystal; crystallization"},
      {word: "液晶", reading: "えきしょう", meaning: "liquid crystal"}
    ],
  },
  {
    kanji: "帽",
    keyword: "cap/headgear",
    reading: "ずきん / おお.う / ボウ / モウ",
    radical: "帽",
    componentHint: "classical radical 50",
    examples: [
      {word: "帽子", reading: "ぼうし", meaning: "hat; cap"},
      {word: "烏帽子", reading: "えぼし", meaning: "black-lacquered headgear (made of silk, cloth or paper) originally worn by court nobles in ancient Japan, and afterwards spreading to the common people"},
      {word: "制帽", reading: "せいぼう", meaning: "regulation cap; school cap"}
    ],
  },
  {
    kanji: "棟",
    keyword: "ridgepole/ridge",
    reading: "むね / むな- / トウ",
    radical: "棟",
    componentHint: "classical radical 75",
    examples: [
      {word: "病棟", reading: "びょうとう", meaning: "(hospital) ward"},
      {word: "棟梁", reading: "とうりょう", meaning: "chief support; pillar (e.g. of nation)"},
      {word: "別棟", reading: "べつむね", meaning: "separate building; outbuilding"}
    ],
  },
  {
    kanji: "凍",
    keyword: "frozen/congeal",
    reading: "こお.る / こご.える / こご.る / い.てる / トウ",
    radical: "凍",
    componentHint: "classical radical 15",
    examples: [
      {word: "凍りつく", reading: "こおりつく", meaning: "to freeze to; to be frozen to"},
      {word: "凍る", reading: "こおる", meaning: "to freeze; to be frozen over"},
      {word: "凍える", reading: "こごえる", meaning: "to freeze; to be chilled"}
    ],
  },
  {
    kanji: "氷",
    keyword: "icicle/ice",
    reading: "こおり / ひ / こお.る / ヒョウ",
    radical: "氷",
    componentHint: "classical radical 85",
    examples: [
      {word: "氷河", reading: "ひょうが", meaning: "glacier"},
      {word: "氷室", reading: "ひむろ", meaning: "ice house; ice room"},
      {word: "氷山", reading: "ひょうざん", meaning: "iceberg"}
    ],
  },
  {
    kanji: "永",
    keyword: "eternity/long",
    reading: "なが.い / エイ",
    radical: "永",
    componentHint: "classical radical 85",
    examples: [
      {word: "永遠", reading: "えいえん", meaning: "eternity; perpetuity"},
      {word: "永久", reading: "えいきゅう", meaning: "eternity; perpetuity"},
      {word: "永い", reading: "ながい", meaning: "long (distance); long (time)"}
    ],
  },
  {
    kanji: "泳",
    keyword: "swim",
    reading: "およ.ぐ / エイ",
    radical: "泳",
    componentHint: "classical radical 85",
    examples: [
      {word: "泳ぐ", reading: "およぐ", meaning: "to swim"},
      {word: "水泳", reading: "すいえい", meaning: "swimming"},
      {word: "泳がせる", reading: "およがせる", meaning: "to let someone swim; to let someone go free"}
    ],
  },
  {
    kanji: "詠",
    keyword: "recitation/poem",
    reading: "よ.む / うた.う / エイ",
    radical: "詠",
    componentHint: "classical radical 149",
    examples: [
      {word: "詠む", reading: "よむ", meaning: "to compose (e.g. a Japanese poem); to write"},
      {word: "詠唱", reading: "えいしょう", meaning: "aria; singing"},
      {word: "詠じる", reading: "えいじる", meaning: "to compose (e.g. poem); to recite"}
    ],
  },
  {
    kanji: "札",
    keyword: "tag/paper money",
    reading: "ふだ / サツ",
    radical: "札",
    componentHint: "classical radical 75",
    examples: [
      {word: "札幌", reading: "さっぽろ", meaning: "Sapporo (city)"},
      {word: "改札", reading: "かいさつ", meaning: "examination of tickets; ticket gate"},
      {word: "札束", reading: "さつたば", meaning: "roll of banknotes"}
    ],
  },
  {
    kanji: "枚",
    keyword: "sheet of.../counter for flat thin objects or sheets",
    reading: "マイ / バイ",
    radical: "枚",
    componentHint: "classical radical 75",
    examples: [
      {word: "二枚目", reading: "にまいめ", meaning: "handsome man; actor in a love scene"},
      {word: "三枚", reading: "さんまい", meaning: "three flat objects (e.g. tickets, pieces of cloth, etc.); filleting (a fish)"},
      {word: "枚数", reading: "まいすう", meaning: "the number of flat things; win-loss difference which influences the ranking of wrestlers"}
    ],
  },
  {
    kanji: "杯",
    keyword: "counter for cupfuls/wine glass",
    reading: "さかずき / ハイ",
    radical: "杯",
    componentHint: "classical radical 75",
    examples: [
      {word: "一杯", reading: "いっぱい", meaning: "amount necessary to fill a container (e.g. cupful, spoonful, etc.); drink (usu. alcoholic)"},
      {word: "精一杯", reading: "せいいっぱい", meaning: "the best one can do; one's best effort"},
      {word: "乾杯", reading: "かんぱい", meaning: "toast; drink (in celebration or in honor of something)"}
    ],
  },
  {
    kanji: "析",
    keyword: "chop/divide",
    reading: "セキ",
    radical: "析",
    componentHint: "classical radical 75",
    examples: [
      {word: "分析", reading: "ぶんせき", meaning: "analysis"},
      {word: "解析", reading: "かいせき", meaning: "analysis; analytical study"},
      {word: "透析", reading: "とうせき", meaning: "dialysis"}
    ],
  },
  {
    kanji: "折",
    keyword: "fold/break",
    reading: "お.る / おり / お.り / -お.り / セツ / シャク",
    radical: "折",
    componentHint: "classical radical 64",
    examples: [
      {word: "折る", reading: "おる", meaning: "to break; to fracture"},
      {word: "折れる", reading: "おれる", meaning: "to break; to be broken"},
      {word: "時折", reading: "ときおり", meaning: "sometimes"}
    ],
  },
  {
    kanji: "挫",
    keyword: "crush/break",
    reading: "くじ.く / くじ.ける / ザ / サ",
    radical: "挫",
    componentHint: "classical radical 64",
    examples: [
      {word: "挫折", reading: "ざせつ", meaning: "setback; failure (e.g. plans, business)"},
      {word: "挫く", reading: "くじく", meaning: "to sprain; to twist"},
      {word: "捻挫", reading: "ねんざ", meaning: "sprain"}
    ],
  },
  {
    kanji: "捻",
    keyword: "twirl/twist",
    reading: "ね.じる / ねじ.る / ひね.くる / ひね.る / ネン / ジョウ",
    radical: "捻",
    componentHint: "classical radical 64",
    examples: [
      {word: "捻る", reading: "ひねる", meaning: "to twist; to wrench"},
      {word: "捻挫", reading: "ねんざ", meaning: "sprain"},
      {word: "捻じる", reading: "ねじる", meaning: "to screw; to twist"}
    ],
  },
  {
    kanji: "誓",
    keyword: "vow/swear",
    reading: "ちか.う / セイ",
    radical: "誓",
    componentHint: "classical radical 149",
    examples: [
      {word: "誓う", reading: "ちかう", meaning: "to swear; to vow"},
      {word: "誓約", reading: "せいやく", meaning: "written vow; pledge"},
      {word: "宣誓", reading: "せんせい", meaning: "oath; abjuration"}
    ],
  },
  {
    kanji: "逝",
    keyword: "departed/die",
    reading: "ゆ.く / い.く / セイ",
    radical: "逝",
    componentHint: "classical radical 162",
    examples: [
      {word: "逝く", reading: "いく", meaning: "to go; to move (in a direction or towards a specific location)"},
      {word: "逝去", reading: "せいきょ", meaning: "death"},
      {word: "急逝", reading: "きゅうせい", meaning: "sudden death"}
    ],
  },
  {
    kanji: "哲",
    keyword: "philosophy/clear",
    reading: "さとい / あき.らか / テツ",
    radical: "哲",
    componentHint: "classical radical 30",
    examples: [
      {word: "哲学", reading: "てつがく", meaning: "philosophy"},
      {word: "変哲", reading: "へんてつ", meaning: "unusual"},
      {word: "哲人", reading: "てつじん", meaning: "wise man; philosopher"}
    ],
  },
  {
    kanji: "斬",
    keyword: "beheading/kill",
    reading: "き.る / ザン / サン / セン",
    radical: "斬",
    componentHint: "classical radical 69",
    examples: [
      {word: "斬る", reading: "きる", meaning: "to kill (a human) using a blade (sword, machete, knife, etc.); to slice (off)"},
      {word: "斬新", reading: "ざんしん", meaning: "novel; original"},
      {word: "斬殺", reading: "ざんさつ", meaning: "putting to the sword"}
    ],
  },
  {
    kanji: "漸",
    keyword: "steadily/gradually advancing",
    reading: "ようや.く / やや / ようよ.う / すす.む / ゼン",
    radical: "漸",
    componentHint: "classical radical 85",
    examples: [
      {word: "漸く", reading: "ようやく", meaning: "finally; at last"},
      {word: "漸次", reading: "ぜんじ", meaning: "gradually; slowly"},
      {word: "漸う", reading: "ようよう", meaning: "finally; barely"}
    ],
  },
  {
    kanji: "暫",
    keyword: "temporarily/a while",
    reading: "しばら.く / ザン",
    radical: "暫",
    componentHint: "classical radical 72",
    examples: [
      {word: "暫く", reading: "しばらく", meaning: "little while; short while"},
      {word: "暫し", reading: "しばし", meaning: "for a short while; for a brief period"},
      {word: "暫時", reading: "ざんじ", meaning: "short while"}
    ],
  },
  {
    kanji: "斥",
    keyword: "reject/retreat",
    reading: "しりぞ.ける / セキ",
    radical: "斥",
    componentHint: "classical radical 69",
    examples: [
      {word: "斥候", reading: "せっこう", meaning: "scout; patrol"},
      {word: "排斥", reading: "はいせき", meaning: "rejection; expulsion"},
      {word: "斥ける", reading: "しりぞける", meaning: "to repel; to drive away"}
    ],
  },
  {
    kanji: "訴",
    keyword: "accusation/sue",
    reading: "うった.える / ソ",
    radical: "訴",
    componentHint: "classical radical 149",
    examples: [
      {word: "訴える", reading: "うったえる", meaning: "to raise; to bring to (someone's attention)"},
      {word: "訴訟", reading: "そしょう", meaning: "litigation; lawsuit"},
      {word: "訴え", reading: "うったえ", meaning: "lawsuit; complaint"}
    ],
  },
  {
    kanji: "訟",
    keyword: "sue/accuse",
    reading: "ショウ",
    radical: "訟",
    componentHint: "classical radical 149",
    examples: [
      {word: "訴訟", reading: "そしょう", meaning: "litigation; lawsuit"},
      {word: "争訟", reading: "そうしょう", meaning: "dispute by legal action; contentious"},
      {word: "壁訴訟", reading: "かべそしょう", meaning: "grumbling or mumbling to oneself"}
    ],
  },
  {
    kanji: "究",
    keyword: "research/study",
    reading: "きわ.める / キュウ / ク",
    radical: "究",
    componentHint: "classical radical 116",
    examples: [
      {word: "研究", reading: "けんきゅう", meaning: "study; research"},
      {word: "研究所", reading: "けんきゅうじょ", meaning: "research establishment; research institute"},
      {word: "究極", reading: "きゅうきょく", meaning: "ultimate; extreme"}
    ],
  },
  {
    kanji: "窮",
    keyword: "hard up/destitute",
    reading: "きわ.める / きわ.まる / きわ.まり / きわ.み / キュウ / キョウ",
    radical: "窮",
    componentHint: "classical radical 116",
    examples: [
      {word: "窮屈", reading: "きゅうくつ", meaning: "narrow; tight"},
      {word: "窮地", reading: "きゅうち", meaning: "dilemma; predicament"},
      {word: "困窮", reading: "こんきゅう", meaning: "poverty; distress"}
    ],
  },
  {
    kanji: "極",
    keyword: "poles/settlement",
    reading: "きわ.める / きわ.まる / きわ.まり / きわ.み / キョク / ゴク",
    radical: "極",
    componentHint: "classical radical 75",
    examples: [
      {word: "極めて", reading: "きわめて", meaning: "exceedingly; extremely"},
      {word: "積極", reading: "せっきょく", meaning: "positive; progressive"},
      {word: "極端", reading: "きょくたん", meaning: "extreme; extremity"}
    ],
  },
  {
    kanji: "函",
    keyword: "box (archaic)",
    reading: "はこ / い.れる / カン",
    radical: "函",
    componentHint: "classical radical 17",
    examples: [
      {word: "投函", reading: "とうかん", meaning: "mailing; posting"},
      {word: "函数", reading: "かんすう", meaning: "function (e.g. math, programming, programing)"},
      {word: "潜函", reading: "せんかん", meaning: "caisson"}
    ],
  },
  {
    kanji: "探",
    keyword: "grope/search",
    reading: "さぐ.る / さが.す / タン",
    radical: "探",
    componentHint: "classical radical 64",
    examples: [
      {word: "探す", reading: "さがす", meaning: "to search (for something desired, needed); to look for"},
      {word: "探偵", reading: "たんてい", meaning: "detective; sleuth"},
      {word: "探る", reading: "さぐる", meaning: "to feel around for; to fumble for"}
    ],
  },
  {
    kanji: "深",
    keyword: "deep/heighten",
    reading: "ふか.い / -ぶか.い / ふか.まる / ふか.める / シン",
    radical: "深",
    componentHint: "classical radical 85",
    examples: [
      {word: "深い", reading: "ふかい", meaning: "deep; profound"},
      {word: "深夜", reading: "しんや", meaning: "late at night"},
      {word: "深刻", reading: "しんこく", meaning: "serious; severe"}
    ],
  },
  {
    kanji: "慄",
    keyword: "fear",
    reading: "ふる.える / おそ.れる / おのの.く / リツ",
    radical: "慄",
    componentHint: "classical radical 61",
    examples: [
      {word: "戦慄", reading: "せんりつ", meaning: "shudder; shiver"},
      {word: "慄然", reading: "りつぜん", meaning: "terrified; horrified"},
      {word: "戦慄く", reading: "わななく", meaning: "to tremble; to shiver"}
    ],
  },
  {
    kanji: "惧",
    keyword: "fear/be afraid of",
    reading: "おそ.れる / ク",
    radical: "惧",
    componentHint: "classical radical 61",
    examples: [
      {word: "危惧", reading: "きぐ", meaning: "apprehensions; misgivings"},
      {word: "疑惧", reading: "ぎく", meaning: "apprehension; uneasiness"},
      {word: "惧れる", reading: "おそれる", meaning: "to fear; to be afraid of"}
    ],
  },
  {
    kanji: "慎",
    keyword: "humility/be careful",
    reading: "つつし.む / つつし / つつし.み / シン",
    radical: "慎",
    componentHint: "classical radical 61",
    examples: [
      {word: "慎重", reading: "しんちょう", meaning: "careful; cautious"},
      {word: "慎む", reading: "つつしむ", meaning: "to be careful; to be discreet"},
      {word: "謹慎", reading: "きんしん", meaning: "penitence; discipline"}
    ],
  },
  {
    kanji: "鎮",
    keyword: "tranquilize/ancient peace-preservation centers",
    reading: "しず.める / しず.まる / おさえ / チン",
    radical: "鎮",
    componentHint: "classical radical 167",
    examples: [
      {word: "鎮める", reading: "しずめる", meaning: "to appease; to suppress"},
      {word: "鎮まる", reading: "しずまる", meaning: "to quieten down; to calm down"},
      {word: "鎮座", reading: "ちんざ", meaning: "enshrinement"}
    ],
  },
  {
    kanji: "塡",
    keyword: "fill in/fill up",
    reading: "はま.る / うず.める / は.める / ふさ.ぐ / テン / チン",
    radical: "塡",
    componentHint: "classical radical 32",
    examples: [
      {word: "装塡", reading: "そうてん", meaning: "charge; load"},
      {word: "補塡", reading: "ほてん", meaning: "compensating; making up for"},
      {word: "塡補", reading: "てんぽ", meaning: "supplementation; replenishment"}
    ],
  },
  {
    kanji: "婚",
    keyword: "marriage",
    reading: "コン",
    radical: "婚",
    componentHint: "classical radical 38",
    examples: [
      {word: "結婚", reading: "けっこん", meaning: "marriage"},
      {word: "離婚", reading: "りこん", meaning: "divorce"},
      {word: "婚約", reading: "こんやく", meaning: "engagement; betrothal"}
    ],
  },
  {
    kanji: "囚",
    keyword: "captured/criminal",
    reading: "とら.われる / シュウ",
    radical: "囚",
    componentHint: "classical radical 31",
    examples: [
      {word: "囚人", reading: "しゅうじん", meaning: "prisoner"},
      {word: "囚われる", reading: "とらわれる", meaning: "to be caught; to be captured"},
      {word: "死刑囚", reading: "しけいしゅう", meaning: "criminal condemned to death; convict on death row"}
    ],
  },
  {
    kanji: "困",
    keyword: "quandary/become distressed",
    reading: "こま.る / コン",
    radical: "困",
    componentHint: "classical radical 31",
    examples: [
      {word: "困る", reading: "こまる", meaning: "to be troubled; to be worried"},
      {word: "困難", reading: "こんなん", meaning: "difficulty; distress"},
      {word: "困惑", reading: "こんわく", meaning: "bewilderment; perplexity"}
    ],
  },
  {
    kanji: "梱",
    keyword: "pack/tie up",
    reading: "こう.る / こうり / こり / しきみ / コン",
    radical: "梱",
    componentHint: "classical radical 75",
    examples: [
      {word: "梱包", reading: "こんぽう", meaning: "packing; crating"},
      {word: "梱る", reading: "こうる", meaning: "to pack; to box"},
      {word: "開梱", reading: "かいこん", meaning: "open (as of a pack)"}
    ],
  },
  {
    kanji: "因",
    keyword: "cause/factor",
    reading: "よ.る / ちな.む / イン",
    radical: "因",
    componentHint: "classical radical 31",
    examples: [
      {word: "原因", reading: "げんいん", meaning: "cause; origin"},
      {word: "因縁", reading: "いんねん", meaning: "fate; destiny"},
      {word: "死因", reading: "しいん", meaning: "cause of death"}
    ],
  },
  {
    kanji: "姻",
    keyword: "matrimony/marry",
    reading: "イン",
    radical: "姻",
    componentHint: "classical radical 38",
    examples: [
      {word: "婚姻", reading: "こんいん", meaning: "marriage; matrimony"},
      {word: "姻戚", reading: "いんせき", meaning: "relative by marriage; affinity"},
      {word: "姻族", reading: "いんぞく", meaning: "in-law; relative by marriage"}
    ],
  },
  {
    kanji: "咽",
    keyword: "throat/choked",
    reading: "むせ.ぶ / むせ.る / のど / の.む / イン / エン / エツ",
    radical: "咽",
    componentHint: "classical radical 30",
    examples: [
      {word: "咽喉", reading: "いんこう", meaning: "throat"},
      {word: "嗚咽", reading: "おえつ", meaning: "sobbing; weeping"},
      {word: "咽ぶ", reading: "むせぶ", meaning: "to be choked; to be stifled"}
    ],
  },
  {
    kanji: "恩",
    keyword: "grace/kindness",
    reading: "オン",
    radical: "恩",
    componentHint: "classical radical 61",
    examples: [
      {word: "恩人", reading: "おんじん", meaning: "benefactor; patron"},
      {word: "恩恵", reading: "おんけい", meaning: "grace; favor"},
      {word: "恩義", reading: "おんぎ", meaning: "obligation; favour"}
    ],
  },
  {
    kanji: "菌",
    keyword: "germ/fungus",
    reading: "キン",
    radical: "菌",
    componentHint: "classical radical 140",
    examples: [
      {word: "細菌", reading: "さいきん", meaning: "bacillus; bacterium"},
      {word: "殺菌", reading: "さっきん", meaning: "sterilization; sterilisation"},
      {word: "病原菌", reading: "びょうげんきん", meaning: "virus; germ"}
    ],
  },
  {
    kanji: "漢",
    keyword: "Sino-/China",
    reading: "カン",
    radical: "漢",
    componentHint: "classical radical 85",
    examples: [
      {word: "漢字", reading: "かんじ", meaning: "Chinese characters; kanji"},
      {word: "巨漢", reading: "きょかん", meaning: "giant"},
      {word: "痴漢", reading: "ちかん", meaning: "masher; molester"}
    ],
  },
  {
    kanji: "嘆",
    keyword: "sigh/lament",
    reading: "なげ.く / なげ.かわしい / タン",
    radical: "嘆",
    componentHint: "classical radical 30",
    examples: [
      {word: "嘆く", reading: "なげく", meaning: "to sigh; to lament"},
      {word: "感嘆", reading: "かんたん", meaning: "admiration; wonder"},
      {word: "嘆息", reading: "たんそく", meaning: "sigh; grief"}
    ],
  },
  {
    kanji: "勤",
    keyword: "diligence/become employed",
    reading: "つと.める / -づと.め / つと.まる / いそ.しむ / キン / ゴン",
    radical: "勤",
    componentHint: "classical radical 19",
    examples: [
      {word: "勤める", reading: "つとめる", meaning: "to work (for); to be employed (at)"},
      {word: "勤務", reading: "きんむ", meaning: "service; duty"},
      {word: "出勤", reading: "しゅっきん", meaning: "attendance (at work); being at work"}
    ],
  },
  {
    kanji: "謹",
    keyword: "discreet/reverently",
    reading: "つつし.む / キン",
    radical: "謹",
    componentHint: "classical radical 149",
    examples: [
      {word: "謹慎", reading: "きんしん", meaning: "penitence; discipline"},
      {word: "不謹慎", reading: "ふきんしん", meaning: "indiscretion; imprudence"},
      {word: "謹厳", reading: "きんげん", meaning: "stern; grave"}
    ],
  },
  {
    kanji: "僅",
    keyword: "a wee bit",
    reading: "わず.か / キン / ゴン",
    radical: "僅",
    componentHint: "classical radical 9",
    examples: [
      {word: "僅か", reading: "わずか", meaning: "only; merely"},
      {word: "僅少", reading: "きんしょう", meaning: "(a) few; (a) little"},
      {word: "僅差", reading: "きんさ", meaning: "narrow margin (esp. victory or defeat); slim margin"}
    ],
  },
  {
    kanji: "索",
    keyword: "cord/rope",
    reading: "サク",
    radical: "索",
    componentHint: "classical radical 120",
    examples: [
      {word: "捜索", reading: "そうさく", meaning: "search (esp. for someone or something missing); investigation"},
      {word: "探索", reading: "たんさく", meaning: "search; lookup"},
      {word: "詮索", reading: "せんさく", meaning: "inquiry into; enquiry into"}
    ],
  },
  {
    kanji: "牽",
    keyword: "pull/tug",
    reading: "ひ.く / ケン",
    radical: "牽",
    componentHint: "classical radical 8",
    examples: [
      {word: "牽制", reading: "けんせい", meaning: "check; restraint"},
      {word: "牽引", reading: "けんいん", meaning: "traction; towing"},
      {word: "牽く", reading: "ひく", meaning: "to pull; to draw (attention, etc.)"}
    ],
  },
  {
    kanji: "牢",
    keyword: "prison/jail",
    reading: "かた.い / ひとや / ロウ",
    radical: "牢",
    componentHint: "classical radical 40",
    examples: [
      {word: "牢獄", reading: "ろうごく", meaning: "prison; jail"},
      {word: "牢屋", reading: "ろうや", meaning: "jail; gaol"},
      {word: "牢番", reading: "ろうばん", meaning: "prison guard; jailer"}
    ],
  },
  {
    kanji: "啓",
    keyword: "disclose/open",
    reading: "ひら.く / さと.す / ケイ",
    radical: "啓",
    componentHint: "classical radical 30",
    examples: [
      {word: "啓示", reading: "けいじ", meaning: "revelation (i.e. divine revelation)"},
      {word: "啓蒙", reading: "けいもう", meaning: "enlightenment; instruction"},
      {word: "天啓", reading: "てんけい", meaning: "(divine) revelation; divine oracle"}
    ],
  },
  {
    kanji: "庶",
    keyword: "commoner/all",
    reading: "ショ",
    radical: "庶",
    componentHint: "classical radical 53",
    examples: [
      {word: "庶民", reading: "しょみん", meaning: "masses; common people"},
      {word: "庶務", reading: "しょむ", meaning: "general affairs"},
      {word: "庶子", reading: "しょし", meaning: "illegitimate child"}
    ],
  },
  {
    kanji: "遮",
    keyword: "intercept/interrupt",
    reading: "さえぎ.る / シャ",
    radical: "遮",
    componentHint: "classical radical 162",
    examples: [
      {word: "遮る", reading: "さえぎる", meaning: "to interrupt; to obstruct (e.g. a view, someone's way)"},
      {word: "遮断", reading: "しゃだん", meaning: "isolation; cut off"},
      {word: "遮蔽", reading: "しゃへい", meaning: "screen; shielding"}
    ],
  },
  {
    kanji: "燕",
    keyword: "swallow (bird)",
    reading: "つばめ / つばくら / つばくろ / エン",
    radical: "燕",
    componentHint: "classical radical 86",
    examples: [
      {word: "燕尾服", reading: "えんびふく", meaning: "tailcoat"},
      {word: "飛燕", reading: "ひえん", meaning: "swallow in flight"},
      {word: "燕麦", reading: "えんばく", meaning: "wild oat (Avena fatua); wild oats"}
    ],
  },
  {
    kanji: "雀",
    keyword: "sparrow",
    reading: "すずめ / ジャク / ジャン / サク",
    radical: "雀",
    componentHint: "classical radical 172",
    examples: [
      {word: "麻雀", reading: "マージャン", meaning: "mahjong; mah-jongg"},
      {word: "孔雀", reading: "くじゃく", meaning: "peafowl (incl. the male peacock, female peahen, and young peachick)"},
      {word: "朱雀", reading: "すざく", meaning: "Vermilion Bird (god said to rule over the southern heavens); seven mansions (Chinese constellations) of the southern heavens"}
    ],
  },
  {
    kanji: "劣",
    keyword: "inferiority/be inferior to",
    reading: "おと.る / レツ",
    radical: "劣",
    componentHint: "classical radical 19",
    examples: [
      {word: "劣る", reading: "おとる", meaning: "to be inferior to; to be less good at"},
      {word: "卑劣", reading: "ひれつ", meaning: "mean; foul play"},
      {word: "劣等", reading: "れっとう", meaning: "inferiority; low grade"}
    ],
  },
  {
    kanji: "抄",
    keyword: "extract/selection",
    reading: "ショウ",
    radical: "抄",
    componentHint: "classical radical 64",
    examples: [
      {word: "抄本", reading: "しょうほん", meaning: "excerpt; abridgment"},
      {word: "抄録", reading: "しょうろく", meaning: "quotation; abstract"},
      {word: "抄訳", reading: "しょうやく", meaning: "abridged translation"}
    ],
  },
  {
    kanji: "秒",
    keyword: "second (1/60 minute)",
    reading: "ビョウ",
    radical: "秒",
    componentHint: "classical radical 115",
    examples: [
      {word: "秒速", reading: "びょうそく", meaning: "per second"},
      {word: "毎秒", reading: "まいびょう", meaning: "every second"},
      {word: "秒針", reading: "びょうしん", meaning: "second hand (of clock)"}
    ],
  },
  {
    kanji: "妙",
    keyword: "exquisite/strange",
    reading: "たえ / ミョウ / ビョウ",
    radical: "妙",
    componentHint: "classical radical 38",
    examples: [
      {word: "奇妙", reading: "きみょう", meaning: "strange; queer"},
      {word: "微妙", reading: "びみょう", meaning: "delicate; subtle"},
      {word: "巧妙", reading: "こうみょう", meaning: "ingenious; skillful"}
    ],
  },
  {
    kanji: "沙",
    keyword: "sand",
    reading: "すな / よなげる / サ / シャ",
    radical: "沙",
    componentHint: "classical radical 85",
    examples: [
      {word: "沙汰", reading: "さた", meaning: "affair; state"},
      {word: "沙子", reading: "いさご", meaning: "sand; grit"},
      {word: "沙漠", reading: "さばく", meaning: "desert"}
    ],
  },
  {
    kanji: "汰",
    keyword: "washing/sieving",
    reading: "おご.る / にご.る / よな.げる / タ / タイ",
    radical: "汰",
    componentHint: "classical radical 85",
    examples: [
      {word: "沙汰", reading: "さた", meaning: "affair; state"},
      {word: "音沙汰", reading: "おとさた", meaning: "news; letter"},
      {word: "表沙汰", reading: "おもてざた", meaning: "going public; creating publicity"}
    ],
  },
  {
    kanji: "煎",
    keyword: "broil/parch",
    reading: "せん.じる / い.る / に.る / セン",
    radical: "煎",
    componentHint: "classical radical 12",
    examples: [
      {word: "煎餅", reading: "せんべい", meaning: "rice cracker; Japanese cracker"},
      {word: "煎じる", reading: "せんじる", meaning: "to boil; to decoct"},
      {word: "煎茶", reading: "せんちゃ", meaning: "green tea; green leaf tea"}
    ],
  },
  {
    kanji: "炒",
    keyword: "broil/parch",
    reading: "い.る / いた.める / ソウ / ショウ",
    radical: "炒",
    componentHint: "classical radical 86",
    examples: [
      {word: "炒める", reading: "いためる", meaning: "to cook; to fry"},
      {word: "炒る", reading: "いる", meaning: "to parch; to fry"},
      {word: "炒飯", reading: "チャーハン", meaning: "Chinese-style fried rice"}
    ],
  },
  {
    kanji: "炊",
    keyword: "cook/boil",
    reading: "た.く / -だ.き / スイ",
    radical: "炊",
    componentHint: "classical radical 86",
    examples: [
      {word: "炊事", reading: "すいじ", meaning: "cooking; culinary arts"},
      {word: "炊く", reading: "たく", meaning: "to cook (grains, e.g. rice); to boil"},
      {word: "雑炊", reading: "ぞうすい", meaning: "rice gruel containing vegetables, fish, etc., and seasoned with miso or soy sauce"}
    ],
  },
  {
    kanji: "焚",
    keyword: "burn/kindle",
    reading: "た.く / や.く / やきがり / フン / ホン / ハン",
    radical: "焚",
    componentHint: "classical radical 86",
    examples: [
      {word: "焚く", reading: "やく", meaning: "to burn; to roast"},
      {word: "焚火", reading: "たきび", meaning: "open-air fire (e.g. for garden refuse); bonfire"},
      {word: "焚き火", reading: "たきび", meaning: "open-air fire (e.g. for garden refuse); bonfire"}
    ],
  },
  {
    kanji: "薪",
    keyword: "fuel/firewood",
    reading: "たきぎ / まき / シン",
    radical: "薪",
    componentHint: "classical radical 140",
    examples: [
      {word: "薪割り", reading: "まきわり", meaning: "hatchet; axe"},
      {word: "臥薪嘗胆", reading: "がしんしょうたん", meaning: "going through thick and thin to attain one's objective; enduring unspeakable hardships for the sake of vengeance"},
      {word: "薪炭", reading: "しんたん", meaning: "wood and charcoal; fuel"}
    ],
  },
  {
    kanji: "乃",
    keyword: "from/possessive particle",
    reading: "の / すなわ.ち / なんじ / ナイ / ダイ / ノ",
    radical: "乃",
    componentHint: "classical radical 4",
    examples: [
      {word: "乃至", reading: "ないし", meaning: "from ... to; between ... and"},
      {word: "木乃伊", reading: "みいら", meaning: "mummy"},
      {word: "乃ち", reading: "すなわち", meaning: "that is; namely"}
    ],
  },
  {
    kanji: "之",
    keyword: "of/this",
    reading: "の / これ / ゆく / この / シ",
    radical: "之",
    componentHint: "classical radical 3",
    examples: [
      {word: "承知之助", reading: "しょうちのすけ", meaning: "OK; Sure"},
      {word: "貧之", reading: "びんぼう", meaning: "poverty; destitute"},
      {word: "之れ", reading: "これ", meaning: "this (indicating an item near the speaker, the action of the speaker, or the current topic); this person (usu. indicating someone in one's in-group)"}
    ],
  },
  {
    kanji: "此",
    keyword: "this/current",
    reading: "これ / この / ここ / シ",
    radical: "此",
    componentHint: "classical radical 77",
    examples: [
      {word: "此処", reading: "ここ", meaning: "here (place physically close to the speaker, place pointed by the speaker while explaining); this place"},
      {word: "彼方此方", reading: "あちこち", meaning: "here and there; all around"},
      {word: "此の世", reading: "このよ", meaning: "this world; the present life (in contrast to the land of the dead)"}
    ],
  },
  {
    kanji: "其",
    keyword: "that",
    reading: "それ / その / キ / ギ / ゴ",
    radical: "其",
    componentHint: "classical radical 12",
    examples: [
      {word: "其の", reading: "その", meaning: "that (something or someone distant from the speaker, close to the listener; actions of the listener, or ideas expressed or understood by the listener); the"},
      {word: "其の上", reading: "そのうえ", meaning: "in addition; furthermore"},
      {word: "其者", reading: "それしゃ", meaning: "expert; geisha"}
    ],
  },
  {
    kanji: "乏",
    keyword: "destitution/scarce",
    reading: "とぼ.しい / とも.しい / ボウ",
    radical: "乏",
    componentHint: "classical radical 4",
    examples: [
      {word: "貧乏", reading: "びんぼう", meaning: "poverty; destitute"},
      {word: "乏しい", reading: "とぼしい", meaning: "meagre; meager"},
      {word: "貧乏人", reading: "びんぼうにん", meaning: "poor person; pauper"}
    ],
  },
  {
    kanji: "芝",
    keyword: "turf/lawn",
    reading: "しば / シ",
    radical: "芝",
    componentHint: "classical radical 140",
    examples: [
      {word: "芝居", reading: "しばい", meaning: "play; drama"},
      {word: "芝生", reading: "しばふ", meaning: "lawn"},
      {word: "東芝", reading: "とうしば", meaning: "Toshiba (company)"}
    ],
  },
  {
    kanji: "及",
    keyword: "reach out/exert",
    reading: "およ.ぶ / およ.び / および / およ.ぼす / キュウ",
    radical: "及",
    componentHint: "classical radical 4",
    examples: [
      {word: "及ぶ", reading: "およぶ", meaning: "to reach; to amount to"},
      {word: "及び", reading: "および", meaning: "and; as well as"},
      {word: "追及", reading: "ついきゅう", meaning: "investigation (e.g. into someone's guilt); questioning"}
    ],
  },
  {
    kanji: "扱",
    keyword: "handle/entertain",
    reading: "あつか.い / あつか.う / あつか.る / こ.く / ソウ / キュウ",
    radical: "扱",
    componentHint: "classical radical 64",
    examples: [
      {word: "扱う", reading: "あつかう", meaning: "to deal with (a person); to treat"},
      {word: "扱い", reading: "あつかい", meaning: "treatment; service"},
      {word: "取り扱う", reading: "とりあつかう", meaning: "to handle; to operate (a machine, etc.)"}
    ],
  },
  {
    kanji: "級",
    keyword: "class/rank",
    reading: "キュウ",
    radical: "級",
    componentHint: "classical radical 120",
    examples: [
      {word: "階級", reading: "かいきゅう", meaning: "(social) class; rank"},
      {word: "高級", reading: "こうきゅう", meaning: "high class; high grade"},
      {word: "同級生", reading: "どうきゅうせい", meaning: "classmate; classmates"}
    ],
  },
  {
    kanji: "吸",
    keyword: "suck/imbibe",
    reading: "す.う / キュウ",
    radical: "吸",
    componentHint: "classical radical 30",
    examples: [
      {word: "吸う", reading: "すう", meaning: "to smoke; to breathe in"},
      {word: "呼吸", reading: "こきゅう", meaning: "breath; respiration"},
      {word: "吸い込む", reading: "すいこむ", meaning: "to inhale; to breathe in"}
    ],
  },
  {
    kanji: "吹",
    keyword: "blow/breathe",
    reading: "ふ.く / スイ",
    radical: "吹",
    componentHint: "classical radical 30",
    examples: [
      {word: "吹く", reading: "ふく", meaning: "to blow (e.g. wind); to play a wind instrument"},
      {word: "吹き出す", reading: "ふきだす", meaning: "to spout out; to spurt out"},
      {word: "吹き飛ばす", reading: "ふきとばす", meaning: "to blow away; to blow off"}
    ],
  },
  {
    kanji: "呼",
    keyword: "call/call out to",
    reading: "よ.ぶ / コ",
    radical: "呼",
    componentHint: "classical radical 30",
    examples: [
      {word: "呼ぶ", reading: "よぶ", meaning: "to call out (to); to call"},
      {word: "呼吸", reading: "こきゅう", meaning: "breath; respiration"},
      {word: "呼びかける", reading: "よびかける", meaning: "to call out to; to accost"}
    ],
  },
  {
    kanji: "吐",
    keyword: "spit/vomit",
    reading: "は.く / つ.く / ト",
    radical: "吐",
    componentHint: "classical radical 30",
    examples: [
      {word: "吐く", reading: "つく", meaning: "to breathe out; to breathe"},
      {word: "吐き出す", reading: "はきだす", meaning: "to vomit; to spit out"},
      {word: "吐息", reading: "といき", meaning: "sigh; long breath"}
    ],
  },
  {
    kanji: "叶",
    keyword: "grant/answer",
    reading: "かな.える / かな.う / キョウ",
    radical: "叶",
    componentHint: "classical radical 30",
    examples: [
      {word: "叶う", reading: "かなう", meaning: "to come true (wish); to be suited"},
      {word: "叶える", reading: "かなえる", meaning: "to grant (request, wish); to answer (prayer)"},
      {word: "意に叶う", reading: "いにかなう", meaning: "to satisfy (one); to meet (one's) desire"}
    ],
  },
  {
    kanji: "叱",
    keyword: "scold/reprove",
    reading: "しか.る / シツ / シチ",
    radical: "叱",
    componentHint: "classical radical 30",
    examples: [
      {word: "叱る", reading: "しかる", meaning: "to scold"},
      {word: "叱りつける", reading: "しかりつける", meaning: "to rebuke; to scold harshly"},
      {word: "叱咤", reading: "しった", meaning: "scolding; rebuke"}
    ],
  },
  {
    kanji: "叫",
    keyword: "shout/exclaim",
    reading: "さけ.ぶ / キョウ",
    radical: "叫",
    componentHint: "classical radical 30",
    examples: [
      {word: "叫ぶ", reading: "さけぶ", meaning: "to shout; to cry"},
      {word: "叫び", reading: "さけび", meaning: "shout; scream"},
      {word: "叫び声", reading: "さけびごえ", meaning: "shout; yell"}
    ],
  },
  {
    kanji: "吟",
    keyword: "versify/singing",
    reading: "ギン",
    radical: "吟",
    componentHint: "classical radical 30",
    examples: [
      {word: "吟味", reading: "ぎんみ", meaning: "testing; scrutiny"},
      {word: "吟遊詩人", reading: "ぎんゆうしじん", meaning: "troubadour; minstrel"},
      {word: "呻吟", reading: "しんぎん", meaning: "moaning; groaning"}
    ],
  },
  {
    kanji: "含",
    keyword: "contain/include",
    reading: "ふく.む / ふく.める / ガン",
    radical: "含",
    componentHint: "classical radical 30",
    examples: [
      {word: "含む", reading: "ふくむ", meaning: "to contain; to comprise"},
      {word: "含める", reading: "ふくめる", meaning: "to include (in a group or scope); to instruct"},
      {word: "含み笑い", reading: "ふくみわらい", meaning: "suppressed laugh; smile"}
    ],
  },
  {
    kanji: "琴",
    keyword: "harp/koto",
    reading: "こと / キン",
    radical: "琴",
    componentHint: "classical radical 96",
    examples: [
      {word: "竪琴", reading: "たてごと", meaning: "harp; lyre"},
      {word: "月琴", reading: "げっきん", meaning: "yueqin (4-stringed Chinese lute)"},
      {word: "琴線", reading: "きんせん", meaning: "heartstrings"}
    ],
  },
  {
    kanji: "迷",
    keyword: "astray/be perplexed",
    reading: "まよ.う / メイ",
    radical: "迷",
    componentHint: "classical radical 162",
    examples: [
      {word: "迷う", reading: "まよう", meaning: "to lose one's way; to waver"},
      {word: "迷惑", reading: "めいわく", meaning: "trouble; bother"},
      {word: "迷路", reading: "めいろ", meaning: "maze; labyrinth"}
    ],
  },
  {
    kanji: "謎",
    keyword: "riddle/puzzle",
    reading: "なぞ / メイ / ベイ",
    radical: "謎",
    componentHint: "classical radical 149",
    examples: [
      {word: "謎々", reading: "なぞなぞ", meaning: "riddle; puzzle"},
      {word: "謎謎", reading: "なぞなぞ", meaning: "riddle; puzzle"},
      {word: "謎解き", reading: "なぞとき", meaning: "solution of a riddle"}
    ],
  },
  {
    kanji: "逆",
    keyword: "inverted/reverse",
    reading: "さか / さか.さ / さか.らう / ギャク / ゲキ",
    radical: "逆",
    componentHint: "classical radical 162",
    examples: [
      {word: "逆に", reading: "ぎゃくに", meaning: "conversely; on the contrary"},
      {word: "逆らう", reading: "さからう", meaning: "to go against; to oppose"},
      {word: "逆転", reading: "ぎゃくてん", meaning: "(sudden) change; reversal"}
    ],
  },
  {
    kanji: "遡",
    keyword: "go upstream/retrace the past",
    reading: "さかのぼ.る / ソ / サク",
    radical: "遡",
    componentHint: "classical radical 162",
    examples: [
      {word: "遡る", reading: "さかのぼる", meaning: "to go upstream; to go back (in time, to origin)"},
      {word: "遡行", reading: "そこう", meaning: "going upstream; sailing against the current"},
      {word: "遡上", reading: "そじょう", meaning: "going upstream; retroact"}
    ],
  },
  {
    kanji: "塑",
    keyword: "model/molding",
    reading: "でく / ソ",
    radical: "塑",
    componentHint: "classical radical 32",
    examples: [
      {word: "塑像", reading: "そぞう", meaning: "earthen image"},
      {word: "彫塑", reading: "ちょうそ", meaning: "carving; engraving"},
      {word: "可塑", reading: "かそ", meaning: "plastic"}
    ],
  },
  {
    kanji: "勲",
    keyword: "meritorious deed/merit",
    reading: "いさお / クン",
    radical: "勲",
    componentHint: "classical radical 19",
    examples: [
      {word: "勲章", reading: "くんしょう", meaning: "decoration; order"},
      {word: "武勲", reading: "ぶくん", meaning: "deeds of arms"},
      {word: "勲功", reading: "くんこう", meaning: "merits; distinguished services"}
    ],
  },
  {
    kanji: "薫",
    keyword: "send forth fragrance/fragrant",
    reading: "かお.る / クン",
    radical: "薫",
    componentHint: "classical radical 140",
    examples: [
      {word: "薫風", reading: "くんぷう", meaning: "balmy breeze; summer breeze"},
      {word: "薫り", reading: "かおり", meaning: "aroma; fragrance"},
      {word: "薫る", reading: "かおる", meaning: "to smell sweet; to be fragrant"}
    ],
  },
  {
    kanji: "芳",
    keyword: "perfume/balmy",
    reading: "かんば.しい / ホウ",
    radical: "芳",
    componentHint: "classical radical 140",
    examples: [
      {word: "芳香", reading: "ほうこう", meaning: "perfume; fragrance"},
      {word: "芳枝", reading: "ほうし", meaning: "fragrant branch of flowers"},
      {word: "芳しい", reading: "かんばしい", meaning: "sweet; fragrant"}
    ],
  },
  {
    kanji: "香",
    keyword: "incense/smell",
    reading: "か / かお.り / かお.る / コウ / キョウ",
    radical: "香",
    componentHint: "classical radical 186",
    examples: [
      {word: "香り", reading: "かおり", meaning: "aroma; fragrance"},
      {word: "香水", reading: "こうすい", meaning: "perfume"},
      {word: "香港", reading: "ほんこん", meaning: "Hong Kong; Hongkong"}
    ],
  },
  {
    kanji: "秀",
    keyword: "excel/excellence",
    reading: "ひい.でる / シュウ",
    radical: "秀",
    componentHint: "classical radical 115",
    examples: [
      {word: "優秀", reading: "ゆうしゅう", meaning: "superiority; excellence"},
      {word: "秀麗", reading: "しゅうれい", meaning: "graceful; beautiful"},
      {word: "秀才", reading: "しゅうさい", meaning: "bright person; talented student"}
    ],
  },
  {
    kanji: "誘",
    keyword: "entice/lead",
    reading: "さそ.う / いざな.う / ユウ",
    radical: "誘",
    componentHint: "classical radical 149",
    examples: [
      {word: "誘う", reading: "さそう", meaning: "to invite; to ask"},
      {word: "誘拐", reading: "ゆうかい", meaning: "abduction; kidnapping"},
      {word: "誘惑", reading: "ゆうわく", meaning: "temptation; allurement"}
    ],
  },
  {
    kanji: "拐",
    keyword: "kidnap/falsify",
    reading: "カイ",
    radical: "拐",
    componentHint: "classical radical 64",
    examples: [
      {word: "誘拐", reading: "ゆうかい", meaning: "abduction; kidnapping"},
      {word: "拐帯", reading: "かいたい", meaning: "absconding with money"},
      {word: "拐かす", reading: "かどわかす", meaning: "to kidnap"}
    ],
  },
  {
    kanji: "透",
    keyword: "transparent/permeate",
    reading: "す.く / す.かす / す.ける / とう.る / トウ",
    radical: "透",
    componentHint: "classical radical 162",
    examples: [
      {word: "透明", reading: "とうめい", meaning: "transparency; cleanness"},
      {word: "透ける", reading: "すける", meaning: "to be transparent; to show through"},
      {word: "透かす", reading: "すかす", meaning: "to look through; to hold up to the light"}
    ],
  },
  {
    kanji: "携",
    keyword: "portable/carry (in hand)",
    reading: "たずさ.える / たずさ.わる / ケイ",
    radical: "携",
    componentHint: "classical radical 64",
    examples: [
      {word: "携帯", reading: "けいたい", meaning: "something carried (in the hand); handheld"},
      {word: "携える", reading: "たずさえる", meaning: "to carry in one's hand"},
      {word: "提携", reading: "ていけい", meaning: "cooperation; tie-up"}
    ],
  },
  {
    kanji: "雄",
    keyword: "masculine/male",
    reading: "お- / おす / おん / ユウ",
    radical: "雄",
    componentHint: "classical radical 172",
    examples: [
      {word: "英雄", reading: "えいゆう", meaning: "hero; heroine"},
      {word: "雄弁", reading: "ゆうべん", meaning: "oratory; eloquence"},
      {word: "雄大", reading: "ゆうだい", meaning: "grandeur; magnificence"}
    ],
  },
  {
    kanji: "雌",
    keyword: "feminine/female",
    reading: "め- / めす / めん / シ",
    radical: "雌",
    componentHint: "classical radical 172",
    examples: [
      {word: "雌雄", reading: "しゆう", meaning: "male and female (animal)"},
      {word: "雌牛", reading: "めうし", meaning: "cow; heifer"},
      {word: "雌伏", reading: "しふく", meaning: "remaining in obscurity"}
    ],
  },
  {
    kanji: "些",
    keyword: "a little bit/sometimes",
    reading: "ち.と / ち.っと / いささか / サ / シャ",
    radical: "些",
    componentHint: "classical radical 7",
    examples: [
      {word: "些細", reading: "ささい", meaning: "trivial; slight"},
      {word: "些か", reading: "いささか", meaning: "a little; a bit"},
      {word: "些事", reading: "さじ", meaning: "something small or petty; trifle"}
    ],
  },
  {
    kanji: "柴",
    keyword: "brush/firewood",
    reading: "しば / サイ / シ",
    radical: "柴",
    componentHint: "classical radical 75",
    examples: [
      {word: "柴垣", reading: "しばがき", meaning: "brushwood fence"},
      {word: "柴犬", reading: "しばいぬ", meaning: "Shiba (Japanese breed of small dog, native of Shikoku); brushwood dog"},
      {word: "柴折戸", reading: "しおりど", meaning: "garden gate made of branches and twigs; wicket gate"}
    ],
  },
  {
    kanji: "紫",
    keyword: "purple/violet",
    reading: "むらさき / シ",
    radical: "紫",
    componentHint: "classical radical 120",
    examples: [
      {word: "紫色", reading: "むらさきいろ", meaning: "violet"},
      {word: "薄紫", reading: "うすむらさき", meaning: "light purple"},
      {word: "紫煙", reading: "しえん", meaning: "purple smoke; tobacco smoke"}
    ],
  },
  {
    kanji: "髪",
    keyword: "hair of the head",
    reading: "かみ / ハツ",
    radical: "髪",
    componentHint: "classical radical 190",
    examples: [
      {word: "髪の毛", reading: "かみのけ", meaning: "hair (head)"},
      {word: "金髪", reading: "きんぱつ", meaning: "blond hair"},
      {word: "白髪", reading: "はくはつ", meaning: "white hair; grey hair"}
    ],
  },
  {
    kanji: "髭",
    keyword: "beard/mustache",
    reading: "ひげ / くちひげ / シ",
    radical: "髭",
    componentHint: "classical radical 190",
    examples: [
      {word: "口髭", reading: "くちひげ", meaning: "moustache; mustache"},
      {word: "髭面", reading: "ひげづら", meaning: "bearded face; unshaven face"},
      {word: "無精髭", reading: "ぶしょうひげ", meaning: "stubble; unshaven face"}
    ],
  },
  {
    kanji: "詐",
    keyword: "lie/falsehood",
    reading: "いつわ.る / サ",
    radical: "詐",
    componentHint: "classical radical 149",
    examples: [
      {word: "詐欺", reading: "さぎ", meaning: "fraud; swindle"},
      {word: "詐取", reading: "さしゅ", meaning: "defrauding; swindle"},
      {word: "詐称", reading: "さしょう", meaning: "misrepresentation; false statement"}
    ],
  },
  {
    kanji: "欺",
    keyword: "deceit/cheat",
    reading: "あざむ.く / ギ",
    radical: "欺",
    componentHint: "classical radical 76",
    examples: [
      {word: "詐欺", reading: "さぎ", meaning: "fraud; swindle"},
      {word: "欺く", reading: "あざむく", meaning: "to deceive; to delude"},
      {word: "欺瞞", reading: "ぎまん", meaning: "deception; deceit"}
    ],
  },
  {
    kanji: "棋",
    keyword: "chess piece/Japanese chess",
    reading: "ご / キ",
    radical: "棋",
    componentHint: "classical radical 75",
    examples: [
      {word: "将棋", reading: "しょうぎ", meaning: "shogi; Japanese chess"},
      {word: "棋士", reading: "きし", meaning: "shogi player; go player"},
      {word: "棋譜", reading: "きふ", meaning: "record of a game of go, shogi, chess, etc."}
    ],
  },
  {
    kanji: "碁",
    keyword: "Go",
    reading: "ゴ",
    radical: "碁",
    componentHint: "classical radical 112",
    examples: [
      {word: "碁盤", reading: "ごばん", meaning: "Go board"},
      {word: "囲碁", reading: "いご", meaning: "go; board game of capturing territory"},
      {word: "碁石", reading: "ごいし", meaning: "Go pieces; Go stones"}
    ],
  },
  {
    kanji: "甚",
    keyword: "tremendously/very",
    reading: "はなは.だ / はなは.だしい / ジン",
    radical: "甚",
    componentHint: "classical radical 99",
    examples: [
      {word: "甚だ", reading: "はなはだ", meaning: "very; greatly"},
      {word: "甚だしい", reading: "はなはだしい", meaning: "extreme; excessive"},
      {word: "甚兵衛", reading: "じんべえ", meaning: "informal summer clothes for men (short jacket and trousers)"}
    ],
  },
  {
    kanji: "勘",
    keyword: "intuition/perception",
    reading: "カン",
    radical: "勘",
    componentHint: "classical radical 19",
    examples: [
      {word: "勘定", reading: "かんじょう", meaning: "calculation; counting"},
      {word: "勘違い", reading: "かんちがい", meaning: "misunderstanding; wrong guess"},
      {word: "勘弁", reading: "かんべん", meaning: "pardon; forgiveness"}
    ],
  },
  {
    kanji: "堪",
    keyword: "withstand/endure",
    reading: "た.える / たま.る / こら.える / こた.える / カン / タン",
    radical: "堪",
    componentHint: "classical radical 32",
    examples: [
      {word: "堪える", reading: "こたえる", meaning: "to bear; to stand"},
      {word: "堪忍", reading: "かんにん", meaning: "pardon; patient endurance"},
      {word: "堪らない", reading: "たまらない", meaning: "intolerable; unbearable"}
    ],
  },
  {
    kanji: "匹",
    keyword: "equal/head",
    reading: "ひき / ヒツ",
    radical: "匹",
    componentHint: "classical radical 23",
    examples: [
      {word: "匹敵", reading: "ひってき", meaning: "comparing with; match"},
      {word: "一匹狼", reading: "いっぴきおおかみ", meaning: "lone wolf; loner"},
      {word: "匹夫", reading: "ひっぷ", meaning: "(humble) man; coarse man"}
    ],
  },
  {
    kanji: "匠",
    keyword: "artisan/workman",
    reading: "たくみ / ショウ",
    radical: "匠",
    componentHint: "classical radical 22",
    examples: [
      {word: "師匠", reading: "ししょう", meaning: "master; teacher"},
      {word: "意匠", reading: "いしょう", meaning: "design"},
      {word: "巨匠", reading: "きょしょう", meaning: "master; masterhand"}
    ],
  },
  {
    kanji: "匿",
    keyword: "hide/shelter",
    reading: "かくま.う / トク",
    radical: "匿",
    componentHint: "classical radical 23",
    examples: [
      {word: "匿名", reading: "とくめい", meaning: "anonymity; anonym"},
      {word: "隠匿", reading: "いんとく", meaning: "concealment"},
      {word: "秘匿", reading: "ひとく", meaning: "hiding; concealment"}
    ],
  },
  {
    kanji: "諾",
    keyword: "consent/assent",
    reading: "ダク",
    radical: "諾",
    componentHint: "classical radical 149",
    examples: [
      {word: "承諾", reading: "しょうだく", meaning: "consent; acquiescence"},
      {word: "受諾", reading: "じゅだく", meaning: "acceptance"},
      {word: "快諾", reading: "かいだく", meaning: "ready consent"}
    ],
  },
  {
    kanji: "乞",
    keyword: "beg/invite",
    reading: "こ.う / コツ / キツ / キ",
    radical: "乞",
    componentHint: "classical radical 5",
    examples: [
      {word: "乞食", reading: "こじき", meaning: "beggar; begging"},
      {word: "乞う", reading: "こう", meaning: "to beg; to ask"},
      {word: "物乞い", reading: "ものごい", meaning: "beggar; begging"}
    ],
  },
  {
    kanji: "迄",
    keyword: "until/up to",
    reading: "まで / およ.ぶ / キツ",
    radical: "迄",
    componentHint: "classical radical 162",
    examples: [
      {word: "飽く迄", reading: "あくまで", meaning: "to the end; to the bitter end"},
      {word: "飽く迄も", reading: "あくまでも", meaning: "to the last; persistency"},
      {word: "迄に", reading: "までに", meaning: "by; not later than"}
    ],
  },
  {
    kanji: "乾",
    keyword: "drought/dry",
    reading: "かわ.く / かわ.かす / ほ.す / ひ.る / カン / ケン",
    radical: "乾",
    componentHint: "classical radical 5",
    examples: [
      {word: "乾く", reading: "かわく", meaning: "to get dry"},
      {word: "乾燥", reading: "かんそう", meaning: "dryness; aridity"},
      {word: "乾杯", reading: "かんぱい", meaning: "toast; drink (in celebration or in honor of something)"}
    ],
  },
  {
    kanji: "幹",
    keyword: "tree trunk",
    reading: "みき / カン",
    radical: "幹",
    componentHint: "classical radical 51",
    examples: [
      {word: "幹部", reading: "かんぶ", meaning: "management; (executive) staff"},
      {word: "新幹線", reading: "しんかんせん", meaning: "Shinkansen; bullet train"},
      {word: "幹事", reading: "かんじ", meaning: "executive secretary; coordinator"}
    ],
  },
  {
    kanji: "操",
    keyword: "maneuver/manipulate",
    reading: "みさお / あやつ.る / ソウ / サン",
    radical: "操",
    componentHint: "classical radical 64",
    examples: [
      {word: "操縦", reading: "そうじゅう", meaning: "steering; piloting"},
      {word: "操作", reading: "そうさ", meaning: "operation; management"},
      {word: "操る", reading: "あやつる", meaning: "to manipulate; to operate"}
    ],
  },
  {
    kanji: "燥",
    keyword: "parch/dry up",
    reading: "はしゃ.ぐ / ソウ",
    radical: "燥",
    componentHint: "classical radical 86",
    examples: [
      {word: "乾燥", reading: "かんそう", meaning: "dryness; aridity"},
      {word: "焦燥", reading: "しょうそう", meaning: "impatience; uneasiness"},
      {word: "高燥", reading: "こうそう", meaning: "high and dry ground"}
    ],
  },
  {
    kanji: "繰",
    keyword: "winding/reel",
    reading: "く.る / ソウ",
    radical: "繰",
    componentHint: "classical radical 120",
    examples: [
      {word: "繰り返す", reading: "くりかえす", meaning: "to repeat; to do something over again"},
      {word: "繰る", reading: "くる", meaning: "to reel; to wind"},
      {word: "繰り出す", reading: "くりだす", meaning: "to draw (a thread); to let out (e.g. a rope)"}
    ],
  },
  {
    kanji: "藻",
    keyword: "seaweed/duckweed",
    reading: "も / ソウ",
    radical: "藻",
    componentHint: "classical radical 140",
    examples: [
      {word: "玉藻", reading: "たまも", meaning: "seaweed"},
      {word: "海藻", reading: "かいそう", meaning: "seaweed"},
      {word: "毬藻", reading: "まりも", meaning: "marimo (variety of algae, Cladophora aegagropila); round green alga"}
    ],
  },
  {
    kanji: "噴",
    keyword: "erupt/spout",
    reading: "ふ.く / フン",
    radical: "噴",
    componentHint: "classical radical 30",
    examples: [
      {word: "噴く", reading: "ふく", meaning: "to blow (e.g. wind); to play a wind instrument"},
      {word: "噴き出す", reading: "ふきだす", meaning: "to spout out; to spurt out"},
      {word: "噴水", reading: "ふんすい", meaning: "water fountain"}
    ],
  },
  {
    kanji: "墳",
    keyword: "tomb/mound",
    reading: "フン",
    radical: "墳",
    componentHint: "classical radical 32",
    examples: [
      {word: "古墳", reading: "こふん", meaning: "ancient burial mound; barrow"},
      {word: "墳墓", reading: "ふんぼ", meaning: "grave; tomb"},
      {word: "前方後円墳", reading: "ぜんぽうこうえんふん", meaning: "keyhole-shaped tumulus (form of ancient Imperial grave)"}
    ],
  },
  {
    kanji: "憤",
    keyword: "aroused/resent",
    reading: "いきどお.る / フン",
    radical: "憤",
    componentHint: "classical radical 61",
    examples: [
      {word: "憤る", reading: "いきどおる", meaning: "to be angry; to resent"},
      {word: "憤慨", reading: "ふんがい", meaning: "indignation; resentment"},
      {word: "憤怒", reading: "ふんぬ", meaning: "anger; rage"}
    ],
  },
  {
    kanji: "牙",
    keyword: "tusk/fang",
    reading: "きば / は / ガ / ゲ",
    radical: "牙",
    componentHint: "classical radical 92",
    examples: [
      {word: "象牙", reading: "ぞうげ", meaning: "ivory"},
      {word: "歯牙", reading: "しが", meaning: "teeth (and tusks)"},
      {word: "毒牙", reading: "どくが", meaning: "poison fang; sinister ways"}
    ],
  },
  {
    kanji: "芽",
    keyword: "bud/sprout",
    reading: "め / ガ",
    radical: "芽",
    componentHint: "classical radical 140",
    examples: [
      {word: "芽生える", reading: "めばえる", meaning: "to bud; to sprout"},
      {word: "新芽", reading: "しんめ", meaning: "sprout; bud"},
      {word: "萌芽", reading: "ほうが", meaning: "germination; germ"}
    ],
  },
  {
    kanji: "雅",
    keyword: "gracious/elegant",
    reading: "みや.び / ガ",
    radical: "雅",
    componentHint: "classical radical 172",
    examples: [
      {word: "優雅", reading: "ゆうが", meaning: "elegance; grace"},
      {word: "博雅", reading: "はくが", meaning: "well-informed; accomplished (individual)"},
      {word: "風雅", reading: "ふうが", meaning: "elegance; grace"}
    ],
  },
  {
    kanji: "邪",
    keyword: "wicked/injustice",
    reading: "よこし.ま / ジャ",
    radical: "邪",
    componentHint: "classical radical 92",
    examples: [
      {word: "邪魔", reading: "じゃま", meaning: "hindrance; obstacle"},
      {word: "風邪", reading: "かぜ", meaning: "common cold; cold"},
      {word: "無邪気", reading: "むじゃき", meaning: "innocence; simple-mindedness"}
    ],
  },
  {
    kanji: "既",
    keyword: "previously/already",
    reading: "すで.に / キ",
    radical: "既",
    componentHint: "classical radical 71",
    examples: [
      {word: "既に", reading: "すでに", meaning: "already; too late"},
      {word: "既成", reading: "きせい", meaning: "established; completed"},
      {word: "既存", reading: "きそん", meaning: "existing"}
    ],
  },
  {
    kanji: "概",
    keyword: "outline/condition",
    reading: "おおむ.ね / ガイ",
    radical: "概",
    componentHint: "classical radical 75",
    examples: [
      {word: "概念", reading: "がいねん", meaning: "general idea; concept"},
      {word: "大概", reading: "たいがい", meaning: "in general; almost all"},
      {word: "概して", reading: "がいして", meaning: "generally; as a rule"}
    ],
  },
  {
    kanji: "慨",
    keyword: "rue/be sad",
    reading: "ガイ",
    radical: "慨",
    componentHint: "classical radical 61",
    examples: [
      {word: "憤慨", reading: "ふんがい", meaning: "indignation; resentment"},
      {word: "感慨", reading: "かんがい", meaning: "strong feelings; deep emotion"},
      {word: "感慨深い", reading: "かんがいぶかい", meaning: "deeply emotive; moving"}
    ],
  },
  {
    kanji: "苗",
    keyword: "seedling/sapling",
    reading: "なえ / なわ- / ビョウ / ミョウ",
    radical: "苗",
    componentHint: "classical radical 140",
    examples: [
      {word: "早苗", reading: "さなえ", meaning: "rice seedlings"},
      {word: "苗字", reading: "みょうじ", meaning: "surname; family name"},
      {word: "苗木", reading: "なえぎ", meaning: "seedling; sapling"}
    ],
  },
  {
    kanji: "描",
    keyword: "sketch/compose",
    reading: "えが.く / か.く / ビョウ",
    radical: "描",
    componentHint: "classical radical 64",
    examples: [
      {word: "描く", reading: "えがく", meaning: "to draw; to paint"},
      {word: "描写", reading: "びょうしゃ", meaning: "depiction; description"},
      {word: "思い描く", reading: "おもいえがく", meaning: "to imagine; to picture"}
    ],
  },
  {
    kanji: "猫",
    keyword: "cat",
    reading: "ねこ / ビョウ",
    radical: "猫",
    componentHint: "classical radical 94",
    examples: [
      {word: "子猫", reading: "こねこ", meaning: "kitten"},
      {word: "猫背", reading: "ねこぜ", meaning: "bent back; hunchback"},
      {word: "野良猫", reading: "のらねこ", meaning: "stray cat; alley cat"}
    ],
  },
  {
    kanji: "萌",
    keyword: "show symptoms of/sprout",
    reading: "も.える / きざ.す / めばえ / きざ.し / ホウ",
    radical: "萌",
    componentHint: "classical radical 140",
    examples: [
      {word: "萌える", reading: "もえる", meaning: "to burst into bud; to sprout"},
      {word: "萌芽", reading: "ほうが", meaning: "germination; germ"},
      {word: "萌す", reading: "きざす", meaning: "to show signs; to have symptoms"}
    ],
  },
  {
    kanji: "兆",
    keyword: "portent/10**12",
    reading: "きざ.す / きざ.し / チョウ",
    radical: "兆",
    componentHint: "classical radical 10",
    examples: [
      {word: "前兆", reading: "ぜんちょう", meaning: "omen; portent"},
      {word: "兆候", reading: "ちょうこう", meaning: "sign; indication"},
      {word: "兆し", reading: "きざし", meaning: "signs; omen"}
    ],
  },
  {
    kanji: "眺",
    keyword: "stare/watch",
    reading: "なが.める / チョウ",
    radical: "眺",
    componentHint: "classical radical 109",
    examples: [
      {word: "眺める", reading: "ながめる", meaning: "to view; to gaze at"},
      {word: "眺め", reading: "ながめ", meaning: "scene; view"},
      {word: "眺望", reading: "ちょうぼう", meaning: "prospect; view"}
    ],
  },
  {
    kanji: "逃",
    keyword: "escape/flee",
    reading: "に.げる / に.がす / のが.す / のが.れる / トウ",
    radical: "逃",
    componentHint: "classical radical 162",
    examples: [
      {word: "逃げる", reading: "にげる", meaning: "to escape; to run away"},
      {word: "逃げ出す", reading: "にげだす", meaning: "to run away; to flee"},
      {word: "逃れる", reading: "のがれる", meaning: "to escape"}
    ],
  },
  {
    kanji: "桃",
    keyword: "peach",
    reading: "もも / トウ",
    radical: "桃",
    componentHint: "classical radical 75",
    examples: [
      {word: "桃色", reading: "ももいろ", meaning: "pink (colour, color)"},
      {word: "胡桃", reading: "くるみ", meaning: "walnut"},
      {word: "桃源", reading: "とうげん", meaning: "Shangri-La; paradise on earth"}
    ],
  },
  {
    kanji: "跳",
    keyword: "hop/leap up",
    reading: "は.ねる / と.ぶ / -と.び / チョウ",
    radical: "跳",
    componentHint: "classical radical 157",
    examples: [
      {word: "跳ぶ", reading: "とぶ", meaning: "to fly; to soar"},
      {word: "跳ねる", reading: "はねる", meaning: "to jump; to leap"},
      {word: "跳躍", reading: "ちょうやく", meaning: "jump; leap"}
    ],
  },
  {
    kanji: "挑",
    keyword: "challenge/contend for",
    reading: "いど.む / チョウ",
    radical: "挑",
    componentHint: "classical radical 64",
    examples: [
      {word: "挑戦", reading: "ちょうせん", meaning: "challenge; defiance"},
      {word: "挑む", reading: "いどむ", meaning: "to challenge; to throw down the gauntlet"},
      {word: "挑発", reading: "ちょうはつ", meaning: "provocation; stirring up"}
    ],
  },
  {
    kanji: "拙",
    keyword: "bungling/clumsy",
    reading: "つたな.い / セツ",
    radical: "拙",
    componentHint: "classical radical 64",
    examples: [
      {word: "拙者", reading: "せっしゃ", meaning: "I (primarily used by samurai); me"},
      {word: "拙い", reading: "つたない", meaning: "poor-quality; shoddy"},
      {word: "稚拙", reading: "ちせつ", meaning: "unskillful; childish"}
    ],
  },
  {
    kanji: "屈",
    keyword: "yield/bend",
    reading: "かが.む / かが.める / クツ",
    radical: "屈",
    componentHint: "classical radical 44",
    examples: [
      {word: "退屈", reading: "たいくつ", meaning: "tedium; boredom"},
      {word: "理屈", reading: "りくつ", meaning: "theory; reason"},
      {word: "屈辱", reading: "くつじょく", meaning: "disgrace; humiliation"}
    ],
  },
  {
    kanji: "掘",
    keyword: "dig/delve",
    reading: "ほ.る / クツ",
    radical: "掘",
    componentHint: "classical radical 64",
    examples: [
      {word: "掘る", reading: "ほる", meaning: "to dig; to excavate"},
      {word: "発掘", reading: "はっくつ", meaning: "excavation; exhumation"},
      {word: "掘り出す", reading: "ほりだす", meaning: "to dig out; to pick up"}
    ],
  },
  {
    kanji: "堀",
    keyword: "ditch/moat",
    reading: "ほり / クツ",
    radical: "堀",
    componentHint: "classical radical 32",
    examples: [
      {word: "堀川", reading: "ほりかわ", meaning: "canal"},
      {word: "堀江", reading: "ほりえ", meaning: "canal"},
      {word: "外堀", reading: "そとぼり", meaning: "outer moat (castle)"}
    ],
  },
  {
    kanji: "封",
    keyword: "seal/closing",
    reading: "フウ / ホウ",
    radical: "封",
    componentHint: "classical radical 41",
    examples: [
      {word: "封筒", reading: "ふうとう", meaning: "envelope"},
      {word: "封じる", reading: "ふうじる", meaning: "to seal (letter); to prevent"},
      {word: "封印", reading: "ふういん", meaning: "seal; stamp"}
    ],
  },
  {
    kanji: "筒",
    keyword: "cylinder/pipe",
    reading: "つつ / トウ",
    radical: "筒",
    componentHint: "classical radical 118",
    examples: [
      {word: "封筒", reading: "ふうとう", meaning: "envelope"},
      {word: "円筒", reading: "えんとう", meaning: "cylinder"},
      {word: "筒井", reading: "つつい", meaning: "round well"}
    ],
  },
  {
    kanji: "管",
    keyword: "pipe/tube",
    reading: "くだ / カン",
    radical: "管",
    componentHint: "classical radical 118",
    examples: [
      {word: "管理", reading: "かんり", meaning: "control; management (e.g. of a business)"},
      {word: "血管", reading: "けっかん", meaning: "blood vessel; vein"},
      {word: "保管", reading: "ほかん", meaning: "charge; custody"}
    ],
  },
  {
    kanji: "棺",
    keyword: "coffin/casket",
    reading: "カン",
    radical: "棺",
    componentHint: "classical radical 75",
    examples: [
      {word: "棺桶", reading: "かんおけ", meaning: "coffin; casket"},
      {word: "石棺", reading: "せっかん", meaning: "sarcophagus; stone coffin"},
      {word: "出棺", reading: "しゅっかん", meaning: "carrying out a coffin; funeral procession"}
    ],
  },
  {
    kanji: "轄",
    keyword: "control/wedge",
    reading: "くさび / カツ",
    radical: "轄",
    componentHint: "classical radical 159",
    examples: [
      {word: "管轄", reading: "かんかつ", meaning: "jurisdiction; control"},
      {word: "所轄", reading: "しょかつ", meaning: "jurisdiction"},
      {word: "直轄", reading: "ちょっかつ", meaning: "direct control"}
    ],
  },
  {
    kanji: "洞",
    keyword: "den/cave",
    reading: "ほら / ドウ",
    radical: "洞",
    componentHint: "classical radical 85",
    examples: [
      {word: "洞窟", reading: "どうくつ", meaning: "cave"},
      {word: "洞穴", reading: "ほらあな", meaning: "cave; den"},
      {word: "空洞", reading: "くうどう", meaning: "cave; hollow"}
    ],
  },
  {
    kanji: "窟",
    keyword: "cavern",
    reading: "いわや / いはや / あな / クツ / コツ",
    radical: "窟",
    componentHint: "classical radical 116",
    examples: [
      {word: "洞窟", reading: "どうくつ", meaning: "cave"},
      {word: "理窟", reading: "りくつ", meaning: "theory; reason"},
      {word: "岩窟", reading: "がんくつ", meaning: "cave; cavern"}
    ],
  },
  {
    kanji: "淫",
    keyword: "lewdness/licentiousness",
    reading: "ひた.す / ほしいまま / みだ.ら / みだ.れる / イン",
    radical: "淫",
    componentHint: "classical radical 85",
    examples: [
      {word: "淫ら", reading: "みだら", meaning: "obscene; indecent"},
      {word: "淫売", reading: "いんばい", meaning: "prostitution; prostitute"},
      {word: "淫蕩", reading: "いんとう", meaning: "dissipation; lewdness"}
    ],
  },
  {
    kanji: "妊",
    keyword: "pregnancy",
    reading: "はら.む / みごも.る / ニン / ジン",
    radical: "妊",
    componentHint: "classical radical 38",
    examples: [
      {word: "妊娠", reading: "にんしん", meaning: "conception; pregnancy"},
      {word: "懐妊", reading: "かいにん", meaning: "pregnancy; conception"},
      {word: "妊婦", reading: "にんぷ", meaning: "pregnant woman"}
    ],
  },
  {
    kanji: "娠",
    keyword: "with child/pregnancy",
    reading: "シン",
    radical: "娠",
    componentHint: "classical radical 38",
    examples: [
      {word: "妊娠", reading: "にんしん", meaning: "conception; pregnancy"},
      {word: "偽妊娠", reading: "ぎにんしん", meaning: "false pregnancy; phantom pregnancy"},
      {word: "妊娠時", reading: "にんしんじ", meaning: "during pregnancy; while pregnant"}
    ],
  },
  {
    kanji: "唇",
    keyword: "lips",
    reading: "くちびる / シン",
    radical: "唇",
    componentHint: "classical radical 30",
    examples: [
      {word: "口唇", reading: "こうしん", meaning: "lips; labia"},
      {word: "上唇", reading: "うわくちびる", meaning: "upper lip"},
      {word: "読唇術", reading: "どくしんじゅつ", meaning: "lip reading"}
    ],
  },
  {
    kanji: "辱",
    keyword: "embarrass/humiliate",
    reading: "はずかし.める / ジョク",
    radical: "辱",
    componentHint: "classical radical 161",
    examples: [
      {word: "侮辱", reading: "ぶじょく", meaning: "insult; contempt"},
      {word: "屈辱", reading: "くつじょく", meaning: "disgrace; humiliation"},
      {word: "恥辱", reading: "ちじょく", meaning: "disgrace; shame"}
    ],
  },
  {
    kanji: "襲",
    keyword: "attack/advance on",
    reading: "おそ.う / かさ.ね / シュウ",
    radical: "襲",
    componentHint: "classical radical 145",
    examples: [
      {word: "襲う", reading: "おそう", meaning: "to attack; to assail"},
      {word: "襲いかかる", reading: "おそいかかる", meaning: "to rush on; to attack"},
      {word: "襲撃", reading: "しゅうげき", meaning: "attack; charge"}
    ],
  },
  {
    kanji: "伏",
    keyword: "prostrated/bend down",
    reading: "ふ.せる / ふ.す / フク",
    radical: "伏",
    componentHint: "classical radical 9",
    examples: [
      {word: "伏せる", reading: "ふせる", meaning: "to lay something upside down; to turn something over"},
      {word: "降伏", reading: "こうふく", meaning: "capitulation; surrender"},
      {word: "伏す", reading: "ふす", meaning: "to bend down; to bow down"}
    ],
  },
  {
    kanji: "吠",
    keyword: "bark/howl",
    reading: "ほえ.る / ほ.える / ハイ / ベイ",
    radical: "吠",
    componentHint: "classical radical 30",
    examples: [
      {word: "吠える", reading: "ほえる", meaning: "to bark; to bay"},
      {word: "遠吠え", reading: "とおぼえ", meaning: "howling"},
      {word: "吠る", reading: "ほえる", meaning: "to bark; to bay"}
    ],
  },
  {
    kanji: "噛",
    keyword: "chew/bite",
    reading: "か.む / か.じる / コウ / ゴウ",
    radical: "噛",
    componentHint: "classical radical 30",
    examples: [
      {word: "噛む", reading: "かむ", meaning: "to bite; to chew"},
      {word: "噛みつく", reading: "かみつく", meaning: "to bite (at); to snap at"},
      {word: "噛み締める", reading: "かみしめる", meaning: "to chew thoroughly; to bite (e.g. one's lip)"}
    ],
  },
  {
    kanji: "班",
    keyword: "squad/corps",
    reading: "ハン",
    radical: "班",
    componentHint: "classical radical 96",
    examples: [
      {word: "班長", reading: "はんちょう", meaning: "squad leader; honcho"},
      {word: "首班", reading: "しゅはん", meaning: "head; leader"},
      {word: "救護班", reading: "きゅうごはん", meaning: "relief squad; rescue party"}
    ],
  },
  {
    kanji: "斑",
    keyword: "spot/blemish",
    reading: "ふ / まだら / ハン",
    radical: "斑",
    componentHint: "classical radical 67",
    examples: [
      {word: "斑点", reading: "はんてん", meaning: "speck; fleck"},
      {word: "斑鳩", reading: "いかる", meaning: "Japanese grosbeak (Eophona personata)"},
      {word: "死斑", reading: "しはん", meaning: "postmortem lividity"}
    ],
  },
  {
    kanji: "輩",
    keyword: "comrade/fellow",
    reading: "-ばら / やから / やかい / ともがら / ハイ",
    radical: "輩",
    componentHint: "classical radical 159",
    examples: [
      {word: "先輩", reading: "せんぱい", meaning: "senior (at work or school); superior"},
      {word: "後輩", reading: "こうはい", meaning: "junior (at work, school, etc.); younger people"},
      {word: "吾輩", reading: "わがはい", meaning: "I (nuance of arrogance); me"}
    ],
  },
  {
    kanji: "悲",
    keyword: "grieve/sad",
    reading: "かな.しい / かな.しむ / ヒ",
    radical: "悲",
    componentHint: "classical radical 61",
    examples: [
      {word: "悲鳴", reading: "ひめい", meaning: "shriek; scream"},
      {word: "悲しい", reading: "かなしい", meaning: "sad; sorrowful"},
      {word: "悲しみ", reading: "かなしみ", meaning: "sadness; sorrow"}
    ],
  },
  {
    kanji: "忽",
    keyword: "in a moment/instantly",
    reading: "たちま.ち / ゆるが.せ / コツ",
    radical: "忽",
    componentHint: "classical radical 61",
    examples: [
      {word: "忽ち", reading: "たちまち", meaning: "at once; in a moment"},
      {word: "粗忽", reading: "そこつ", meaning: "careless; thoughtless"},
      {word: "忽焉", reading: "こつえん", meaning: "sudden; unexpected"}
    ],
  },
  {
    kanji: "惚",
    keyword: "fall in love with/admire",
    reading: "ほけ.る / ぼ.ける / ほ.れる / コツ",
    radical: "惚",
    componentHint: "classical radical 61",
    examples: [
      {word: "惚れる", reading: "ほれる", meaning: "to fall in love; to be in love"},
      {word: "恍惚", reading: "こうこつ", meaning: "ecstasy; trance"},
      {word: "自惚れる", reading: "うぬぼれる", meaning: "to be conceited"}
    ],
  },
  {
    kanji: "猿",
    keyword: "monkey",
    reading: "さる / エン",
    radical: "猿",
    componentHint: "classical radical 94",
    examples: [
      {word: "猿ぐつわ", reading: "さるぐつわ", meaning: "(mouth) gag"},
      {word: "猿轡", reading: "さるぐつわ", meaning: "(mouth) gag"},
      {word: "類人猿", reading: "るいじんえん", meaning: "anthropoid ape; anthropoid"}
    ],
  },
  {
    kanji: "哀",
    keyword: "pathetic/grief",
    reading: "あわ.れ / あわ.れむ / かな.しい / アイ",
    radical: "哀",
    componentHint: "classical radical 30",
    examples: [
      {word: "哀れ", reading: "あわれ", meaning: "pity; sorrow"},
      {word: "可哀そう", reading: "かわいそう", meaning: "poor; pitiable"},
      {word: "哀しい", reading: "かなしい", meaning: "sad; sorrowful"}
    ],
  },
  {
    kanji: "衰",
    keyword: "decline/wane",
    reading: "おとろ.える / スイ",
    radical: "衰",
    componentHint: "classical radical 145",
    examples: [
      {word: "衰える", reading: "おとろえる", meaning: "to become weak; to decline"},
      {word: "衰弱", reading: "すいじゃく", meaning: "weakness; debility"},
      {word: "衰え", reading: "おとろえ", meaning: "weakening; emaciation"}
    ],
  },
  {
    kanji: "衷",
    keyword: "inmost/heart",
    reading: "チュウ",
    radical: "衷",
    componentHint: "classical radical 145",
    examples: [
      {word: "衷心", reading: "ちゅうしん", meaning: "innermost feelings"},
      {word: "折衷", reading: "せっちゅう", meaning: "compromise; cross"},
      {word: "苦衷", reading: "くちゅう", meaning: "distress"}
    ],
  },
  {
    kanji: "喪",
    keyword: "miss/mourning",
    reading: "も / ソウ",
    radical: "喪",
    componentHint: "classical radical 30",
    examples: [
      {word: "喪失", reading: "そうしつ", meaning: "loss; forfeit"},
      {word: "喪服", reading: "もふく", meaning: "mourning dress"},
      {word: "喪う", reading: "うしなう", meaning: "to lose; to part with"}
    ],
  },
  {
    kanji: "忌",
    keyword: "mourning/abhor",
    reading: "い.む / い.み / い.まわしい / キ",
    radical: "忌",
    componentHint: "classical radical 61",
    examples: [
      {word: "忌々しい", reading: "いまいましい", meaning: "annoying; provoking"},
      {word: "忌まわしい", reading: "いまわしい", meaning: "unpleasant; disagreeable"},
      {word: "禁忌", reading: "きんき", meaning: "taboo; day, time, direction, words, etc. that must be avoided"}
    ],
  },
  {
    kanji: "卓",
    keyword: "eminent/table",
    reading: "タク",
    radical: "卓",
    componentHint: "classical radical 24",
    examples: [
      {word: "食卓", reading: "しょくたく", meaning: "dining table"},
      {word: "卓上", reading: "たくじょう", meaning: "desktop; desk-top"},
      {word: "卓子", reading: "たくし", meaning: "table"}
    ],
  },
  {
    kanji: "悼",
    keyword: "lament/grieve over",
    reading: "いた.む / トウ",
    radical: "悼",
    componentHint: "classical radical 61",
    examples: [
      {word: "追悼", reading: "ついとう", meaning: "mourning (dead persons); memorial"},
      {word: "悼む", reading: "いたむ", meaning: "to grieve over; to mourn"},
      {word: "哀悼", reading: "あいとう", meaning: "condolence; regret"}
    ],
  },
  {
    kanji: "貞",
    keyword: "upright/chastity",
    reading: "さだ / テイ",
    radical: "貞",
    componentHint: "classical radical 154",
    examples: [
      {word: "童貞", reading: "どうてい", meaning: "virginity (esp. of a man); male virgin"},
      {word: "貞操", reading: "ていそう", meaning: "chastity; virtue"},
      {word: "貞淑", reading: "ていしゅく", meaning: "chastity; virtue"}
    ],
  },
  {
    kanji: "偵",
    keyword: "spy",
    reading: "テイ",
    radical: "偵",
    componentHint: "classical radical 9",
    examples: [
      {word: "探偵", reading: "たんてい", meaning: "detective; sleuth"},
      {word: "偵察", reading: "ていさつ", meaning: "scout out; reconnaissance"},
      {word: "密偵", reading: "みってい", meaning: "spy; emissary"}
    ],
  },
  {
    kanji: "覇",
    keyword: "hegemony/supremacy",
    reading: "はたがしら / ハ / ハク",
    radical: "覇",
    componentHint: "classical radical 146",
    examples: [
      {word: "覇気", reading: "はき", meaning: "ambition; aspiration"},
      {word: "制覇", reading: "せいは", meaning: "conquest; domination"},
      {word: "覇権", reading: "はけん", meaning: "hegemony"}
    ],
  },
  {
    kanji: "覆",
    keyword: "capsize/cover",
    reading: "おお.う / くつがえ.す / くつがえ.る / フク",
    radical: "覆",
    componentHint: "classical radical 146",
    examples: [
      {word: "覆う", reading: "おおう", meaning: "to cover; to hide"},
      {word: "覆面", reading: "ふくめん", meaning: "mask; veil"},
      {word: "覆す", reading: "くつがえす", meaning: "to overturn; to capsize"}
    ],
  },
  {
    kanji: "履",
    keyword: "perform/complete",
    reading: "は.く / リ",
    radical: "履",
    componentHint: "classical radical 44",
    examples: [
      {word: "履く", reading: "はく", meaning: "to put on (or wear) lower-body clothing (i.e. pants, skirt, etc.); to put on (or wear) footwear"},
      {word: "草履", reading: "ぞうり", meaning: "zori; Japanese sandals"},
      {word: "履歴", reading: "りれき", meaning: "personal history; background"}
    ],
  },
  {
    kanji: "属",
    keyword: "belong/genus",
    reading: "さかん / つく / やから / ゾク / ショク",
    radical: "属",
    componentHint: "classical radical 44",
    examples: [
      {word: "金属", reading: "きんぞく", meaning: "metal"},
      {word: "所属", reading: "しょぞく", meaning: "attached to; belong to"},
      {word: "属する", reading: "ぞくする", meaning: "to belong to; to come under"}
    ],
  },
  {
    kanji: "嘱",
    keyword: "entrust/request",
    reading: "しょく.する / たの.む / ショク",
    radical: "嘱",
    componentHint: "classical radical 30",
    examples: [
      {word: "嘱託", reading: "しょくたく", meaning: "commission; charge (person with)"},
      {word: "嘱望", reading: "しょくぼう", meaning: "(having great) expectation; pinning one's hopes on"},
      {word: "委嘱", reading: "いしょく", meaning: "entrusting (with)"}
    ],
  },
  {
    kanji: "偶",
    keyword: "accidentally/even number",
    reading: "たま / グウ",
    radical: "偶",
    componentHint: "classical radical 9",
    examples: [
      {word: "偶然", reading: "ぐうぜん", meaning: "(by) chance; unexpectedly"},
      {word: "偶像", reading: "ぐうぞう", meaning: "image; idol"},
      {word: "配偶", reading: "はいぐう", meaning: "combination"}
    ],
  },
  {
    kanji: "隅",
    keyword: "corner/nook",
    reading: "すみ / グウ",
    radical: "隅",
    componentHint: "classical radical 170",
    examples: [
      {word: "片隅", reading: "かたすみ", meaning: "corner; nook"},
      {word: "一隅", reading: "いちぐう", meaning: "corner; nook"},
      {word: "隅々", reading: "すみずみ", meaning: "nooks; corners"}
    ],
  },
  {
    kanji: "隙",
    keyword: "crevice/fissure",
    reading: "すき / す.く / す.かす / ひま / ゲキ / キャク / ケキ",
    radical: "隙",
    componentHint: "classical radical 170",
    examples: [
      {word: "隙間", reading: "すきま", meaning: "crevice; crack"},
      {word: "間隙", reading: "かんげき", meaning: "gap"},
      {word: "隙間風", reading: "すきまかぜ", meaning: "draft; draught"}
    ],
  },
  {
    kanji: "遇",
    keyword: "meet/encounter",
    reading: "あ.う / グウ",
    radical: "遇",
    componentHint: "classical radical 162",
    examples: [
      {word: "遭遇", reading: "そうぐう", meaning: "encounter"},
      {word: "境遇", reading: "きょうぐう", meaning: "environment; circumstances"},
      {word: "待遇", reading: "たいぐう", meaning: "treatment; reception"}
    ],
  },
  {
    kanji: "愚",
    keyword: "foolish/folly",
    reading: "おろ.か / グ",
    radical: "愚",
    componentHint: "classical radical 61",
    examples: [
      {word: "愚か", reading: "おろか", meaning: "foolish; stupid"},
      {word: "愚痴", reading: "ぐち", meaning: "idle complaint; grumble"},
      {word: "愚かしい", reading: "おろかしい", meaning: "foolish; stupid"}
    ],
  },
  {
    kanji: "曹",
    keyword: "office/official",
    reading: "ソウ / ゾウ",
    radical: "曹",
    componentHint: "classical radical 73",
    examples: [
      {word: "軍曹", reading: "ぐんそう", meaning: "sergeant"},
      {word: "曹長", reading: "そうちょう", meaning: "master sergeant; sergeant major (JSDF)"},
      {word: "兵曹", reading: "へいそう", meaning: "warrant soldier"}
    ],
  },
  {
    kanji: "遭",
    keyword: "encounter/meet",
    reading: "あ.う / あ.わせる / ソウ",
    radical: "遭",
    componentHint: "classical radical 162",
    examples: [
      {word: "遭う", reading: "あう", meaning: "to meet; to encounter"},
      {word: "遭遇", reading: "そうぐう", meaning: "encounter"},
      {word: "遭難", reading: "そうなん", meaning: "disaster; shipwreck"}
    ],
  },
  {
    kanji: "槽",
    keyword: "vat/tub",
    reading: "ふね / ソウ",
    radical: "槽",
    componentHint: "classical radical 75",
    examples: [
      {word: "浴槽", reading: "よくそう", meaning: "bathtub"},
      {word: "水槽", reading: "すいそう", meaning: "water tank; cistern"},
      {word: "湯槽", reading: "ゆぶね", meaning: "bathtub; boat with a bathtub rented to customers (Edo period)"}
    ],
  },
  {
    kanji: "妨",
    keyword: "disturb/prevent",
    reading: "さまた.げる / ボウ",
    radical: "妨",
    componentHint: "classical radical 38",
    examples: [
      {word: "妨害", reading: "ぼうがい", meaning: "disturbance; obstruction"},
      {word: "妨げる", reading: "さまたげる", meaning: "to disturb; to prevent"},
      {word: "妨げ", reading: "さまたげ", meaning: "obstruction; hindrance"}
    ],
  },
  {
    kanji: "坊",
    keyword: "boy/priest's residence",
    reading: "ボウ / ボッ",
    radical: "坊",
    componentHint: "classical radical 32",
    examples: [
      {word: "赤ん坊", reading: "あかんぼう", meaning: "baby; infant"},
      {word: "坊主", reading: "ぼうず", meaning: "Buddhist priest; bonze"},
      {word: "坊や", reading: "ぼうや", meaning: "boy"}
    ],
  },
  {
    kanji: "傍",
    keyword: "bystander/side",
    reading: "かたわ.ら / わき / おか- / はた / ボウ",
    radical: "傍",
    componentHint: "classical radical 9",
    examples: [
      {word: "傍ら", reading: "かたわら", meaning: "side; edge"},
      {word: "傍観", reading: "ぼうかん", meaning: "looking on; remaining a spectator"},
      {word: "路傍", reading: "ろぼう", meaning: "roadside"}
    ],
  },
  {
    kanji: "於",
    keyword: "at/in",
    reading: "おい.て / お.ける / ああ / より / オ / ヨ",
    radical: "於",
    componentHint: "classical radical 70",
    examples: [
      {word: "於て", reading: "おいて", meaning: "at; in"},
      {word: "於多福", reading: "おたふく", meaning: "homely woman (esp. one with a small low nose, high flat forehead, and bulging cheeks); plain woman"},
      {word: "於いて", reading: "おいて", meaning: "at; in"}
    ],
  },
  {
    kanji: "房",
    keyword: "tassel/tuft",
    reading: "ふさ / ボウ",
    radical: "房",
    componentHint: "classical radical 63",
    examples: [
      {word: "女房", reading: "にょうぼう", meaning: "wife (esp. one's own wife); court lady"},
      {word: "乳房", reading: "ちぶさ", meaning: "breast; nipple"},
      {word: "厨房", reading: "ちゅうぼう", meaning: "kitchen; galley"}
    ],
  },
  {
    kanji: "扇",
    keyword: "fan/folding fan",
    reading: "おうぎ / セン",
    radical: "扇",
    componentHint: "classical radical 63",
    examples: [
      {word: "扇子", reading: "せんす", meaning: "folding fan"},
      {word: "団扇", reading: "うちわ", meaning: "fan"},
      {word: "扇風機", reading: "せんぷうき", meaning: "electric fan"}
    ],
  },
  {
    kanji: "扉",
    keyword: "front door/title page",
    reading: "とびら / ヒ",
    radical: "扉",
    componentHint: "classical radical 63",
    examples: [
      {word: "鉄扉", reading: "てっぴ", meaning: "iron door"},
      {word: "門扉", reading: "もんぴ", meaning: "door(s) of a gate"},
      {word: "扉絵", reading: "とびらえ", meaning: "frontispiece"}
    ],
  },
  {
    kanji: "雇",
    keyword: "employ/hire",
    reading: "やと.う / コ",
    radical: "雇",
    componentHint: "classical radical 172",
    examples: [
      {word: "雇う", reading: "やとう", meaning: "to employ; to hire"},
      {word: "解雇", reading: "かいこ", meaning: "discharge; dismissal"},
      {word: "雇い主", reading: "やといぬし", meaning: "employer"}
    ],
  },
  {
    kanji: "顧",
    keyword: "look back/review",
    reading: "かえり.みる / コ",
    radical: "顧",
    componentHint: "classical radical 181",
    examples: [
      {word: "顧問", reading: "こもん", meaning: "adviser; advisor"},
      {word: "顧みる", reading: "かえりみる", meaning: "to look back (e.g. over shoulder or at the past); to turn around"},
      {word: "顧客", reading: "こきゃく", meaning: "customer; client"}
    ],
  },
  {
    kanji: "屑",
    keyword: "rubbish/junk",
    reading: "くず / いさぎよ.い / セツ",
    radical: "屑",
    componentHint: "classical radical 44",
    examples: [
      {word: "紙屑", reading: "かみくず", meaning: "wastepaper; paper scraps"},
      {word: "屑屋", reading: "くずや", meaning: "ragman; junkman"},
      {word: "星屑", reading: "ほしくず", meaning: "stardust"}
    ],
  },
  {
    kanji: "糞",
    keyword: "shit/feces",
    reading: "くそ / フン",
    radical: "糞",
    componentHint: "classical radical 119",
    examples: [
      {word: "糞尿", reading: "ふんにょう", meaning: "feces and urine; excreta"},
      {word: "馬糞", reading: "ばふん", meaning: "horse dung"},
      {word: "下手糞", reading: "へたくそ", meaning: "shitty; clumsy"}
    ],
  },
  {
    kanji: "尿",
    keyword: "urine",
    reading: "ニョウ",
    radical: "尿",
    componentHint: "classical radical 44",
    examples: [
      {word: "糖尿", reading: "とうにょう", meaning: "glycosuria; glucosuria"},
      {word: "放尿", reading: "ほうにょう", meaning: "urination"},
      {word: "糞尿", reading: "ふんにょう", meaning: "feces and urine; excreta"}
    ],
  },
  {
    kanji: "泌",
    keyword: "ooze/flow",
    reading: "ヒツ / ヒ",
    radical: "泌",
    componentHint: "classical radical 85",
    examples: [
      {word: "分泌", reading: "ぶんぴつ", meaning: "secretion"},
      {word: "内分泌", reading: "ないぶんぴつ", meaning: "endocrine; incretion"},
      {word: "泌尿器", reading: "ひにょうき", meaning: "urinary organs"}
    ],
  },
  {
    kanji: "尻",
    keyword: "buttocks/hips",
    reading: "しり / コウ",
    radical: "尻",
    componentHint: "classical radical 44",
    examples: [
      {word: "尻尾", reading: "しっぽ", meaning: "tail (animal)"},
      {word: "目尻", reading: "めじり", meaning: "outer canthus; outer corner of the eye"},
      {word: "尻餅", reading: "しりもち", meaning: "falling on one's backside (behind, bottom)"}
    ],
  },
  {
    kanji: "炉",
    keyword: "hearth/furnace",
    reading: "いろり / ロ",
    radical: "炉",
    componentHint: "classical radical 86",
    examples: [
      {word: "暖炉", reading: "だんろ", meaning: "fireplace; hearth"},
      {word: "煖炉", reading: "だんろ", meaning: "fireplace; hearth"},
      {word: "香炉", reading: "こうろ", meaning: "censer; incense burner"}
    ],
  },
  {
    kanji: "窯",
    keyword: "kiln/oven",
    reading: "かま / ヨウ",
    radical: "窯",
    componentHint: "classical radical 116",
    examples: [
      {word: "窯元", reading: "かまもと", meaning: "pottery (i.e. the place); potter"},
      {word: "窯業", reading: "ようぎょう", meaning: "ceramics; ceramic industry"},
      {word: "炭窯", reading: "すみがま", meaning: "charcoal kiln; charcoal pile"}
    ],
  },
  {
    kanji: "釜",
    keyword: "kettle/cauldron",
    reading: "かま / フ",
    radical: "釜",
    componentHint: "classical radical 167",
    examples: [
      {word: "茶釜", reading: "ちゃがま", meaning: "teakettle (tea ceremony)"},
      {word: "後釜", reading: "あとがま", meaning: "successor; replacement"},
      {word: "釜飯", reading: "かまめし", meaning: "rice, meat and vegetable dish served in a small pot"}
    ],
  },
  {
    kanji: "爺",
    keyword: "old man/grampa",
    reading: "じい / じじい / おやじ / じじ / ヤ",
    radical: "爺",
    componentHint: "classical radical 88",
    examples: [
      {word: "爺さん", reading: "じいさん", meaning: "grandfather (may be used after name as honorific); male senior-citizen (may be used after name as honorific)"},
      {word: "親爺", reading: "おやじ", meaning: "one's father; old man"},
      {word: "お爺さん", reading: "おじいさん", meaning: "grandfather; male senior-citizen"}
    ],
  },
  {
    kanji: "窪",
    keyword: "depression/cave in",
    reading: "くぼ.む / くぼ.み / くぼ.まる / くぼ / ワ / ア",
    radical: "窪",
    componentHint: "classical radical 116",
    examples: [
      {word: "窪む", reading: "くぼむ", meaning: "to cave in; to become depressed"},
      {word: "窪地", reading: "くぼち", meaning: "pit; hollow"},
      {word: "落ち窪む", reading: "おちくぼむ", meaning: "to sink in; to cave in"}
    ],
  },
  {
    kanji: "佳",
    keyword: "excellent/beautiful",
    reading: "カ",
    radical: "佳",
    componentHint: "classical radical 9",
    examples: [
      {word: "佳い", reading: "よい", meaning: "good; excellent"},
      {word: "佳人", reading: "かじん", meaning: "(female) beauty; beautiful woman"},
      {word: "佳境", reading: "かきょう", meaning: "climax (story); best part"}
    ],
  },
  {
    kanji: "涯",
    keyword: "horizon/shore",
    reading: "はて / ガイ",
    radical: "涯",
    componentHint: "classical radical 85",
    examples: [
      {word: "生涯", reading: "しょうがい", meaning: "one's lifetime (i.e. one's existence until death); one's career"},
      {word: "境涯", reading: "きょうがい", meaning: "circumstances; one's situation or lot in life"},
      {word: "天涯孤独", reading: "てんがいこどく", meaning: "a person without a single relative"}
    ],
  },
  {
    kanji: "暇",
    keyword: "spare time/rest",
    reading: "ひま / いとま / カ",
    radical: "暇",
    componentHint: "classical radical 72",
    examples: [
      {word: "休暇", reading: "きゅうか", meaning: "holiday; day off"},
      {word: "暇つぶし", reading: "ひまつぶし", meaning: "waste of time; killing time"},
      {word: "余暇", reading: "よか", meaning: "leisure; leisure time"}
    ],
  },
  {
    kanji: "霞",
    keyword: "be hazy/grow dim",
    reading: "かすみ / かす.む / カ / ゲ",
    radical: "霞",
    componentHint: "classical radical 173",
    examples: [
      {word: "霞む", reading: "かすむ", meaning: "to grow hazy; to be misty"},
      {word: "雲霞", reading: "うんか", meaning: "clouds and haze (fog); disappearing"},
      {word: "霞が関", reading: "かすみがせき", meaning: "area in Tokyo; Japanese government departments (euph)"}
    ],
  },
  {
    kanji: "雰",
    keyword: "atmosphere/fog",
    reading: "フン",
    radical: "雰",
    componentHint: "classical radical 173",
    examples: [
      {word: "雰囲気", reading: "ふんいき", meaning: "atmosphere (e.g. musical); mood"},
      {word: "霜雰", reading: "そうふん", meaning: "frosty air"},
      {word: "霧雰", reading: "むふん", meaning: "misty air"}
    ],
  },
  {
    kanji: "霧",
    keyword: "fog/mist",
    reading: "きり / ム / ボウ / ブ",
    radical: "霧",
    componentHint: "classical radical 173",
    examples: [
      {word: "濃霧", reading: "のうむ", meaning: "heavy fog; dense fog"},
      {word: "霧雨", reading: "きりさめ", meaning: "drizzle; light rain"},
      {word: "朝霧", reading: "あさぎり", meaning: "morning fog; morning mist"}
    ],
  },
  {
    kanji: "露",
    keyword: "dew/tears",
    reading: "つゆ / ロ / ロウ",
    radical: "露",
    componentHint: "classical radical 173",
    examples: [
      {word: "露骨", reading: "ろこつ", meaning: "frank; blunt"},
      {word: "披露", reading: "ひろう", meaning: "announcement; presentation"},
      {word: "露出", reading: "ろしゅつ", meaning: "exposure; disclosure"}
    ],
  },
  {
    kanji: "霜",
    keyword: "frost",
    reading: "しも / ソウ",
    radical: "霜",
    componentHint: "classical radical 173",
    examples: [
      {word: "霜柱", reading: "しもばしら", meaning: "frost columns; ice needles"},
      {word: "霜降り", reading: "しもふり", meaning: "speckled with white; salt and pepper (colour, color)"},
      {word: "星霜", reading: "せいそう", meaning: "years; time"}
    ],
  },
  {
    kanji: "箱",
    keyword: "box/chest",
    reading: "はこ / ソウ",
    radical: "箱",
    componentHint: "classical radical 118",
    examples: [
      {word: "ゴミ箱", reading: "ごみばこ", meaning: "garbage can; garbage box"},
      {word: "下駄箱", reading: "げたばこ", meaning: "shoe rack (in genkan); cupboard (for shoes and clogs)"},
      {word: "重箱", reading: "じゅうばこ", meaning: "multi-tiered food box; stacked boxes"}
    ],
  },
  {
    kanji: "籍",
    keyword: "enroll/domiciliary register",
    reading: "セキ",
    radical: "籍",
    componentHint: "classical radical 118",
    examples: [
      {word: "戸籍", reading: "こせき", meaning: "census; family register"},
      {word: "国籍", reading: "こくせき", meaning: "nationality"},
      {word: "書籍", reading: "しょせき", meaning: "book; publication"}
    ],
  },
  {
    kanji: "貫",
    keyword: "pierce/8 1/3lbs",
    reading: "つらぬ.く / ぬ.く / ぬき / カン",
    radical: "貫",
    componentHint: "classical radical 154",
    examples: [
      {word: "貫く", reading: "つらぬく", meaning: "to go through; to pierce"},
      {word: "一貫", reading: "いっかん", meaning: "consistency; coherence"},
      {word: "貫禄", reading: "かんろく", meaning: "presence; dignity"}
    ],
  },
  {
    kanji: "慣",
    keyword: "accustomed/get used to",
    reading: "な.れる / な.らす / カン",
    radical: "慣",
    componentHint: "classical radical 61",
    examples: [
      {word: "慣れる", reading: "なれる", meaning: "to get used to; to grow accustomed to"},
      {word: "習慣", reading: "しゅうかん", meaning: "habit; custom"},
      {word: "見慣れる", reading: "みなれる", meaning: "to become used to seeing; to be familiar with"}
    ],
  },
  {
    kanji: "頂",
    keyword: "place on the head/receive",
    reading: "いただ.く / いただき / チョウ",
    radical: "頂",
    componentHint: "classical radical 181",
    examples: [
      {word: "頂く", reading: "いただく", meaning: "to receive; to get"},
      {word: "頂上", reading: "ちょうじょう", meaning: "top; summit"},
      {word: "頂戴", reading: "ちょうだい", meaning: "receiving; reception"}
    ],
  },
  {
    kanji: "戴",
    keyword: "be crowned with/live under (a ruler)",
    reading: "いただ.く / タイ",
    radical: "戴",
    componentHint: "classical radical 62",
    examples: [
      {word: "頂戴", reading: "ちょうだい", meaning: "receiving; reception"},
      {word: "戴く", reading: "いただく", meaning: "to receive; to get"},
      {word: "戴冠", reading: "たいかん", meaning: "coronation; crowning"}
    ],
  },
  {
    kanji: "項",
    keyword: "paragraph/nape of neck",
    reading: "うなじ / コウ",
    radical: "項",
    componentHint: "classical radical 181",
    examples: [
      {word: "事項", reading: "じこう", meaning: "matter; item"},
      {word: "項目", reading: "こうもく", meaning: "(data) item; entry"},
      {word: "条項", reading: "じょうこう", meaning: "clause; article"}
    ],
  },
  {
    kanji: "頃",
    keyword: "time/about",
    reading: "ころ / ごろ / しばら.く / ケイ / キョウ",
    radical: "頃",
    componentHint: "classical radical 21",
    examples: [
      {word: "近頃", reading: "ちかごろ", meaning: "lately; recently"},
      {word: "日頃", reading: "ひごろ", meaning: "normally; habitually"},
      {word: "今頃", reading: "いまごろ", meaning: "about this time"}
    ],
  },
  {
    kanji: "傾",
    keyword: "lean/incline",
    reading: "かたむ.く / かたむ.ける / かたぶ.く / かた.げる / ケイ",
    radical: "傾",
    componentHint: "classical radical 9",
    examples: [
      {word: "傾ける", reading: "かたむける", meaning: "to incline; to lean"},
      {word: "傾げる", reading: "かたげる", meaning: "to lean; to incline"},
      {word: "傾く", reading: "かたむく", meaning: "to incline toward; to slant"}
    ],
  },
  {
    kanji: "頑",
    keyword: "stubborn/foolish",
    reading: "かたく / ガン",
    radical: "頑",
    componentHint: "classical radical 181",
    examples: [
      {word: "頑張る", reading: "がんばる", meaning: "to persevere; to persist"},
      {word: "頑丈", reading: "がんじょう", meaning: "solid; firm"},
      {word: "頑固", reading: "がんこ", meaning: "stubbornness; obstinacy"}
    ],
  },
  {
    kanji: "頒",
    keyword: "distribute/disseminate",
    reading: "わか.つ / ハン",
    radical: "頒",
    componentHint: "classical radical 181",
    examples: [
      {word: "頒布", reading: "はんぷ", meaning: "distribution"},
      {word: "頒価", reading: "はんか", meaning: "distribution price"},
      {word: "頒白", reading: "はんぱく", meaning: "grayish color; greyish colour"}
    ],
  },
  {
    kanji: "頓",
    keyword: "suddenly/immediately",
    reading: "にわか.に / とん.と / つまず.く / とみ.に / トン / トツ",
    radical: "頓",
    componentHint: "classical radical 181",
    examples: [
      {word: "無頓着", reading: "むとんちゃく", meaning: "indifferent; unconcerned"},
      {word: "整頓", reading: "せいとん", meaning: "orderliness; put in order"},
      {word: "頓着", reading: "とんじゃく", meaning: "being concerned about or mindful of"}
    ],
  },
  {
    kanji: "顕",
    keyword: "appear/existing",
    reading: "あきらか / あらわ.れる / ケン",
    radical: "顕",
    componentHint: "classical radical 181",
    examples: [
      {word: "顕著", reading: "けんちょ", meaning: "remarkable; striking"},
      {word: "顕微鏡", reading: "けんびきょう", meaning: "microscope"},
      {word: "顕現", reading: "けんげん", meaning: "manifestation"}
    ],
  },
  {
    kanji: "領",
    keyword: "jurisdiction/dominion",
    reading: "えり / リョウ",
    radical: "領",
    componentHint: "classical radical 181",
    examples: [
      {word: "領主", reading: "りょうしゅ", meaning: "feudal lord"},
      {word: "占領", reading: "せんりょう", meaning: "occupation; capture"},
      {word: "大統領", reading: "だいとうりょう", meaning: "president; chief executive"}
    ],
  },
  {
    kanji: "頻",
    keyword: "repeatedly/recur",
    reading: "しき.りに / ヒン",
    radical: "頻",
    componentHint: "classical radical 181",
    examples: [
      {word: "頻繁", reading: "ひんぱん", meaning: "frequent; incessant"},
      {word: "頻りに", reading: "しきりに", meaning: "frequently; repeatedly"},
      {word: "頻る", reading: "しきる", meaning: "to do ... incessantly; to do ... hard"}
    ],
  },
  {
    kanji: "捗",
    keyword: "make progress",
    reading: "はかど.る / チョク / ホ",
    radical: "捗",
    componentHint: "classical radical 64",
    examples: [
      {word: "進捗", reading: "しんちょく", meaning: "progress; under way"},
      {word: "捗る", reading: "はかどる", meaning: "to make progress; to move right ahead (with the work)"},
      {word: "捗々しい", reading: "はかばかしい", meaning: "quick; rapid"}
    ],
  },
  {
    kanji: "順",
    keyword: "obey/order",
    reading: "ジュン",
    radical: "順",
    componentHint: "classical radical 47",
    examples: [
      {word: "順番", reading: "じゅんばん", meaning: "turn (in line); order of things"},
      {word: "順調", reading: "じゅんちょう", meaning: "favourable; favorable"},
      {word: "順序", reading: "じゅんじょ", meaning: "order; sequence"}
    ],
  },
  {
    kanji: "馴",
    keyword: "get used to/experienced",
    reading: "な.れる / な.らす / したが.う / ジュン / シュン / クン",
    radical: "馴",
    componentHint: "classical radical 187",
    examples: [
      {word: "馴れる", reading: "なれる", meaning: "to get used to; to grow accustomed to"},
      {word: "馴染み", reading: "なじみ", meaning: "intimacy; friendship"},
      {word: "馴染む", reading: "なじむ", meaning: "to become familiar with; to fit in"}
    ],
  },
  {
    kanji: "訓",
    keyword: "instruction/Japanese character reading",
    reading: "おし.える / よ.む / くん.ずる / クン / キン",
    radical: "訓",
    componentHint: "classical radical 149",
    examples: [
      {word: "訓練", reading: "くんれん", meaning: "practice; practising"},
      {word: "教訓", reading: "きょうくん", meaning: "lesson; precept"},
      {word: "特訓", reading: "とっくん", meaning: "special training; intensive training"}
    ],
  },
  {
    kanji: "須",
    keyword: "ought/by all means",
    reading: "すべから.く / すべし / ひげ / まつ / ス / シュ",
    radical: "須",
    componentHint: "classical radical 59",
    examples: [
      {word: "必須", reading: "ひっす", meaning: "indispensable; required"},
      {word: "急須", reading: "きゅうす", meaning: "small teapot"},
      {word: "須弥壇", reading: "しゅみだん", meaning: "dais for a Buddhist image"}
    ],
  },
  {
    kanji: "額",
    keyword: "forehead/tablet",
    reading: "ひたい / ガク",
    radical: "額",
    componentHint: "classical radical 181",
    examples: [
      {word: "金額", reading: "きんがく", meaning: "amount of money"},
      {word: "多額", reading: "たがく", meaning: "large amount of money"},
      {word: "額縁", reading: "がくぶち", meaning: "frame (e.g. picture frame, decorative door frame, etc.)"}
    ],
  },
  {
    kanji: "頼",
    keyword: "trust/request",
    reading: "たの.む / たの.もしい / たよ.る / ライ",
    radical: "頼",
    componentHint: "classical radical 154",
    examples: [
      {word: "頼む", reading: "たのむ", meaning: "to request; to beg"},
      {word: "頼る", reading: "たよる", meaning: "to rely on; to have recourse to"},
      {word: "信頼", reading: "しんらい", meaning: "reliance; trust"}
    ],
  },
  {
    kanji: "瀬",
    keyword: "rapids/current",
    reading: "せ / ライ",
    radical: "瀬",
    componentHint: "classical radical 85",
    examples: [
      {word: "浅瀬", reading: "あさせ", meaning: "shoal; shallows"},
      {word: "早瀬", reading: "はやせ", meaning: "swift current; rapids"},
      {word: "川瀬", reading: "かわせ", meaning: "rapids; shallows of a river"}
    ],
  },
  {
    kanji: "峡",
    keyword: "gorge/ravine",
    reading: "はざま / キョウ / コウ",
    radical: "峡",
    componentHint: "classical radical 46",
    examples: [
      {word: "海峡", reading: "かいきょう", meaning: "channel (e.g. between two land masses); strait"},
      {word: "峡谷", reading: "きょうこく", meaning: "glen; ravine"},
      {word: "山峡", reading: "さんきょう", meaning: "gorge; ravine"}
    ],
  },
  {
    kanji: "狭",
    keyword: "cramped/narrow",
    reading: "せま.い / せば.める / せば.まる / さ / キョウ / コウ",
    radical: "狭",
    componentHint: "classical radical 94",
    examples: [
      {word: "狭い", reading: "せまい", meaning: "narrow; confined"},
      {word: "狭間", reading: "はざま", meaning: "interval; threshold"},
      {word: "狭苦しい", reading: "せまくるしい", meaning: "cramped"}
    ],
  },
  {
    kanji: "挟",
    keyword: "pinch/between",
    reading: "はさ.む / はさ.まる / わきばさ.む / さしはさ.む / キョウ / ショウ",
    radical: "挟",
    componentHint: "classical radical 64",
    examples: [
      {word: "挟む", reading: "はさむ", meaning: "to interpose; to hold between"},
      {word: "挟まる", reading: "はさまる", meaning: "to get between; to be caught in"},
      {word: "挟撃", reading: "きょうげき", meaning: "pincer movement; pincer attack"}
    ],
  },
  {
    kanji: "頰",
    keyword: "cheeks/jaw",
    reading: "ほお / ほほ / キョウ",
    radical: "頰",
    componentHint: "classical radical 181",
    examples: [
      {word: "猿頰", reading: "さるぼお", meaning: "cheek pouch (monkey, squirrel, etc.); iron mask that covers the chin and cheeks (worn by samurai)"},
      {word: "頰っ辺", reading: "ほっぺた", meaning: "cheek"},
      {word: "頰冠り", reading: "ほおかぶり", meaning: "covering one's head with a handkerchief, scarf, etc.; tying a cloth around one's head"}
    ],
  },
  {
    kanji: "顎",
    keyword: "jaw/chin",
    reading: "あご / あぎと / ガク",
    radical: "顎",
    componentHint: "classical radical 181",
    examples: [
      {word: "上顎", reading: "じょうがく", meaning: "upper jaw; palate"},
      {word: "顎骨", reading: "がっこつ", meaning: "jawbone"},
      {word: "下顎", reading: "かがく", meaning: "lower jaw"}
    ],
  },
  {
    kanji: "煩",
    keyword: "anxiety/trouble",
    reading: "わずら.う / わずら.わす / うるさ.がる / うるさ.い / ハン / ボン",
    radical: "煩",
    componentHint: "classical radical 86",
    examples: [
      {word: "煩悩", reading: "ぼんのう", meaning: "worldly desires; evil passions"},
      {word: "煩悶", reading: "はんもん", meaning: "worry; agony"},
      {word: "煩わしい", reading: "わずらわしい", meaning: "troublesome; annoying"}
    ],
  },
  {
    kanji: "串",
    keyword: "shish kebab/spit",
    reading: "くし / つらぬ.く / カン / ケン / セン",
    radical: "串",
    componentHint: "classical radical 2",
    examples: [
      {word: "串刺し", reading: "くしざし", meaning: "skewer; spit"},
      {word: "串焼き", reading: "くしやき", meaning: "grilling on a skewer; spit-roasting"},
      {word: "玉串", reading: "たまぐし", meaning: "branch of a sacred tree (esp. sakaki) with paper or cotton strips attached (used as an offering); sakaki (species of evergreen sacred to Shinto, Cleyera japonica)"}
    ],
  },
  {
    kanji: "患",
    keyword: "afflicted/disease",
    reading: "わずら.う / カン",
    radical: "患",
    componentHint: "classical radical 61",
    examples: [
      {word: "患者", reading: "かんじゃ", meaning: "(a) patient"},
      {word: "患う", reading: "わずらう", meaning: "to be ill; to suffer from"},
      {word: "疾患", reading: "しっかん", meaning: "disease; ailment"}
    ],
  },
  {
    kanji: "疾",
    keyword: "rapidly",
    reading: "はや.い / シツ",
    radical: "疾",
    componentHint: "classical radical 104",
    examples: [
      {word: "疾走", reading: "しっそう", meaning: "sprint; dash"},
      {word: "疾風", reading: "しっぷう", meaning: "gale; strong wind"},
      {word: "疾い", reading: "はやい", meaning: "fast; quick"}
    ],
  },
  {
    kanji: "痴",
    keyword: "stupid/foolish",
    reading: "し.れる / おろか / チ",
    radical: "痴",
    componentHint: "classical radical 104",
    examples: [
      {word: "愚痴", reading: "ぐち", meaning: "idle complaint; grumble"},
      {word: "白痴", reading: "はくち", meaning: "idiot; retard"},
      {word: "痴漢", reading: "ちかん", meaning: "masher; molester"}
    ],
  },
  {
    kanji: "疫",
    keyword: "epidemic",
    reading: "エキ / ヤク",
    radical: "疫",
    componentHint: "classical radical 104",
    examples: [
      {word: "疫病", reading: "やくびょう", meaning: "infectious disease; plague"},
      {word: "免疫", reading: "めんえき", meaning: "immunity; immunization"},
      {word: "検疫", reading: "けんえき", meaning: "quarantine; medical inspection"}
    ],
  },
  {
    kanji: "痢",
    keyword: "diarrhea",
    reading: "リ",
    radical: "痢",
    componentHint: "classical radical 104",
    examples: [
      {word: "下痢", reading: "げり", meaning: "diarrhoea; diarrhea"},
      {word: "赤痢", reading: "せきり", meaning: "dysentery"},
      {word: "疫痢", reading: "えきり", meaning: "children's dysentery"}
    ],
  },
  {
    kanji: "痘",
    keyword: "pox/smallpox",
    reading: "トウ",
    radical: "痘",
    componentHint: "classical radical 104",
    examples: [
      {word: "天然痘", reading: "てんねんとう", meaning: "smallpox; variola"},
      {word: "痘痕", reading: "あばた", meaning: "pockmark"},
      {word: "種痘", reading: "しゅとう", meaning: "(smallpox) vaccination; inoculation"}
    ],
  },
  {
    kanji: "瘍",
    keyword: "swelling/boil",
    reading: "かさ / ヨウ",
    radical: "瘍",
    componentHint: "classical radical 104",
    examples: [
      {word: "腫瘍", reading: "しゅよう", meaning: "tumor; tumour"},
      {word: "胃潰瘍", reading: "いかいよう", meaning: "stomach ulcer"},
      {word: "潰瘍", reading: "かいよう", meaning: "ulcer"}
    ],
  },
  {
    kanji: "癌",
    keyword: "cancer/cancerous evil",
    reading: "ガン",
    radical: "癌",
    componentHint: "classical radical 104",
    examples: [
      {word: "胃癌", reading: "いがん", meaning: "stomach cancer"},
      {word: "肺癌", reading: "はいがん", meaning: "lung cancer"},
      {word: "発癌", reading: "はつがん", meaning: "cancer causing; carcinogenesis"}
    ],
  },
  {
    kanji: "痩",
    keyword: "get thin",
    reading: "や.せる / ソウ / チュウ / シュウ",
    radical: "痩",
    componentHint: "classical radical 104",
    examples: [
      {word: "痩せる", reading: "やせる", meaning: "to become thin; to lose weight"},
      {word: "痩せ", reading: "やせ", meaning: "emaciation; extreme thinness"},
      {word: "痩る", reading: "やせる", meaning: "to become thin; to lose weight"}
    ],
  },
  {
    kanji: "疲",
    keyword: "exhausted/tire",
    reading: "つか.れる / -づか.れ / つか.らす / ヒ",
    radical: "疲",
    componentHint: "classical radical 104",
    examples: [
      {word: "疲れる", reading: "つかれる", meaning: "to get tired; to tire"},
      {word: "疲労", reading: "ひろう", meaning: "fatigue; weariness"},
      {word: "疲れ", reading: "つかれ", meaning: "tiredness; fatigue"}
    ],
  },
  {
    kanji: "被",
    keyword: "incur/cover",
    reading: "こうむ.る / おお.う / かぶ.る / かぶ.せる / ヒ",
    radical: "被",
    componentHint: "classical radical 145",
    examples: [
      {word: "被害", reading: "ひがい", meaning: "(suffering) damage; injury"},
      {word: "被告", reading: "ひこく", meaning: "defendant; the accused"},
      {word: "被る", reading: "かぶる", meaning: "to put on (one's head); to wear"}
    ],
  },
  {
    kanji: "披",
    keyword: "expose/open",
    reading: "ヒ",
    radical: "披",
    componentHint: "classical radical 64",
    examples: [
      {word: "披露", reading: "ひろう", meaning: "announcement; presentation"},
      {word: "披露宴", reading: "ひろうえん", meaning: "reception (wedding)"},
      {word: "披瀝", reading: "ひれき", meaning: "express one's opinion; making known"}
    ],
  },
  {
    kanji: "抜",
    keyword: "slip out/extract",
    reading: "ぬ.く / -ぬ.く / ぬ.き / ぬ.ける / バツ / ハツ / ハイ",
    radical: "抜",
    componentHint: "classical radical 64",
    examples: [
      {word: "抜ける", reading: "ぬける", meaning: "to come out; to fall out"},
      {word: "抜く", reading: "ぬく", meaning: "to extract; to omit"},
      {word: "抜け出す", reading: "ぬけだす", meaning: "to slip out; to sneak away"}
    ],
  },
  {
    kanji: "控",
    keyword: "withdraw/draw in",
    reading: "ひか.える / ひか.え / コウ",
    radical: "控",
    componentHint: "classical radical 64",
    examples: [
      {word: "控える", reading: "ひかえる", meaning: "to be temperate in; to refrain"},
      {word: "控えめ", reading: "ひかえめ", meaning: "moderate; reserved"},
      {word: "控え", reading: "ひかえ", meaning: "reserve; spare"}
    ],
  },
  {
    kanji: "扶",
    keyword: "aid/help",
    reading: "たす.ける / フ",
    radical: "扶",
    componentHint: "classical radical 64",
    examples: [
      {word: "扶持", reading: "ふち", meaning: "ration; stipend"},
      {word: "扶ける", reading: "たすける", meaning: "to help; to save"},
      {word: "扶養", reading: "ふよう", meaning: "support (family, esp. dependents: children or spouse); maintenance"}
    ],
  },
  {
    kanji: "抹",
    keyword: "rub/paint",
    reading: "マツ",
    radical: "抹",
    componentHint: "classical radical 64",
    examples: [
      {word: "抹殺", reading: "まっさつ", meaning: "erasure; denial"},
      {word: "一抹", reading: "いちまつ", meaning: "(a) touch of; tinge of"},
      {word: "抹消", reading: "まっしょう", meaning: "erasure; delete (e.g. DEL character)"}
    ],
  },
  {
    kanji: "拓",
    keyword: "clear (the land)/open",
    reading: "ひら.く / タク",
    radical: "拓",
    componentHint: "classical radical 64",
    examples: [
      {word: "開拓", reading: "かいたく", meaning: "reclamation (of wasteland); cultivation"},
      {word: "拓く", reading: "ひらく", meaning: "to open (e.g. path); to clear (the way)"},
      {word: "干拓", reading: "かんたく", meaning: "land reclamation (from sea)"}
    ],
  },
  {
    kanji: "拷",
    keyword: "torture/beat",
    reading: "ゴウ",
    radical: "拷",
    componentHint: "classical radical 64",
    examples: [
      {word: "拷問", reading: "ごうもん", meaning: "torture; the rack"},
      {word: "拷器", reading: "ごうき", meaning: "instruments of torture"},
      {word: "拷訊", reading: "ごうじん", meaning: "torture"}
    ],
  },
  {
    kanji: "楼",
    keyword: "watchtower/lookout",
    reading: "たかどの / ロウ",
    radical: "楼",
    componentHint: "classical radical 75",
    examples: [
      {word: "蜃気楼", reading: "しんきろう", meaning: "mirage"},
      {word: "望楼", reading: "ぼうろう", meaning: "watchtower; observation tower"},
      {word: "楼閣", reading: "ろうかく", meaning: "multistoried building"}
    ],
  },
  {
    kanji: "壇",
    keyword: "podium/stage",
    reading: "ダン / タン",
    radical: "壇",
    componentHint: "classical radical 32",
    examples: [
      {word: "祭壇", reading: "さいだん", meaning: "altar"},
      {word: "花壇", reading: "かだん", meaning: "flower bed"},
      {word: "仏壇", reading: "ぶつだん", meaning: "Buddhist (household) altar"}
    ],
  },
  {
    kanji: "塔",
    keyword: "pagoda/tower",
    reading: "トウ",
    radical: "塔",
    componentHint: "classical radical 32",
    examples: [
      {word: "尖塔", reading: "せんとう", meaning: "spire; steeple"},
      {word: "砲塔", reading: "ほうとう", meaning: "gun turret"},
      {word: "バベルの塔", reading: "バベルのとう", meaning: "Tower of Babel"}
    ],
  },
  {
    kanji: "搭",
    keyword: "board/load (a vehicle)",
    reading: "トウ",
    radical: "搭",
    componentHint: "classical radical 64",
    examples: [
      {word: "搭乗", reading: "とうじょう", meaning: "embarkation; boarding (an aeroplane, airplane)"},
      {word: "搭載", reading: "とうさい", meaning: "loading (on board); equipping"},
      {word: "搭乗券", reading: "とうじょうけん", meaning: "boarding passes; boarding tickets"}
    ],
  },
  {
    kanji: "寡",
    keyword: "widow/minority",
    reading: "カ",
    radical: "寡",
    componentHint: "classical radical 40",
    examples: [
      {word: "寡黙", reading: "かもく", meaning: "silent (person); shy"},
      {word: "寡婦", reading: "かふ", meaning: "widow; divorced woman not remarried"},
      {word: "多寡", reading: "たか", meaning: "degree (of something); greatness or smallness (of something)"}
    ],
  },
  {
    kanji: "賓",
    keyword: "V.I.P./guest",
    reading: "ヒン",
    radical: "賓",
    componentHint: "classical radical 154",
    examples: [
      {word: "賓客", reading: "ひんかく", meaning: "guest of honour; guest of honor"},
      {word: "来賓", reading: "らいひん", meaning: "guest; visitor"},
      {word: "貴賓", reading: "きひん", meaning: "noble visitor"}
    ],
  },
  {
    kanji: "飾",
    keyword: "decorate/ornament",
    reading: "かざ.る / かざ.り / ショク",
    radical: "飾",
    componentHint: "classical radical 184",
    examples: [
      {word: "飾る", reading: "かざる", meaning: "to decorate; to ornament"},
      {word: "飾り", reading: "かざり", meaning: "decoration"},
      {word: "装飾", reading: "そうしょく", meaning: "ornament"}
    ],
  },
  {
    kanji: "飽",
    keyword: "sated/tired of",
    reading: "あ.きる / あ.かす / あ.く / ホウ",
    radical: "飽",
    componentHint: "classical radical 184",
    examples: [
      {word: "飽きる", reading: "あきる", meaning: "to get tired of; to lose interest in"},
      {word: "飽く", reading: "あく", meaning: "to tire of; to lose interest in"},
      {word: "飽き", reading: "あき", meaning: "weariness; tiresomeness"}
    ],
  },
  {
    kanji: "餓",
    keyword: "starve/hungry",
    reading: "う.える / ガ",
    radical: "餓",
    componentHint: "classical radical 184",
    examples: [
      {word: "餓鬼", reading: "がき", meaning: "brat; kids"},
      {word: "餓死", reading: "がし", meaning: "(death from) starvation; starving to death"},
      {word: "飢餓", reading: "きが", meaning: "starvation; famine"}
    ],
  },
  {
    kanji: "飢",
    keyword: "hungry/starve",
    reading: "う.える / キ",
    radical: "飢",
    componentHint: "classical radical 184",
    examples: [
      {word: "飢える", reading: "うえる", meaning: "to starve; to thirst"},
      {word: "飢え", reading: "うえ", meaning: "hunger; starvation"},
      {word: "飢餓", reading: "きが", meaning: "starvation; famine"}
    ],
  },
  {
    kanji: "机",
    keyword: "desk/table",
    reading: "つくえ / キ",
    radical: "机",
    componentHint: "classical radical 75",
    examples: [
      {word: "机上", reading: "きじょう", meaning: "on the desk; theoretical"},
      {word: "文机", reading: "ふづくえ", meaning: "Japanese-style writing desk"},
      {word: "小机", reading: "こづくえ", meaning: "small desk"}
    ],
  },
  {
    kanji: "冗",
    keyword: "superfluous/uselessness",
    reading: "ジョウ",
    radical: "冗",
    componentHint: "classical radical 14",
    examples: [
      {word: "冗談", reading: "じょうだん", meaning: "jest; joke"},
      {word: "冗談口", reading: "じょうだんぐち", meaning: "joke"},
      {word: "冗長", reading: "じょうちょう", meaning: "tedious; verbose"}
    ],
  },
  {
    kanji: "冠",
    keyword: "crown/best",
    reading: "かんむり / カン",
    radical: "冠",
    componentHint: "classical radical 14",
    examples: [
      {word: "王冠", reading: "おうかん", meaning: "crown; diadem"},
      {word: "冠す", reading: "かんす", meaning: "to crown; to cap"},
      {word: "戴冠", reading: "たいかん", meaning: "coronation; crowning"}
    ],
  },
  {
    kanji: "離",
    keyword: "detach/separation",
    reading: "はな.れる / はな.す / リ",
    radical: "離",
    componentHint: "classical radical 172",
    examples: [
      {word: "離れる", reading: "はなれる", meaning: "to be separated; to be apart"},
      {word: "距離", reading: "きょり", meaning: "distance; range"},
      {word: "離す", reading: "はなす", meaning: "to separate; to part"}
    ],
  },
  {
    kanji: "胸",
    keyword: "bosom/breast",
    reading: "むね / むな- / キョウ",
    radical: "胸",
    componentHint: "classical radical 130",
    examples: [
      {word: "度胸", reading: "どきょう", meaning: "courage; bravery"},
      {word: "胸元", reading: "むなもと", meaning: "breast; chest"},
      {word: "胸中", reading: "きょうちゅう", meaning: "one's heart; one's mind"}
    ],
  },
  {
    kanji: "悩",
    keyword: "trouble/worry",
    reading: "なや.む / なや.ます / なや.ましい / なやみ / ノウ",
    radical: "悩",
    componentHint: "classical radical 61",
    examples: [
      {word: "悩む", reading: "なやむ", meaning: "to be worried; to be troubled"},
      {word: "悩み", reading: "なやみ", meaning: "trouble; troubles"},
      {word: "苦悩", reading: "くのう", meaning: "suffering; distress"}
    ],
  },
  {
    kanji: "脳",
    keyword: "brain/memory",
    reading: "のうずる / ノウ / ドウ",
    radical: "脳",
    componentHint: "classical radical 130",
    examples: [
      {word: "頭脳", reading: "ずのう", meaning: "head; brains"},
      {word: "脳裏", reading: "のうり", meaning: "one's mind"},
      {word: "脳髄", reading: "のうずい", meaning: "brain"}
    ],
  },
  {
    kanji: "臓",
    keyword: "entrails/viscera",
    reading: "はらわた / ゾウ",
    radical: "臓",
    componentHint: "classical radical 130",
    examples: [
      {word: "心臓", reading: "しんぞう", meaning: "heart; guts"},
      {word: "内臓", reading: "ないぞう", meaning: "internal organs; intestines"},
      {word: "肝臓", reading: "かんぞう", meaning: "liver"}
    ],
  },
  {
    kanji: "胃",
    keyword: "stomach/paunch",
    reading: "イ",
    radical: "胃",
    componentHint: "classical radical 130",
    examples: [
      {word: "胃袋", reading: "いぶくろ", meaning: "stomach; breadbasket"},
      {word: "胃腸", reading: "いちょう", meaning: "stomach; gastrointestine"},
      {word: "胃液", reading: "いえき", meaning: "gastric juice"}
    ],
  },
  {
    kanji: "炎",
    keyword: "inflammation/flame",
    reading: "ほのお / エン",
    radical: "炎",
    componentHint: "classical radical 86",
    examples: [
      {word: "陽炎", reading: "かげろう", meaning: "heat haze; shimmer of hot air"},
      {word: "火炎", reading: "かえん", meaning: "flame; blaze"},
      {word: "炎上", reading: "えんじょう", meaning: "blazing up; destruction of a large building by fire"}
    ],
  },
  {
    kanji: "談",
    keyword: "discuss/talk",
    reading: "ダン",
    radical: "談",
    componentHint: "classical radical 149",
    examples: [
      {word: "相談", reading: "そうだん", meaning: "consultation; discussion"},
      {word: "冗談", reading: "じょうだん", meaning: "jest; joke"},
      {word: "縁談", reading: "えんだん", meaning: "marriage proposal; engagement"}
    ],
  },
  {
    kanji: "淡",
    keyword: "thin/faint",
    reading: "あわ.い / タン",
    radical: "淡",
    componentHint: "classical radical 85",
    examples: [
      {word: "淡い", reading: "あわい", meaning: "light; faint"},
      {word: "淡々", reading: "たんたん", meaning: "uninterested; unconcerned"},
      {word: "冷淡", reading: "れいたん", meaning: "coolness; indifference"}
    ],
  },
  {
    kanji: "災",
    keyword: "disaster/calamity",
    reading: "わざわ.い / サイ",
    radical: "災",
    componentHint: "classical radical 86",
    examples: [
      {word: "災難", reading: "さいなん", meaning: "calamity; misfortune"},
      {word: "火災", reading: "かさい", meaning: "conflagration; fire"},
      {word: "災害", reading: "さいがい", meaning: "calamity; disaster"}
    ],
  },
  {
    kanji: "肝",
    keyword: "liver/pluck",
    reading: "きも / カン",
    radical: "肝",
    componentHint: "classical radical 130",
    examples: [
      {word: "肝心", reading: "かんじん", meaning: "essential; fundamental"},
      {word: "肝腎", reading: "かんじん", meaning: "essential; fundamental"},
      {word: "肝臓", reading: "かんぞう", meaning: "liver"}
    ],
  },
  {
    kanji: "肺",
    keyword: "lungs",
    reading: "ハイ",
    radical: "肺",
    componentHint: "classical radical 130",
    examples: [
      {word: "肺病", reading: "はいびょう", meaning: "lung disease; chest trouble"},
      {word: "肺炎", reading: "はいえん", meaning: "pneumonia"},
      {word: "肺結核", reading: "はいけっかく", meaning: "pulmonary tuberculosis; consumption"}
    ],
  },
  {
    kanji: "胆",
    keyword: "gall bladder/courage",
    reading: "きも / タン",
    radical: "胆",
    componentHint: "classical radical 130",
    examples: [
      {word: "大胆", reading: "だいたん", meaning: "bold; daring"},
      {word: "落胆", reading: "らくたん", meaning: "discouragement; despondency"},
      {word: "魂胆", reading: "こんたん", meaning: "soul; ulterior motive"}
    ],
  },
  {
    kanji: "腺",
    keyword: "gland",
    reading: "セン",
    radical: "腺",
    componentHint: "classical radical 130",
    examples: [
      {word: "涙腺", reading: "るいせん", meaning: "tear gland; lacrimal gland"},
      {word: "前立腺", reading: "ぜんりつせん", meaning: "prostate gland"},
      {word: "扁桃腺", reading: "へんとうせん", meaning: "tonsils; tonsillitis"}
    ],
  },
  {
    kanji: "胞",
    keyword: "placenta/sac",
    reading: "ホウ",
    radical: "胞",
    componentHint: "classical radical 130",
    examples: [
      {word: "細胞", reading: "さいぼう", meaning: "cell"},
      {word: "同胞", reading: "どうほう", meaning: "brethren; brothers"},
      {word: "単細胞", reading: "たんさいぼう", meaning: "single cell; simple-minded person"}
    ],
  },
  {
    kanji: "腸",
    keyword: "intestines/guts",
    reading: "はらわた / わた / チョウ",
    radical: "腸",
    componentHint: "classical radical 130",
    examples: [
      {word: "胃腸", reading: "いちょう", meaning: "stomach; gastrointestine"},
      {word: "盲腸", reading: "もうちょう", meaning: "appendix; cecum"},
      {word: "断腸", reading: "だんちょう", meaning: "heartbreak"}
    ],
  },
  {
    kanji: "胎",
    keyword: "womb/uterus",
    reading: "タイ",
    radical: "胎",
    componentHint: "classical radical 130",
    examples: [
      {word: "胎児", reading: "たいじ", meaning: "fetus; foetus"},
      {word: "胎内", reading: "たいない", meaning: "interior of the womb (of a pregnant woman); interior of the uterus"},
      {word: "堕胎", reading: "だたい", meaning: "abortion; feticide"}
    ],
  },
  {
    kanji: "腰",
    keyword: "loins/hips",
    reading: "こし / ヨウ",
    radical: "腰",
    componentHint: "classical radical 130",
    examples: [
      {word: "腰かける", reading: "こしかける", meaning: "to sit (down)"},
      {word: "腰掛ける", reading: "こしかける", meaning: "to sit (down)"},
      {word: "物腰", reading: "ものごし", meaning: "manner; demeanour"}
    ],
  },
  {
    kanji: "肘",
    keyword: "elbow/arm",
    reading: "ひじ / チュウ",
    radical: "肘",
    componentHint: "classical radical 130",
    examples: [
      {word: "肘掛け", reading: "ひじかけ", meaning: "armrest (of a chair); elbow rest"},
      {word: "肘掛", reading: "ひじかけ", meaning: "armrest (of a chair); elbow rest"},
      {word: "肩肘", reading: "かたひじ", meaning: "shoulder and elbow"}
    ],
  },
  {
    kanji: "膝",
    keyword: "knee/lap",
    reading: "ひざ / シツ",
    radical: "膝",
    componentHint: "classical radical 130",
    examples: [
      {word: "膝頭", reading: "ひざがしら", meaning: "kneecap"},
      {word: "膝元", reading: "ひざもと", meaning: "near one's knee; below one's knee"},
      {word: "膝下", reading: "ひざもと", meaning: "near one's knee; below one's knee"}
    ],
  },
  {
    kanji: "股",
    keyword: "thigh/crotch",
    reading: "また / もも / コ",
    radical: "股",
    componentHint: "classical radical 130",
    examples: [
      {word: "大股", reading: "おおまた", meaning: "straddle; long (great, swinging) stride"},
      {word: "股間", reading: "こかん", meaning: "nether region; between the legs"},
      {word: "太股", reading: "ふともも", meaning: "thigh; buttocks"}
    ],
  },
  {
    kanji: "肢",
    keyword: "limb/arms & legs",
    reading: "シ",
    radical: "肢",
    componentHint: "classical radical 130",
    examples: [
      {word: "四肢", reading: "しし", meaning: "limbs; extremities"},
      {word: "選択肢", reading: "せんたくし", meaning: "choices; alternatives"},
      {word: "肢体", reading: "したい", meaning: "limbs; members"}
    ],
  },
  {
    kanji: "胴",
    keyword: "trunk/torso",
    reading: "ドウ",
    radical: "胴",
    componentHint: "classical radical 130",
    examples: [
      {word: "胴体", reading: "どうたい", meaning: "body; trunk"},
      {word: "胴着", reading: "どうぎ", meaning: "(sleeveless) undergarment; padded undershirt"},
      {word: "胴衣", reading: "どうい", meaning: "padded, sleeveless undergarment; vest"}
    ],
  },
  {
    kanji: "脇",
    keyword: "armpit/the other way",
    reading: "わき / わけ / キョウ",
    radical: "脇",
    componentHint: "classical radical 130",
    examples: [
      {word: "脇腹", reading: "わきばら", meaning: "side; flank"},
      {word: "脇差", reading: "わきざし", meaning: "short sword"},
      {word: "小脇", reading: "こわき", meaning: "under one's arm; (in) the armpit"}
    ],
  },
  {
    kanji: "脂",
    keyword: "fat/grease",
    reading: "あぶら / シ",
    radical: "脂",
    componentHint: "classical radical 130",
    examples: [
      {word: "脂肪", reading: "しぼう", meaning: "fat; grease"},
      {word: "脂汗", reading: "あぶらあせ", meaning: "cold sweat; greasy sweat"},
      {word: "樹脂", reading: "じゅし", meaning: "resin; rosin"}
    ],
  },
  {
    kanji: "詣",
    keyword: "visit a temple/arrive",
    reading: "けい.する / まい.る / いた.る / もう.でる / ケイ / ゲイ",
    radical: "詣",
    componentHint: "classical radical 149",
    examples: [
      {word: "参詣", reading: "さんけい", meaning: "temple or shrine visit; pilgrimage"},
      {word: "詣る", reading: "まいる", meaning: "to go; to come"},
      {word: "詣でる", reading: "もうでる", meaning: "to make a pilgrimage"}
    ],
  },
  {
    kanji: "肪",
    keyword: "obese/fat",
    reading: "ボウ",
    radical: "肪",
    componentHint: "classical radical 130",
    examples: [
      {word: "脂肪", reading: "しぼう", meaning: "fat; grease"},
      {word: "皮下脂肪", reading: "ひかしぼう", meaning: "subcutaneous fat"},
      {word: "脂肪酸", reading: "しぼうさん", meaning: "fatty acid"}
    ],
  },
  {
    kanji: "肌",
    keyword: "texture/skin",
    reading: "はだ / キ",
    radical: "肌",
    componentHint: "classical radical 130",
    examples: [
      {word: "鳥肌", reading: "とりはだ", meaning: "gooseflesh; goose pimples"},
      {word: "肌寒い", reading: "はださむい", meaning: "chilly; unpleasantly cold"},
      {word: "肌着", reading: "はだぎ", meaning: "underwear; underclothes"}
    ],
  },
  {
    kanji: "膚",
    keyword: "skin/body",
    reading: "はだ / フ",
    radical: "膚",
    componentHint: "classical radical 130",
    examples: [
      {word: "皮膚", reading: "ひふ", meaning: "skin"},
      {word: "完膚", reading: "かんぷ", meaning: "unwounded skin"},
      {word: "身体髪膚", reading: "しんたいはっぷ", meaning: "entire human body; every inch of one's body"}
    ],
  },
  {
    kanji: "慮",
    keyword: "prudence/thought",
    reading: "おもんぱく.る / おもんぱか.る / リョ",
    radical: "慮",
    componentHint: "classical radical 61",
    examples: [
      {word: "遠慮", reading: "えんりょ", meaning: "reserve; constraint"},
      {word: "考慮", reading: "こうりょ", meaning: "consideration; taking into account"},
      {word: "配慮", reading: "はいりょ", meaning: "consideration; concern"}
    ],
  },
  {
    kanji: "虐",
    keyword: "tyrannize/oppress",
    reading: "しいた.げる / ギャク",
    radical: "虐",
    componentHint: "classical radical 141",
    examples: [
      {word: "虐待", reading: "ぎゃくたい", meaning: "abuse; ill-treatment"},
      {word: "虐殺", reading: "ぎゃくさつ", meaning: "atrocity; massive killing"},
      {word: "残虐", reading: "ざんぎゃく", meaning: "cruelty; brutality"}
    ],
  },
  {
    kanji: "虞",
    keyword: "fear/uneasiness",
    reading: "おそれ / おもんぱか.る / はか.る / うれ.える / グ",
    radical: "虞",
    componentHint: "classical radical 141",
    examples: [
      {word: "虞美人草", reading: "ぐびじんそう", meaning: "field poppy; Papaver rhoeas"},
      {word: "虞犯", reading: "ぐはん", meaning: "likelihood of committing a crime; pre-delinquent"},
      {word: "不虞", reading: "ふぐ", meaning: "emergency"}
    ],
  },
  {
    kanji: "劇",
    keyword: "drama/play",
    reading: "ゲキ",
    radical: "劇",
    componentHint: "classical radical 18",
    examples: [
      {word: "悲劇", reading: "ひげき", meaning: "tragedy; disaster"},
      {word: "劇場", reading: "げきじょう", meaning: "theatre; theater"},
      {word: "演劇", reading: "えんげき", meaning: "drama; theatre"}
    ],
  },
  {
    kanji: "虚",
    keyword: "void/emptiness",
    reading: "むな.しい / うつ.ろ / キョ / コ",
    radical: "虚",
    componentHint: "classical radical 141",
    examples: [
      {word: "虚空", reading: "こくう", meaning: "empty space; empty sky"},
      {word: "空虚", reading: "くうきょ", meaning: "emptiness; vacancy"},
      {word: "虚無", reading: "きょむ", meaning: "nihility; nothingness"}
    ],
  },
  {
    kanji: "虜",
    keyword: "captive/barbarian",
    reading: "とりこ / とりく / リョ / ロ",
    radical: "虜",
    componentHint: "classical radical 141",
    examples: [
      {word: "捕虜", reading: "ほりょ", meaning: "prisoner (of war)"},
      {word: "虜囚", reading: "りょしゅう", meaning: "captive; prisoner"},
      {word: "俘虜", reading: "ふりょ", meaning: "captive; prisoner of war"}
    ],
  },
  {
    kanji: "勇",
    keyword: "courage/cheer up",
    reading: "いさ.む / ユウ",
    radical: "勇",
    componentHint: "classical radical 19",
    examples: [
      {word: "勇気", reading: "ゆうき", meaning: "courage; bravery"},
      {word: "勇敢", reading: "ゆうかん", meaning: "brave; heroic"},
      {word: "勇ましい", reading: "いさましい", meaning: "brave; valiant"}
    ],
  },
  {
    kanji: "湧",
    keyword: "boil/ferment",
    reading: "わ.く / ユウ / ヨウ / ユ",
    radical: "湧",
    componentHint: "classical radical 85",
    examples: [
      {word: "湧く", reading: "わく", meaning: "to well (up); to gush forth (of water)"},
      {word: "湧き出る", reading: "わきでる", meaning: "to gush forth"},
      {word: "湧き水", reading: "わきみず", meaning: "spring water"}
    ],
  },
  {
    kanji: "戯",
    keyword: "frolic/play",
    reading: "たわむ.れる / ざ.れる / じゃ.れる / ギ / ゲ",
    radical: "戯",
    componentHint: "classical radical 62",
    examples: [
      {word: "戯る", reading: "たわむる", meaning: "to be playful; to gambol"},
      {word: "戯れる", reading: "ざれる", meaning: "to be playful; to gambol"},
      {word: "悪戯", reading: "いたずら", meaning: "mischief; prank"}
    ],
  },
  {
    kanji: "繊",
    keyword: "slender/fine",
    reading: "セン",
    radical: "繊",
    componentHint: "classical radical 120",
    examples: [
      {word: "繊細", reading: "せんさい", meaning: "dainty; delicate (e.g. fingers)"},
      {word: "繊維", reading: "せんい", meaning: "fibre; fiber"},
      {word: "繊弱", reading: "せんじゃく", meaning: "delicate; frail"}
    ],
  },
  {
    kanji: "緻",
    keyword: "fine (i.e. not coarse)",
    reading: "こまか.い / チ",
    radical: "緻",
    componentHint: "classical radical 120",
    examples: [
      {word: "緻密", reading: "ちみつ", meaning: "minute; fine"},
      {word: "精緻", reading: "せいち", meaning: "delicate; minute"},
      {word: "巧緻", reading: "こうち", meaning: "elaborate; exquisite"}
    ],
  },
  {
    kanji: "嘘",
    keyword: "lie/falsehood",
    reading: "うそ / ふ.く / キョ / コ",
    radical: "嘘",
    componentHint: "classical radical 30",
    examples: [
      {word: "嘘つき", reading: "うそつき", meaning: "liar (sometimes said with not much seriousness); fibber"},
      {word: "嘘っぱち", reading: "うそっぱち", meaning: "downright lie"},
      {word: "嘘八百", reading: "うそはっぴゃく", meaning: "full of lies"}
    ],
  },
  {
    kanji: "噂",
    keyword: "rumor/gossip",
    reading: "うわさ / ソン",
    radical: "噂",
    componentHint: "classical radical 30",
    examples: [
      {word: "噂話", reading: "うわさばなし", meaning: "gossip"},
      {word: "噂通り", reading: "うわさどおり", meaning: "rumor that appears to be quite true (rumour)"},
      {word: "噂話し", reading: "うわさばなし", meaning: "gossip"}
    ],
  },
  {
    kanji: "樽",
    keyword: "barrel/cask",
    reading: "たる / ソン",
    radical: "樽",
    componentHint: "classical radical 75",
    examples: [
      {word: "酒樽", reading: "さかだる", meaning: "wine cask or barrel"},
      {word: "ビヤ樽", reading: "ビヤだる", meaning: "beer barrel"},
      {word: "角樽", reading: "つのだる", meaning: "two-handled keg"}
    ],
  },
  {
    kanji: "距",
    keyword: "long-distance/spur",
    reading: "へだ.たる / けづめ / キョ",
    radical: "距",
    componentHint: "classical radical 157",
    examples: [
      {word: "距離", reading: "きょり", meaning: "distance; range"},
      {word: "長距離", reading: "ちょうきょり", meaning: "long distance; long haul"},
      {word: "遠距離", reading: "えんきょり", meaning: "long distance; tele-"}
    ],
  },
  {
    kanji: "拒",
    keyword: "repel/refuse",
    reading: "こば.む / キョ / ゴ",
    radical: "拒",
    componentHint: "classical radical 64",
    examples: [
      {word: "拒否", reading: "きょひ", meaning: "denial; veto"},
      {word: "拒む", reading: "こばむ", meaning: "to refuse; to reject"},
      {word: "拒絶", reading: "きょぜつ", meaning: "refusal; rejection"}
    ],
  },
  {
    kanji: "嬉",
    keyword: "glad/pleased",
    reading: "うれ.しい / たの.しむ / キ",
    radical: "嬉",
    componentHint: "classical radical 38",
    examples: [
      {word: "嬉しい", reading: "うれしい", meaning: "happy; glad"},
      {word: "嬉々", reading: "きき", meaning: "merry; joyful"},
      {word: "嬉し泣き", reading: "うれしなき", meaning: "weeping for joy; crying with happiness"}
    ],
  },
  {
    kanji: "鼓",
    keyword: "drum/beat",
    reading: "つづみ / コ",
    radical: "鼓",
    componentHint: "classical radical 207",
    examples: [
      {word: "太鼓", reading: "たいこ", meaning: "drum"},
      {word: "鼓動", reading: "こどう", meaning: "beat; palpitation"},
      {word: "鼓膜", reading: "こまく", meaning: "eardrum; tympanic membrane"}
    ],
  },
  {
    kanji: "樹",
    keyword: "timber/trees",
    reading: "き / ジュ",
    radical: "樹",
    componentHint: "classical radical 75",
    examples: [
      {word: "樹木", reading: "じゅもく", meaning: "trees and shrubs; arbour"},
      {word: "大樹", reading: "たいじゅ", meaning: "large tree; big tree"},
      {word: "果樹", reading: "かじゅ", meaning: "fruit tree"}
    ],
  },
  {
    kanji: "膨",
    keyword: "swell/get fat",
    reading: "ふく.らむ / ふく.れる / ボウ",
    radical: "膨",
    componentHint: "classical radical 130",
    examples: [
      {word: "膨らむ", reading: "ふくらむ", meaning: "to expand; to swell (out)"},
      {word: "膨大", reading: "ぼうだい", meaning: "huge; vast"},
      {word: "膨れる", reading: "ふくれる", meaning: "to swell (out); to expand"}
    ],
  },
  {
    kanji: "脹",
    keyword: "dilate/distend",
    reading: "は.れる / ふく.らむ / ふく.れる / チョウ",
    radical: "脹",
    componentHint: "classical radical 130",
    examples: [
      {word: "膨脹", reading: "ぼうちょう", meaning: "expansion; swelling"},
      {word: "脹れる", reading: "はれる", meaning: "to swell (from inflammation); to become swollen"},
      {word: "脹らむ", reading: "ふくらむ", meaning: "to expand; to swell (out)"}
    ],
  },
  {
    kanji: "張",
    keyword: "lengthen/counter for bows & stringed instruments",
    reading: "は.る / -は.り / -ば.り / チョウ",
    radical: "張",
    componentHint: "classical radical 57",
    examples: [
      {word: "張る", reading: "はる", meaning: "to stick; to paste"},
      {word: "緊張", reading: "きんちょう", meaning: "tension; mental strain"},
      {word: "主張", reading: "しゅちょう", meaning: "claim; request"}
    ],
  },
  {
    kanji: "帳",
    keyword: "notebook/account book",
    reading: "とばり / チョウ",
    radical: "帳",
    componentHint: "classical radical 50",
    examples: [
      {word: "手帳", reading: "てちょう", meaning: "notebook; memo pad"},
      {word: "帳場", reading: "ちょうば", meaning: "reception"},
      {word: "蚊帳", reading: "かや", meaning: "mosquito net"}
    ],
  },
  {
    kanji: "腫",
    keyword: "tumor/swelling",
    reading: "は.れる / は.れ / は.らす / く.む / シュ / ショウ",
    radical: "腫",
    componentHint: "classical radical 130",
    examples: [
      {word: "腫れる", reading: "はれる", meaning: "to swell (from inflammation); to become swollen"},
      {word: "腫れ", reading: "はれ", meaning: "swelling; boil"},
      {word: "腫れ上がる", reading: "はれあがる", meaning: "to swell up"}
    ],
  },
  {
    kanji: "肥",
    keyword: "fertilizer/get fat",
    reading: "こ.える / こえ / こ.やす / こ.やし / ヒ",
    radical: "肥",
    componentHint: "classical radical 130",
    examples: [
      {word: "肥る", reading: "ふとる", meaning: "to grow fat (stout, plump); to become fat"},
      {word: "肥える", reading: "こえる", meaning: "to grow fat; to gain weight"},
      {word: "肥満", reading: "ひまん", meaning: "corpulence; fatness"}
    ],
  },
  {
    kanji: "把",
    keyword: "grasp/faggot",
    reading: "ハ / ワ",
    radical: "把",
    componentHint: "classical radical 64",
    examples: [
      {word: "把握", reading: "はあく", meaning: "grasp; catch"},
      {word: "把手", reading: "とって", meaning: "handle; grip"},
      {word: "大雑把", reading: "おおざっぱ", meaning: "rough (as in not precise); broad"}
    ],
  },
  {
    kanji: "誇",
    keyword: "boast/be proud",
    reading: "ほこ.る / コ",
    radical: "誇",
    componentHint: "classical radical 149",
    examples: [
      {word: "誇り", reading: "ほこり", meaning: "pride; boast"},
      {word: "誇る", reading: "ほこる", meaning: "to boast of; to be proud of"},
      {word: "誇張", reading: "こちょう", meaning: "exaggeration"}
    ],
  },
  {
    kanji: "覧",
    keyword: "perusal/see",
    reading: "み.る / ラン",
    radical: "覧",
    componentHint: "classical radical 147",
    examples: [
      {word: "ご覧", reading: "ごらん", meaning: "(please) try to; (please) look"},
      {word: "御覧", reading: "ごらん", meaning: "(please) try to; (please) look"},
      {word: "展覧", reading: "てんらん", meaning: "exhibition; show"}
    ],
  },
  {
    kanji: "監",
    keyword: "oversee/official",
    reading: "カン",
    radical: "監",
    componentHint: "classical radical 108",
    examples: [
      {word: "監督", reading: "かんとく", meaning: "supervision; control"},
      {word: "監視", reading: "かんし", meaning: "monitoring; watching"},
      {word: "監獄", reading: "かんごく", meaning: "prison"}
    ],
  },
  {
    kanji: "鑑",
    keyword: "specimen/take warning from",
    reading: "かんが.みる / かがみ / カン",
    radical: "鑑",
    componentHint: "classical radical 167",
    examples: [
      {word: "鑑定", reading: "かんてい", meaning: "judgement; judgment"},
      {word: "鑑識", reading: "かんしき", meaning: "judgement; judgment"},
      {word: "鑑賞", reading: "かんしょう", meaning: "appreciation (e.g. of art); aesthetic sense"}
    ],
  },
  {
    kanji: "艦",
    keyword: "warship",
    reading: "カン",
    radical: "艦",
    componentHint: "classical radical 137",
    examples: [
      {word: "艦隊", reading: "かんたい", meaning: "(naval) fleet; armada"},
      {word: "艦長", reading: "かんちょう", meaning: "captain (of a warship)"},
      {word: "戦艦", reading: "せんかん", meaning: "battleship"}
    ],
  },
  {
    kanji: "濫",
    keyword: "excessive/overflow",
    reading: "みだ.りに / みだ.りがましい / ラン",
    radical: "濫",
    componentHint: "classical radical 85",
    examples: [
      {word: "氾濫", reading: "はんらん", meaning: "overflowing; flood"},
      {word: "濫用", reading: "らんよう", meaning: "abuse; misuse"},
      {word: "濫費", reading: "らんぴ", meaning: "waste; lavish spending"}
    ],
  },
  {
    kanji: "藍",
    keyword: "indigo",
    reading: "あい / ラン",
    radical: "藍",
    componentHint: "classical radical 140",
    examples: [
      {word: "藍子", reading: "あいご", meaning: "mottled spinefoot (Siganus fuscescens, species of Western Pacific rabbitfish); dusky rabbitfish"},
      {word: "藍色", reading: "あいいろ", meaning: "indigo blue"},
      {word: "伽藍", reading: "がらん", meaning: "temple (esp. large one); monastery"}
    ],
  },
  {
    kanji: "賢",
    keyword: "intelligent/wise",
    reading: "かしこ.い / ケン",
    radical: "賢",
    componentHint: "classical radical 154",
    examples: [
      {word: "賢い", reading: "かしこい", meaning: "wise; clever"},
      {word: "賢明", reading: "けんめい", meaning: "wisdom; intelligence"},
      {word: "賢者", reading: "けんじゃ", meaning: "wise man; wise woman"}
    ],
  },
  {
    kanji: "腎",
    keyword: "kidney",
    reading: "ジン",
    radical: "腎",
    componentHint: "classical radical 130",
    examples: [
      {word: "肝腎", reading: "かんじん", meaning: "essential; fundamental"},
      {word: "腎臓", reading: "じんぞう", meaning: "kidney"},
      {word: "副腎", reading: "ふくじん", meaning: "suprarenal body; adrenal glands"}
    ],
  },
  {
    kanji: "堅",
    keyword: "strict/hard",
    reading: "かた.い / -がた.い / ケン",
    radical: "堅",
    componentHint: "classical radical 32",
    examples: [
      {word: "堅い", reading: "かたい", meaning: "hard; solid"},
      {word: "堅固", reading: "けんご", meaning: "solid; strong"},
      {word: "堅気", reading: "かたぎ", meaning: "honest; respectable"}
    ],
  },
  {
    kanji: "緊",
    keyword: "tense/solid",
    reading: "し.める / し.まる / キン",
    radical: "緊",
    componentHint: "classical radical 120",
    examples: [
      {word: "緊張", reading: "きんちょう", meaning: "tension; mental strain"},
      {word: "緊急", reading: "きんきゅう", meaning: "urgent; pressing"},
      {word: "緊迫", reading: "きんぱく", meaning: "tension; strain"}
    ],
  },
  {
    kanji: "勃",
    keyword: "suddenness/rise",
    reading: "おこ.る / にわかに / ボツ / ホツ",
    radical: "勃",
    componentHint: "classical radical 19",
    examples: [
      {word: "勃発", reading: "ぼっぱつ", meaning: "outbreak (e.g. war); outburst"},
      {word: "勃起", reading: "ぼっき", meaning: "erection (usu. penis); standing erect"},
      {word: "勃興", reading: "ぼっこう", meaning: "sudden rise to power; sudden rise in prosperity"}
    ],
  },
  {
    kanji: "励",
    keyword: "encourage/be diligent",
    reading: "はげ.む / はげ.ます / レイ",
    radical: "励",
    componentHint: "classical radical 19",
    examples: [
      {word: "励ます", reading: "はげます", meaning: "to encourage; to cheer"},
      {word: "励む", reading: "はげむ", meaning: "to strive; to endeavour"},
      {word: "激励", reading: "げきれい", meaning: "encouragement"}
    ],
  },
  {
    kanji: "栃",
    keyword: "horse chestnut/(kokuji)",
    reading: "とち",
    radical: "栃",
    componentHint: "classical radical 75",
    examples: [
      {word: "栃の木", reading: "とちのき", meaning: "Japanese horse chestnut (Aesculus turbinata)"},
      {word: "栃麺棒", reading: "とちめんぼう", meaning: "rolling pin for making horse chestnut noodles; hurry"},
      {word: "栃若", reading: "とちわか", meaning: "Tochinishiki and Wakanohana I (dominant 1950s yokozuna)"}
    ],
  },
  {
    kanji: "茨",
    keyword: "briar/thorn",
    reading: "いばら / かや / くさぶき / シ / ジ",
    radical: "茨",
    componentHint: "classical radical 140",
    examples: [
      {word: "野茨", reading: "のいばら", meaning: "multiflora rose (Rosa multiflora)"},
      {word: "茨垣", reading: "いばらがき", meaning: "thorn hedge"},
      {word: "茨姫", reading: "いばらひめ", meaning: "Sleeping Beauty; Thorn Princess"}
    ],
  },
  {
    kanji: "羨",
    keyword: "envious/be jealous",
    reading: "うらや.む / あまり / セン / エン",
    radical: "羨",
    componentHint: "classical radical 123",
    examples: [
      {word: "羨ましい", reading: "うらやましい", meaning: "envious (feeling, etc.); jealous"},
      {word: "羨望", reading: "せんぼう", meaning: "envy"},
      {word: "羨む", reading: "うらやむ", meaning: "to envy"}
    ],
  },
  {
    kanji: "歳",
    keyword: "year-end/age",
    reading: "とし / とせ / よわい / サイ / セイ",
    radical: "歳",
    componentHint: "classical radical 77",
    examples: [
      {word: "歳月", reading: "さいげつ", meaning: "time; years"},
      {word: "二十歳", reading: "はたち", meaning: "20 years old; twenty"},
      {word: "万歳", reading: "まんざい", meaning: "door-to-door comedic duo"}
    ],
  },
  {
    kanji: "戚",
    keyword: "grieve/relatives",
    reading: "いた.む / うれ.える / みうち / ソク / セキ",
    radical: "戚",
    componentHint: "classical radical 62",
    examples: [
      {word: "親戚", reading: "しんせき", meaning: "relative; relation"},
      {word: "姻戚", reading: "いんせき", meaning: "relative by marriage; affinity"},
      {word: "縁戚", reading: "えんせき", meaning: "relative"}
    ],
  },
  {
    kanji: "叔",
    keyword: "uncle/youth",
    reading: "シュク",
    radical: "叔",
    componentHint: "classical radical 29",
    examples: [
      {word: "叔父", reading: "おじ", meaning: "uncle"},
      {word: "叔母", reading: "おば", meaning: "aunt"},
      {word: "叔父さん", reading: "おじさん", meaning: "uncle; old man"}
    ],
  },
  {
    kanji: "淑",
    keyword: "graceful/gentle",
    reading: "しと.やか / シュク",
    radical: "淑",
    componentHint: "classical radical 85",
    examples: [
      {word: "淑女", reading: "しゅくじょ", meaning: "lady"},
      {word: "貞淑", reading: "ていしゅく", meaning: "chastity; virtue"},
      {word: "淑やか", reading: "しとやか", meaning: "graceful; ladylike"}
    ],
  },
  {
    kanji: "寂",
    keyword: "loneliness/quietly",
    reading: "さび / さび.しい / さび.れる / さみ.しい / ジャク / セキ",
    radical: "寂",
    componentHint: "classical radical 40",
    examples: [
      {word: "寂しい", reading: "さびしい", meaning: "lonely; lonesome"},
      {word: "寂寥", reading: "せきりょう", meaning: "loneliness; desolateness"},
      {word: "静寂", reading: "せいじゃく", meaning: "silence; stillness"}
    ],
  },
  {
    kanji: "督",
    keyword: "coach/command",
    reading: "トク",
    radical: "督",
    componentHint: "classical radical 109",
    examples: [
      {word: "監督", reading: "かんとく", meaning: "supervision; control"},
      {word: "提督", reading: "ていとく", meaning: "admiral; commodore"},
      {word: "総督", reading: "そうとく", meaning: "governor-general; governor"}
    ],
  },
  {
    kanji: "奴",
    keyword: "guy/slave",
    reading: "やつ / やっこ / ド",
    radical: "奴",
    componentHint: "classical radical 38",
    examples: [
      {word: "奴隷", reading: "どれい", meaning: "slave; servant"},
      {word: "奴ら", reading: "やつら", meaning: "they; those guys"},
      {word: "彼奴", reading: "あいつ", meaning: "he; she"}
    ],
  },
  {
    kanji: "努",
    keyword: "toil/diligent",
    reading: "つと.める / ド",
    radical: "努",
    componentHint: "classical radical 19",
    examples: [
      {word: "努力", reading: "どりょく", meaning: "great effort; exertion"},
      {word: "努める", reading: "つとめる", meaning: "to endeavor (endeavour); to try"},
      {word: "努めて", reading: "つとめて", meaning: "as much as possible; as far as possible"}
    ],
  },
  {
    kanji: "怒",
    keyword: "angry/be offended",
    reading: "いか.る / おこ.る / ド / ヌ",
    radical: "怒",
    componentHint: "classical radical 61",
    examples: [
      {word: "怒る", reading: "おこる", meaning: "to get angry; to get mad"},
      {word: "怒り", reading: "いかり", meaning: "anger; rage"},
      {word: "怒鳴る", reading: "どなる", meaning: "to shout; to yell"}
    ],
  },
  {
    kanji: "隷",
    keyword: "slave/servant",
    reading: "したが.う / しもべ / レイ",
    radical: "隷",
    componentHint: "classical radical 171",
    examples: [
      {word: "奴隷", reading: "どれい", meaning: "slave; servant"},
      {word: "隷属", reading: "れいぞく", meaning: "subordination; servitude"},
      {word: "隷下", reading: "れいか", meaning: "subordinates; followers"}
    ],
  },
  {
    kanji: "款",
    keyword: "goodwill/article",
    reading: "カン",
    radical: "款",
    componentHint: "classical radical 76",
    examples: [
      {word: "款待", reading: "かんたい", meaning: "warm welcome; friendly reception"},
      {word: "借款", reading: "しゃっかん", meaning: "(international) loan"},
      {word: "落款", reading: "らっかん", meaning: "sign and seal; signature"}
    ],
  },
  {
    kanji: "殻",
    keyword: "husk/nut shell",
    reading: "から / がら / カク / コク / バイ",
    radical: "殻",
    componentHint: "classical radical 79",
    examples: [
      {word: "貝殻", reading: "かいがら", meaning: "shell"},
      {word: "地殻", reading: "ちかく", meaning: "earth's crust"},
      {word: "吸殻", reading: "すいがら", meaning: "cigarette end; cigarette butt"}
    ],
  },
  {
    kanji: "穀",
    keyword: "cereals/grain",
    reading: "コク",
    radical: "穀",
    componentHint: "classical radical 115",
    examples: [
      {word: "穀物", reading: "こくもつ", meaning: "grain; cereal"},
      {word: "穀倉", reading: "こくそう", meaning: "granary"},
      {word: "五穀", reading: "ごこく", meaning: "the 5 grains (wheat, rice, beans, millet (awa and kibi))"}
    ],
  },
  {
    kanji: "臼",
    keyword: "mortar",
    reading: "うす / うすづ.く / キュウ / グ",
    radical: "臼",
    componentHint: "classical radical 134",
    examples: [
      {word: "脱臼", reading: "だっきゅう", meaning: "dislocation"},
      {word: "石臼", reading: "いしうす", meaning: "stone mortar; millstone"},
      {word: "臼砲", reading: "きゅうほう", meaning: "mortar"}
    ],
  },
  {
    kanji: "毀",
    keyword: "break/destroy",
    reading: "こぼ.つ / こわ.す / こぼ.れる / こわ.れる / キ",
    radical: "毀",
    componentHint: "classical radical 79",
    examples: [
      {word: "毀す", reading: "こわす", meaning: "to break; to destroy"},
      {word: "毀損", reading: "きそん", meaning: "damage; injury"},
      {word: "毀れる", reading: "こわれる", meaning: "to be broken; to break"}
    ],
  },
  {
    kanji: "廉",
    keyword: "bargain/reason",
    reading: "レン",
    radical: "廉",
    componentHint: "classical radical 53",
    examples: [
      {word: "破廉恥", reading: "はれんち", meaning: "infamy; shameless"},
      {word: "清廉", reading: "せいれん", meaning: "honesty; integrity"},
      {word: "廉価", reading: "れんか", meaning: "low price"}
    ],
  },
  {
    kanji: "鎌",
    keyword: "sickle/scythe",
    reading: "かま / レン / ケン",
    radical: "鎌",
    componentHint: "classical radical 167",
    examples: [
      {word: "鎌首", reading: "かまくび", meaning: "sickle-shaped neck (e.g. snake, praying mantis); crooked neck"},
      {word: "大鎌", reading: "おおがま", meaning: "scythe"},
      {word: "鎖鎌", reading: "くさりがま", meaning: "sickle and chain (weapon)"}
    ],
  },
  {
    kanji: "嫌",
    keyword: "dislike/detest",
    reading: "きら.う / きら.い / いや / ケン / ゲン",
    radical: "嫌",
    componentHint: "classical radical 38",
    examples: [
      {word: "嫌い", reading: "きらい", meaning: "dislike; hate"},
      {word: "嫌う", reading: "きらう", meaning: "to hate; to dislike"},
      {word: "機嫌", reading: "きげん", meaning: "humour; humor"}
    ],
  },
  {
    kanji: "謙",
    keyword: "self-effacing/humble oneself",
    reading: "へりくだ.る / ケン",
    radical: "謙",
    componentHint: "classical radical 149",
    examples: [
      {word: "謙遜", reading: "けんそん", meaning: "humble; humility"},
      {word: "謙虚", reading: "けんきょ", meaning: "modesty; humility"},
      {word: "謙譲", reading: "けんじょう", meaning: "modesty; humility"}
    ],
  },
  {
    kanji: "遜",
    keyword: "humble/modest",
    reading: "したが.う / へりくだ.る / ゆず.る / ソン",
    radical: "遜",
    componentHint: "classical radical 162",
    examples: [
      {word: "謙遜", reading: "けんそん", meaning: "humble; humility"},
      {word: "不遜", reading: "ふそん", meaning: "arrogance; insolence"},
      {word: "遜る", reading: "へりくだる", meaning: "to deprecate oneself and praise the listener; to abase oneself"}
    ],
  },
  {
    kanji: "亀",
    keyword: "tortoise/turtle",
    reading: "かめ / キ / キュウ / キン",
    radical: "亀",
    componentHint: "classical radical 213",
    examples: [
      {word: "亀裂", reading: "きれつ", meaning: "crack; crevice"},
      {word: "海亀", reading: "うみがめ", meaning: "sea turtle"},
      {word: "亀甲", reading: "きっこう", meaning: "tortoise shell"}
    ],
  },
  {
    kanji: "練",
    keyword: "practice/gloss",
    reading: "ね.る / ね.り / レン",
    radical: "練",
    componentHint: "classical radical 120",
    examples: [
      {word: "訓練", reading: "くんれん", meaning: "practice; practising"},
      {word: "練習", reading: "れんしゅう", meaning: "practice; practising"},
      {word: "未練", reading: "みれん", meaning: "lingering affection; attachment"}
    ],
  },
  {
    kanji: "錬",
    keyword: "tempering/refine",
    reading: "ね.る / レン",
    radical: "錬",
    componentHint: "classical radical 167",
    examples: [
      {word: "錬金術", reading: "れんきんじゅつ", meaning: "alchemy; making big money (implied, by dubious means)"},
      {word: "鍛錬", reading: "たんれん", meaning: "tempering; forging"},
      {word: "精錬", reading: "せいれん", meaning: "refining; refinement"}
    ],
  },
  {
    kanji: "鍛",
    keyword: "forge/discipline",
    reading: "きた.える / タン",
    radical: "鍛",
    componentHint: "classical radical 167",
    examples: [
      {word: "鍛える", reading: "きたえる", meaning: "to forge; to temper"},
      {word: "鍛冶屋", reading: "かじや", meaning: "smith; blacksmith"},
      {word: "鍛冶", reading: "かじ", meaning: "smithing; blacksmith"}
    ],
  },
  {
    kanji: "鉱",
    keyword: "mineral/ore",
    reading: "あらがね / コウ",
    radical: "鉱",
    componentHint: "classical radical 167",
    examples: [
      {word: "鉱山", reading: "こうざん", meaning: "mine (ore)"},
      {word: "鉱物", reading: "こうぶつ", meaning: "mineral"},
      {word: "鉱石", reading: "こうせき", meaning: "ore; mineral"}
    ],
  },
  {
    kanji: "銅",
    keyword: "copper",
    reading: "あかがね / ドウ",
    radical: "銅",
    componentHint: "classical radical 167",
    examples: [
      {word: "青銅", reading: "せいどう", meaning: "bronze"},
      {word: "銅貨", reading: "どうか", meaning: "copper coin"},
      {word: "銅像", reading: "どうぞう", meaning: "bronze statue"}
    ],
  },
  {
    kanji: "鉛",
    keyword: "lead",
    reading: "なまり / エン",
    radical: "鉛",
    componentHint: "classical radical 167",
    examples: [
      {word: "鉛筆", reading: "えんぴつ", meaning: "pencil"},
      {word: "鉛管", reading: "えんかん", meaning: "lead pipe"},
      {word: "亜鉛", reading: "あえん", meaning: "zinc (Zn)"}
    ],
  },
  {
    kanji: "銑",
    keyword: "pig iron",
    reading: "セン",
    radical: "銑",
    componentHint: "classical radical 167",
    examples: [
      {word: "銑鉄", reading: "せんてつ", meaning: "pig iron"},
      {word: "溶銑", reading: "ようせん", meaning: "molten iron"},
      {word: "白銑", reading: "はくせん", meaning: "white pig iron"}
    ],
  },
  {
    kanji: "鋼",
    keyword: "steel",
    reading: "はがね / コウ",
    radical: "鋼",
    componentHint: "classical radical 167",
    examples: [
      {word: "鋼鉄", reading: "こうてつ", meaning: "steel"},
      {word: "鉄鋼", reading: "てっこう", meaning: "iron and steel"},
      {word: "鋼板", reading: "こうはん", meaning: "steel sheet; steel plate"}
    ],
  },
  {
    kanji: "剛",
    keyword: "sturdy/strength",
    reading: "ゴウ",
    radical: "剛",
    componentHint: "classical radical 18",
    examples: [
      {word: "金剛", reading: "こんごう", meaning: "vajra (indestructible substance); diamond"},
      {word: "剛毅", reading: "ごうき", meaning: "fortitude; firmness of character"},
      {word: "金剛石", reading: "こんごうせき", meaning: "diamond"}
    ],
  },
  {
    kanji: "綱",
    keyword: "hawser/class (genus)",
    reading: "つな / コウ",
    radical: "綱",
    componentHint: "classical radical 120",
    examples: [
      {word: "手綱", reading: "たづな", meaning: "bridle; reins"},
      {word: "横綱", reading: "よこづな", meaning: "yokozuna (grand champion)"},
      {word: "綱渡り", reading: "つなわたり", meaning: "tightrope walking; funambulism"}
    ],
  },
  {
    kanji: "網",
    keyword: "netting/network",
    reading: "あみ / モウ",
    radical: "網",
    componentHint: "classical radical 120",
    examples: [
      {word: "金網", reading: "かなあみ", meaning: "wire netting; wire mesh"},
      {word: "網膜", reading: "もうまく", meaning: "retina"},
      {word: "網目", reading: "あみめ", meaning: "stitch"}
    ],
  },
  {
    kanji: "縄",
    keyword: "straw rope/cord",
    reading: "なわ / ただ.す / ジョウ",
    radical: "縄",
    componentHint: "classical radical 120",
    examples: [
      {word: "沖縄", reading: "おきなわ", meaning: "Okinawa (prefecture); region comprising most of Japan's southwestern archipelago (esp. Okinawa Island)"},
      {word: "縄張り", reading: "なわばり", meaning: "roping off; stretching rope"},
      {word: "縄文", reading: "じょうもん", meaning: "Jomon period; straw-rope pattern"}
    ],
  },
  {
    kanji: "鉢",
    keyword: "bowl/rice tub",
    reading: "ハチ / ハツ",
    radical: "鉢",
    componentHint: "classical radical 167",
    examples: [
      {word: "火鉢", reading: "ひばち", meaning: "brazier; hibachi"},
      {word: "鉢巻", reading: "はちまき", meaning: "headband"},
      {word: "長火鉢", reading: "ながひばち", meaning: "oblong brazier"}
    ],
  },
  {
    kanji: "鎖",
    keyword: "chain/irons",
    reading: "くさり / とざ.す / サ",
    radical: "鎖",
    componentHint: "classical radical 167",
    examples: [
      {word: "閉鎖", reading: "へいさ", meaning: "closing; closure"},
      {word: "封鎖", reading: "ふうさ", meaning: "blockade; freezing (funds)"},
      {word: "連鎖", reading: "れんさ", meaning: "chain; chaining"}
    ],
  },
  {
    kanji: "絆",
    keyword: "bonds/fetters",
    reading: "きずな / ほだ.す / つな.ぐ / ハン",
    radical: "絆",
    componentHint: "classical radical 120",
    examples: [
      {word: "脚絆", reading: "きゃはん", meaning: "gaiters; leggings"},
      {word: "絆創膏", reading: "ばんそうこう", meaning: "adhesive plaster; sticking plaster"},
      {word: "絆される", reading: "ほだされる", meaning: "to be moved by affection; to be moved by kindness"}
    ],
  },
  {
    kanji: "鍵",
    keyword: "key",
    reading: "かぎ / ケン",
    radical: "鍵",
    componentHint: "classical radical 167",
    examples: [
      {word: "鍵穴", reading: "かぎあな", meaning: "keyhole"},
      {word: "合鍵", reading: "あいかぎ", meaning: "duplicate key; pass key"},
      {word: "鍵盤", reading: "けんばん", meaning: "keyboard (e.g. piano, computer)"}
    ],
  },
  {
    kanji: "釘",
    keyword: "nail/tack",
    reading: "くぎ / テイ / チョウ",
    radical: "釘",
    componentHint: "classical radical 167",
    examples: [
      {word: "釘付け", reading: "くぎづけ", meaning: "nailing on; nailing down"},
      {word: "五寸釘", reading: "ごすんくぎ", meaning: "long nail; spike"},
      {word: "釘抜き", reading: "くぎぬき", meaning: "pincers; nail puller"}
    ],
  },
  {
    kanji: "錮",
    keyword: "to tie",
    reading: "ふさ.ぐ / コ",
    radical: "錮",
    componentHint: "classical radical 167",
    examples: [
      {word: "禁錮", reading: "きんこ", meaning: "imprisonment; confinement"},
      {word: "重禁錮", reading: "じゅうきんこ", meaning: "imprisonment with hard labor (hard labour)"},
      {word: "禁錮刑", reading: "きんこけい", meaning: "(penalty of) imprisonment"}
    ],
  },
  {
    kanji: "錠",
    keyword: "lock/fetters",
    reading: "ジョウ",
    radical: "錠",
    componentHint: "classical radical 167",
    examples: [
      {word: "手錠", reading: "てじょう", meaning: "handcuffs; manacles"},
      {word: "錠前", reading: "じょうまえ", meaning: "lock"},
      {word: "錠剤", reading: "じょうざい", meaning: "pill; lozenge"}
    ],
  },
  {
    kanji: "綻",
    keyword: "be rent/ripped",
    reading: "ほころ.びる / タン",
    radical: "綻",
    componentHint: "classical radical 120",
    examples: [
      {word: "破綻", reading: "はたん", meaning: "failure; bankruptcy"},
      {word: "綻び", reading: "ほころび", meaning: "open seam; seam that has come apart"},
      {word: "綻ぶ", reading: "ほころぶ", meaning: "to begin to open; to come out"}
    ],
  },
  {
    kanji: "鈴",
    keyword: "small bell/buzzer",
    reading: "すず / レイ / リン",
    radical: "鈴",
    componentHint: "classical radical 167",
    examples: [
      {word: "呼鈴", reading: "よびりん", meaning: "bell (used for summoning or signalling); buzzer"},
      {word: "呼び鈴", reading: "よびりん", meaning: "bell (used for summoning or signalling); buzzer"},
      {word: "馬鈴薯", reading: "じゃがいも", meaning: "potato (Solanum tuberosum)"}
    ],
  },
  {
    kanji: "鐘",
    keyword: "bell/gong",
    reading: "かね / ショウ",
    radical: "鐘",
    componentHint: "classical radical 167",
    examples: [
      {word: "早鐘", reading: "はやがね", meaning: "alarm bell"},
      {word: "半鐘", reading: "はんしょう", meaning: "fire alarm; fire bell"},
      {word: "警鐘", reading: "けいしょう", meaning: "alarm bell; fire bell"}
    ],
  },
  {
    kanji: "瞳",
    keyword: "pupil (of eye)",
    reading: "ひとみ / ドウ / トウ",
    radical: "瞳",
    componentHint: "classical radical 109",
    examples: [
      {word: "瞳子", reading: "どうし", meaning: "pupil"},
      {word: "瞳孔", reading: "どうこう", meaning: "pupil; pupillary"},
      {word: "散瞳", reading: "さんどう", meaning: "mydriasis; (excessive) dilation of the pupil"}
    ],
  },
  {
    kanji: "憧",
    keyword: "yearn after/long for",
    reading: "あこが.れる / ショウ / トウ / ドウ",
    radical: "憧",
    componentHint: "classical radical 61",
    examples: [
      {word: "憧れる", reading: "あこがれる", meaning: "to long for; to yearn after"},
      {word: "憧憬", reading: "どうけい", meaning: "longing; aspiration"},
      {word: "憧れ", reading: "あこがれ", meaning: "yearning; longing"}
    ],
  },
  {
    kanji: "憬",
    keyword: "yearn for/aspire to",
    reading: "あこが.れる / ケイ",
    radical: "憬",
    componentHint: "classical radical 61",
    examples: [
      {word: "憧憬", reading: "どうけい", meaning: "longing; aspiration"},
      {word: "憬れる", reading: "あこがれる", meaning: "to long for; to yearn after"},
      {word: "憬れ", reading: "あこがれ", meaning: "yearning; longing"}
    ],
  },
  {
    kanji: "卑",
    keyword: "lowly/base",
    reading: "いや.しい / いや.しむ / いや.しめる / ヒ",
    radical: "卑",
    componentHint: "classical radical 24",
    examples: [
      {word: "卑怯", reading: "ひきょう", meaning: "cowardice; meanness"},
      {word: "卑劣", reading: "ひれつ", meaning: "mean; foul play"},
      {word: "卑しい", reading: "いやしい", meaning: "lowborn; humble"}
    ],
  },
  {
    kanji: "碑",
    keyword: "tombstone/monument",
    reading: "いしぶみ / ヒ",
    radical: "碑",
    componentHint: "classical radical 112",
    examples: [
      {word: "記念碑", reading: "きねんひ", meaning: "commemorative plaque (usu. on a stone); stone monument (bearing an inscription)"},
      {word: "石碑", reading: "せきひ", meaning: "stone monument"},
      {word: "碑文", reading: "ひぶん", meaning: "inscription; epitaph"}
    ],
  },
  {
    kanji: "痺",
    keyword: "palsy/become numb",
    reading: "しび.れる / ヒ",
    radical: "痺",
    componentHint: "classical radical 104",
    examples: [
      {word: "麻痺", reading: "まひ", meaning: "paralysis; palsy"},
      {word: "痺れる", reading: "しびれる", meaning: "to become numb; to go to sleep (e.g. a limb)"},
      {word: "痺れ", reading: "しびれ", meaning: "numbness; limbs going to sleep"}
    ],
  },
  {
    kanji: "鬼",
    keyword: "ghost/devil",
    reading: "おに / おに- / キ",
    radical: "鬼",
    componentHint: "classical radical 194",
    examples: [
      {word: "吸血鬼", reading: "きゅうけつき", meaning: "vampire; bloodsucker"},
      {word: "餓鬼", reading: "がき", meaning: "brat; kids"},
      {word: "鬼神", reading: "きしん", meaning: "fierce god"}
    ],
  },
  {
    kanji: "塊",
    keyword: "clod/lump",
    reading: "かたまり / つちくれ / カイ / ケ",
    radical: "塊",
    componentHint: "classical radical 32",
    examples: [
      {word: "金塊", reading: "きんかい", meaning: "gold nugget; gold bullion"},
      {word: "一塊", reading: "ひとかたまり", meaning: "one lump; one group"},
      {word: "石塊", reading: "いしくれ", meaning: "stone; rock"}
    ],
  },
  {
    kanji: "醜",
    keyword: "ugly/unclean",
    reading: "みにく.い / しこ / シュウ",
    radical: "醜",
    componentHint: "classical radical 164",
    examples: [
      {word: "醜い", reading: "みにくい", meaning: "ugly; unattractive"},
      {word: "醜悪", reading: "しゅうあく", meaning: "ugliness; meanness"},
      {word: "醜態", reading: "しゅうたい", meaning: "shameful sight; disgraceful behavior"}
    ],
  },
  {
    kanji: "魂",
    keyword: "soul/spirit",
    reading: "たましい / たま / コン",
    radical: "魂",
    componentHint: "classical radical 194",
    examples: [
      {word: "霊魂", reading: "れいこん", meaning: "soul; spirit"},
      {word: "魂胆", reading: "こんたん", meaning: "soul; ulterior motive"},
      {word: "士魂", reading: "しこん", meaning: "manly spirit; soul of a samurai"}
    ],
  },
  {
    kanji: "魅",
    keyword: "fascination/charm",
    reading: "ミ",
    radical: "魅",
    componentHint: "classical radical 194",
    examples: [
      {word: "魅力", reading: "みりょく", meaning: "charm; fascination"},
      {word: "魅惑", reading: "みわく", meaning: "attraction; fascination"},
      {word: "魅了", reading: "みりょう", meaning: "fascination; to charm"}
    ],
  },
  {
    kanji: "魔",
    keyword: "witch/demon",
    reading: "マ",
    radical: "魔",
    componentHint: "classical radical 194",
    examples: [
      {word: "魔法", reading: "まほう", meaning: "magic; witchcraft"},
      {word: "邪魔", reading: "じゃま", meaning: "hindrance; obstacle"},
      {word: "悪魔", reading: "あくま", meaning: "devil; demon"}
    ],
  },
  {
    kanji: "畏",
    keyword: "fear/majestic",
    reading: "おそ.れる / かしこま.る / かしこ / かしこ.し / イ",
    radical: "畏",
    componentHint: "classical radical 102",
    examples: [
      {word: "畏い", reading: "かしこい", meaning: "wise; clever"},
      {word: "畏怖", reading: "いふ", meaning: "awe; fear"},
      {word: "畏れる", reading: "おそれる", meaning: "to fear; to be afraid of"}
    ],
  },
  {
    kanji: "刷",
    keyword: "printing/print",
    reading: "す.る / -ず.り / -ずり / は.く / サツ",
    radical: "刷",
    componentHint: "classical radical 18",
    examples: [
      {word: "印刷", reading: "いんさつ", meaning: "printing"},
      {word: "刷る", reading: "する", meaning: "to print; to color or pattern fabric using a wooden mold"},
      {word: "刷毛", reading: "はけ", meaning: "paint brush"}
    ],
  },
  {
    kanji: "擦",
    keyword: "grate/rub",
    reading: "す.る / す.れる / -ず.れ / こす.る / サツ",
    radical: "擦",
    componentHint: "classical radical 64",
    examples: [
      {word: "擦る", reading: "こする", meaning: "to rub; to scrub"},
      {word: "摩擦", reading: "まさつ", meaning: "friction; rubbing"},
      {word: "擦れる", reading: "かすれる", meaning: "to get blurred; to get hoarse"}
    ],
  },
  {
    kanji: "摩",
    keyword: "chafe/rub",
    reading: "ま.する / さす.る / す.る / マ",
    radical: "摩",
    componentHint: "classical radical 64",
    examples: [
      {word: "薩摩", reading: "さつま", meaning: "Satsuma (ancient province located in present-day Kagoshima prefecture); sweet potato (Ipomoea batatas)"},
      {word: "摩擦", reading: "まさつ", meaning: "friction; rubbing"},
      {word: "多摩川", reading: "たまがわ", meaning: "river running between Tokyo-to and Kanagawa Prefecture"}
    ],
  },
  {
    kanji: "磨",
    keyword: "grind/polish",
    reading: "みが.く / す.る / マ",
    radical: "磨",
    componentHint: "classical radical 112",
    examples: [
      {word: "磨く", reading: "みがく", meaning: "to polish; to shine"},
      {word: "磨き", reading: "みがき", meaning: "polish; improvement"},
      {word: "達磨", reading: "だるま", meaning: "daruma; tumbling doll"}
    ],
  },
  {
    kanji: "凹",
    keyword: "concave/hollow",
    reading: "くぼ.む / へこ.む / ぼこ / オウ",
    radical: "凹",
    componentHint: "classical radical 17",
    examples: [
      {word: "凹む", reading: "へこむ", meaning: "to be dented; to be indented"},
      {word: "凹凸", reading: "おうとつ", meaning: "unevenness; roughness"},
      {word: "凹面鏡", reading: "おうめんきょう", meaning: "concave mirror"}
    ],
  },
  {
    kanji: "凸",
    keyword: "convex/beetle brow",
    reading: "でこ / トツ",
    radical: "凸",
    componentHint: "classical radical 17",
    examples: [
      {word: "凹凸", reading: "おうとつ", meaning: "unevenness; roughness"},
      {word: "凸レンズ", reading: "とつレンズ", meaning: "convex lens"},
      {word: "凸凹", reading: "でこぼこ", meaning: "unevenness; roughness"}
    ],
  },
  {
    kanji: "奉",
    keyword: "observance/offer",
    reading: "たてまつ.る / まつ.る / ほう.ずる / ホウ / ブ",
    radical: "奉",
    componentHint: "classical radical 37",
    examples: [
      {word: "奉行", reading: "ぶぎょう", meaning: "magistrate; shogunate administrator"},
      {word: "奉公", reading: "ほうこう", meaning: "service; apprenticeship"},
      {word: "奉る", reading: "まつる", meaning: "to offer; to present"}
    ],
  },
  {
    kanji: "奏",
    keyword: "play music/speak to a ruler",
    reading: "かな.でる / ソウ",
    radical: "奏",
    componentHint: "classical radical 37",
    examples: [
      {word: "演奏", reading: "えんそう", meaning: "musical performance"},
      {word: "奏でる", reading: "かなでる", meaning: "to play an instrument (esp. string instruments)"},
      {word: "奏上", reading: "そうじょう", meaning: "report to the Emperor"}
    ],
  },
  {
    kanji: "泰",
    keyword: "peaceful/calm",
    reading: "タイ",
    radical: "泰",
    componentHint: "classical radical 85",
    examples: [
      {word: "安泰", reading: "あんたい", meaning: "peace; security"},
      {word: "泰然", reading: "たいぜん", meaning: "calm; composed"},
      {word: "泰平", reading: "たいへい", meaning: "peace; tranquility"}
    ],
  },
  {
    kanji: "俸",
    keyword: "stipend/salary",
    reading: "ホウ",
    radical: "俸",
    componentHint: "classical radical 9",
    examples: [
      {word: "俸給", reading: "ほうきゅう", meaning: "salary (esp. public employees); wages"},
      {word: "年俸", reading: "ねんぽう", meaning: "annual salary"},
      {word: "減俸", reading: "げんぽう", meaning: "salary reduction; salary cut"}
    ],
  },
  {
    kanji: "棒",
    keyword: "rod/stick",
    reading: "ボウ",
    radical: "棒",
    componentHint: "classical radical 75",
    examples: [
      {word: "泥棒", reading: "どろぼう", meaning: "thief; burglar"},
      {word: "相棒", reading: "あいぼう", meaning: "partner; pal"},
      {word: "棍棒", reading: "こんぼう", meaning: "stick; club"}
    ],
  },
  {
    kanji: "捧",
    keyword: "lift up/give",
    reading: "ささ.げる / ホウ",
    radical: "捧",
    componentHint: "classical radical 64",
    examples: [
      {word: "捧げる", reading: "ささげる", meaning: "to lift up; to give"},
      {word: "捧ぐ", reading: "ささぐ", meaning: "to lift up; to give"},
      {word: "捧持", reading: "ほうじ", meaning: "bearing; presenting"}
    ],
  },
  {
    kanji: "耐",
    keyword: "-proof/enduring",
    reading: "た.える / タイ",
    radical: "耐",
    componentHint: "classical radical 126",
    examples: [
      {word: "耐える", reading: "たえる", meaning: "to bear; to stand"},
      {word: "忍耐", reading: "にんたい", meaning: "endurance; perseverance"},
      {word: "耐え難い", reading: "たえがたい", meaning: "unbearable; intolerable"}
    ],
  },
  {
    kanji: "霊",
    keyword: "spirits/soul",
    reading: "たま / レイ / リョウ",
    radical: "霊",
    componentHint: "classical radical 173",
    examples: [
      {word: "幽霊", reading: "ゆうれい", meaning: "ghost; specter"},
      {word: "精霊", reading: "せいれい", meaning: "spirit; soul"},
      {word: "言霊", reading: "ことだま", meaning: "soul of language; power of words"}
    ],
  },
  {
    kanji: "需",
    keyword: "demand/request",
    reading: "ジュ",
    radical: "需",
    componentHint: "classical radical 173",
    examples: [
      {word: "需要", reading: "じゅよう", meaning: "demand; request"},
      {word: "軍需", reading: "ぐんじゅ", meaning: "munitions; military stores"},
      {word: "必需", reading: "ひつじゅ", meaning: "necessary"}
    ],
  },
  {
    kanji: "濡",
    keyword: "get wet/damp",
    reading: "ぬれ.る / ぬら.す / ぬ.れる / ぬ.らす / ジュ / ニュ",
    radical: "濡",
    componentHint: "classical radical 85",
    examples: [
      {word: "濡れる", reading: "ぬれる", meaning: "to get wet"},
      {word: "濡らす", reading: "ぬらす", meaning: "to wet; to soak"},
      {word: "ずぶ濡れ", reading: "ずぶぬれ", meaning: "soaked; dripping wet"}
    ],
  },
  {
    kanji: "儒",
    keyword: "Confucian",
    reading: "ジュ",
    radical: "儒",
    componentHint: "classical radical 9",
    examples: [
      {word: "儒教", reading: "じゅきょう", meaning: "Confucianism"},
      {word: "儒者", reading: "じゅしゃ", meaning: "Confucianist"},
      {word: "儒学", reading: "じゅがく", meaning: "Confucianism"}
    ],
  },
  {
    kanji: "端",
    keyword: "edge/origin",
    reading: "はし / は / はた / -ばた / タン",
    radical: "端",
    componentHint: "classical radical 117",
    examples: [
      {word: "途端", reading: "とたん", meaning: "just (now, at the moment, etc.)"},
      {word: "先端", reading: "せんたん", meaning: "pointed end; tip"},
      {word: "極端", reading: "きょくたん", meaning: "extreme; extremity"}
    ],
  },
  {
    kanji: "壱",
    keyword: "one (in documents)",
    reading: "ひとつ / イチ / イツ",
    radical: "壱",
    componentHint: "classical radical 33",
    examples: [
      {word: "壱越", reading: "いちこつ", meaning: "(in Japan) 1st note of the ancient chromatic scale (approx. D)"},
      {word: "壱万円", reading: "いちまんえん", meaning: "10,000 yen"},
      {word: "壱越調", reading: "いちこつちょう", meaning: "(in gagaku) scale similar to Mixolydian mode on D"}
    ],
  },
  {
    kanji: "尼",
    keyword: "nun",
    reading: "あま / ニ",
    radical: "尼",
    componentHint: "classical radical 44",
    examples: [
      {word: "尼僧", reading: "にそう", meaning: "nun; priestess"},
      {word: "比丘尼", reading: "びくに", meaning: "bhikkhuni (fully ordained Buddhist nun)"},
      {word: "尼寺", reading: "あまでら", meaning: "nunnery; convent"}
    ],
  },
  {
    kanji: "泥",
    keyword: "mud/mire",
    reading: "どろ / デイ / ナイ / デ",
    radical: "泥",
    componentHint: "classical radical 85",
    examples: [
      {word: "泥棒", reading: "どろぼう", meaning: "thief; burglar"},
      {word: "泥沼", reading: "どろぬま", meaning: "bog; marsh"},
      {word: "泥酔", reading: "でいすい", meaning: "dead drunk"}
    ],
  },
  {
    kanji: "漏",
    keyword: "leak/escape",
    reading: "も.る / も.れる / も.らす / ロウ",
    radical: "漏",
    componentHint: "classical radical 85",
    examples: [
      {word: "漏れる", reading: "もれる", meaning: "to leak out; to escape"},
      {word: "漏らす", reading: "もらす", meaning: "to let leak; to reveal"},
      {word: "漏れ", reading: "もれ", meaning: "leakage; omission"}
    ],
  },
  {
    kanji: "氾",
    keyword: "spread out/wide",
    reading: "ひろ.がる / ハン",
    radical: "氾",
    componentHint: "classical radical 85",
    examples: [
      {word: "氾濫", reading: "はんらん", meaning: "overflowing; flood"},
      {word: "氾らん", reading: "はんらん", meaning: "overflowing; flood"},
      {word: "氾", reading: "ひろ.がる", meaning: "kanji entry"}
    ],
  },
  {
    kanji: "彙",
    keyword: "same kind/collect",
    reading: "はりねずみ / イ",
    radical: "彙",
    componentHint: "classical radical 58",
    examples: [
      {word: "語彙", reading: "ごい", meaning: "vocabulary; lexicon"},
      {word: "字彙", reading: "じい", meaning: "(character) dictionary"},
      {word: "彙報", reading: "いほう", meaning: "bulletin; collection of reports"}
    ],
  },
  {
    kanji: "某",
    keyword: "so-and-so/one",
    reading: "それがし / なにがし / ボウ",
    radical: "某",
    componentHint: "classical radical 75",
    examples: [
      {word: "何某", reading: "なにぼう", meaning: "certain person; certain amount"},
      {word: "某所", reading: "ぼうしょ", meaning: "certain place"},
      {word: "某国", reading: "ぼうこく", meaning: "certain country"}
    ],
  },
  {
    kanji: "謀",
    keyword: "conspire/cheat",
    reading: "はか.る / たばか.る / はかりごと / ボウ / ム",
    radical: "謀",
    componentHint: "classical radical 149",
    examples: [
      {word: "参謀", reading: "さんぼう", meaning: "staff officer; participating in planning"},
      {word: "陰謀", reading: "いんぼう", meaning: "plot; intrigue"},
      {word: "無謀", reading: "むぼう", meaning: "reckless; thoughtless"}
    ],
  },
  {
    kanji: "媒",
    keyword: "mediator/go-between",
    reading: "なこうど / バイ",
    radical: "媒",
    componentHint: "classical radical 38",
    examples: [
      {word: "媒介", reading: "ばいかい", meaning: "intermediary"},
      {word: "媒体", reading: "ばいたい", meaning: "media; medium"},
      {word: "霊媒", reading: "れいばい", meaning: "spirit medium"}
    ],
  },
  {
    kanji: "尉",
    keyword: "military officer/jailer",
    reading: "イ / ジョウ",
    radical: "尉",
    componentHint: "classical radical 41",
    examples: [
      {word: "大尉", reading: "たいい", meaning: "captain (Army, U.S. Marine Corps, USAF); lieutenant (Navy)"},
      {word: "中尉", reading: "ちゅうい", meaning: "first lieutenant; lieutenant junior grade"},
      {word: "少尉", reading: "しょうい", meaning: "second lieutenant; sublieutenant"}
    ],
  },
  {
    kanji: "慰",
    keyword: "consolation/amusement",
    reading: "なぐさ.める / なぐさ.む / イ",
    radical: "慰",
    componentHint: "classical radical 61",
    examples: [
      {word: "慰める", reading: "なぐさめる", meaning: "to comfort; to console"},
      {word: "慰め", reading: "なぐさめ", meaning: "comfort; consolation"},
      {word: "慰安", reading: "いあん", meaning: "solace; relaxation"}
    ],
  },
  {
    kanji: "酪",
    keyword: "dairy products/whey",
    reading: "ラク",
    radical: "酪",
    componentHint: "classical radical 164",
    examples: [
      {word: "酪農", reading: "らくのう", meaning: "dairy (farm)"},
      {word: "牛酪", reading: "ぎゅうらく", meaning: "butter"},
      {word: "乾酪", reading: "かんらく", meaning: "cheese"}
    ],
  },
  {
    kanji: "酵",
    keyword: "fermentation",
    reading: "コウ",
    radical: "酵",
    componentHint: "classical radical 164",
    examples: [
      {word: "酵素", reading: "こうそ", meaning: "enzyme"},
      {word: "醗酵", reading: "はっこう", meaning: "fermentation; zymosis"},
      {word: "発酵", reading: "はっこう", meaning: "fermentation; zymosis"}
    ],
  },
  {
    kanji: "醤",
    keyword: "a kind of miso",
    reading: "ひしお / ショウ",
    radical: "醤",
    componentHint: "classical radical 164",
    examples: [
      {word: "醤油", reading: "しょうゆ", meaning: "soy sauce; shoyu"},
      {word: "生醤油", reading: "きじょうゆ", meaning: "pure soy sauce"},
      {word: "豆板醤", reading: "トーバンジャン", meaning: "broad bean chili paste (Chinese seasoning)"}
    ],
  },
  {
    kanji: "酢",
    keyword: "vinegar/sour",
    reading: "す / サク",
    radical: "酢",
    componentHint: "classical radical 164",
    examples: [
      {word: "酢漬け", reading: "すづけ", meaning: "pickling; pickles"},
      {word: "ポン酢", reading: "ポンず", meaning: "juice pressed from a bitter orange; ponzu (Japanese sauce made primarily of soy sauce and citrus juice)"},
      {word: "酢の物", reading: "すのもの", meaning: "vinegared dish; pickled dish"}
    ],
  },
  {
    kanji: "酎",
    keyword: "sake",
    reading: "かも.す / チュウ / チュ",
    radical: "酎",
    componentHint: "classical radical 164",
    examples: [
      {word: "焼酎", reading: "しょうちゅう", meaning: "shochu; Japanese spirit distilled from sweet potatoes, rice, etc."},
      {word: "酎ハイ", reading: "ちゅうハイ", meaning: "shochu highball; cocktail of shochu with tonic water"},
      {word: "芋焼酎", reading: "いもじょうちゅう", meaning: "sweet potato shochu (distilled liquor)"}
    ],
  },
  {
    kanji: "酌",
    keyword: "bar-tending/serving sake",
    reading: "く.む / シャク",
    radical: "酌",
    componentHint: "classical radical 164",
    examples: [
      {word: "お酌", reading: "おしゃく", meaning: "pouring alcohol; person pouring alcohol for guests or customers (typically a woman)"},
      {word: "酌む", reading: "くむ", meaning: "to serve sake"},
      {word: "手酌", reading: "てじゃく", meaning: "helping oneself to a drink; pouring one's own drink"}
    ],
  },
  {
    kanji: "釣",
    keyword: "angling/fish",
    reading: "つ.る / つ.り / つ.り- / チョウ",
    radical: "釣",
    componentHint: "classical radical 167",
    examples: [
      {word: "釣り", reading: "つり", meaning: "fishing; angling"},
      {word: "釣る", reading: "つる", meaning: "to fish; to angle"},
      {word: "釣り合い", reading: "つりあい", meaning: "balance; equilibrium"}
    ],
  },
  {
    kanji: "畜",
    keyword: "livestock/domestic fowl and animals",
    reading: "チク",
    radical: "畜",
    componentHint: "classical radical 102",
    examples: [
      {word: "畜生", reading: "ちくしょう", meaning: "beast (i.e. any animal other than man); person reborn into the animal realm"},
      {word: "家畜", reading: "かちく", meaning: "domestic animals; livestock"},
      {word: "牧畜", reading: "ぼくちく", meaning: "stock-farming"}
    ],
  },
  {
    kanji: "蓄",
    keyword: "amass/raise",
    reading: "たくわ.える / チク",
    radical: "蓄",
    componentHint: "classical radical 140",
    examples: [
      {word: "蓄積", reading: "ちくせき", meaning: "accumulation; accumulate"},
      {word: "蓄える", reading: "たくわえる", meaning: "to store; to lay in stock"},
      {word: "貯蓄", reading: "ちょちく", meaning: "savings"}
    ],
  },
  {
    kanji: "玄",
    keyword: "mysterious/occultness",
    reading: "くろ / くろ.い / ゲン",
    radical: "玄",
    componentHint: "classical radical 95",
    examples: [
      {word: "玄関", reading: "げんかん", meaning: "entranceway; entry hall"},
      {word: "玄人", reading: "くろうと", meaning: "expert; professional"},
      {word: "玄関番", reading: "げんかんばん", meaning: "doorkeeper; janitor"}
    ],
  },
  {
    kanji: "眩",
    keyword: "faint/dizzy",
    reading: "げん.す / くるめ.く / まぶ.しい / くら.む / ゲン / カン",
    radical: "眩",
    componentHint: "classical radical 109",
    examples: [
      {word: "眩しい", reading: "まぶしい", meaning: "dazzling; radiant"},
      {word: "眩い", reading: "まぶい", meaning: "cute; pretty"},
      {word: "眩暈", reading: "めまい", meaning: "dizziness; giddiness"}
    ],
  },
  {
    kanji: "呟",
    keyword: "mutter/grumble",
    reading: "つぶや.く / ゲン",
    radical: "呟",
    componentHint: "classical radical 30",
    examples: [
      {word: "呟く", reading: "つぶやく", meaning: "to mutter; to murmur"},
      {word: "呟き", reading: "つぶやき", meaning: "murmur; mutter"},
      {word: "呟きサイト", reading: "つぶやきサイト", meaning: "microblog"}
    ],
  },
  {
    kanji: "囁",
    keyword: "whisper/murmur",
    reading: "ささや.く / ショウ",
    radical: "囁",
    componentHint: "classical radical 30",
    examples: [
      {word: "囁く", reading: "ささやく", meaning: "to whisper; to murmur"},
      {word: "囁き", reading: "ささやき", meaning: "whispering; whisper"},
      {word: "囁き声", reading: "ささやきごえ", meaning: "whisper; murmur"}
    ],
  },
  {
    kanji: "喋",
    keyword: "talk/chat",
    reading: "しゃべ.る / ついば.む / チョウ / トウ",
    radical: "喋",
    componentHint: "classical radical 30",
    examples: [
      {word: "喋る", reading: "しゃべる", meaning: "to talk; to chat"},
      {word: "お喋り", reading: "おしゃべり", meaning: "chattering; talk"},
      {word: "喋り", reading: "しゃべり", meaning: "talk; chat"}
    ],
  },
  {
    kanji: "喩",
    keyword: "metaphor/compare",
    reading: "たと.える / さと.す / ユ",
    radical: "喩",
    componentHint: "classical radical 30",
    examples: [
      {word: "比喩", reading: "ひゆ", meaning: "simile; metaphor"},
      {word: "喩え", reading: "たとえ", meaning: "example; simile"},
      {word: "喩える", reading: "たとえる", meaning: "to compare; to liken"}
    ],
  },
  {
    kanji: "鬱",
    keyword: "gloom/depression",
    reading: "うっ.する / ふさ.ぐ / しげ.る / ウツ",
    radical: "鬱",
    componentHint: "classical radical 192",
    examples: [
      {word: "憂鬱", reading: "ゆううつ", meaning: "depression; melancholy"},
      {word: "陰鬱", reading: "いんうつ", meaning: "gloom; melancholy"},
      {word: "鬱陶しい", reading: "うっとうしい", meaning: "gloomy (e.g. mood); depressing"}
    ],
  },
  {
    kanji: "弦",
    keyword: "bowstring/chord",
    reading: "つる / ゲン",
    radical: "弦",
    componentHint: "classical radical 57",
    examples: [
      {word: "管弦楽", reading: "かんげんがく", meaning: "orchestral music"},
      {word: "弦楽", reading: "げんがく", meaning: "music for strings; string music"},
      {word: "弓弦", reading: "ゆみづる", meaning: "bowstring"}
    ],
  },
  {
    kanji: "舷",
    keyword: "gunwale",
    reading: "ふなばた / ゲン",
    radical: "舷",
    componentHint: "classical radical 137",
    examples: [
      {word: "舷側", reading: "げんそく", meaning: "ship's side; broadside"},
      {word: "右舷", reading: "うげん", meaning: "starboard"},
      {word: "左舷", reading: "さげん", meaning: "port (left side of vessel)"}
    ],
  },
  {
    kanji: "舵",
    keyword: "rudder/helm",
    reading: "かじ / ダ / タ",
    radical: "舵",
    componentHint: "classical radical 137",
    examples: [
      {word: "操舵", reading: "そうだ", meaning: "steering (of a ship)"},
      {word: "舵取り", reading: "かじとり", meaning: "steering; helmsman"},
      {word: "舵手", reading: "だしゅ", meaning: "helmsman; coxswain"}
    ],
  },
  {
    kanji: "幻",
    keyword: "phantasm/vision",
    reading: "まぼろし / ゲン",
    radical: "幻",
    componentHint: "classical radical 52",
    examples: [
      {word: "幻想", reading: "げんそう", meaning: "illusions"},
      {word: "幻覚", reading: "げんかく", meaning: "hallucination; illusion"},
      {word: "幻影", reading: "げんえい", meaning: "phantom; vision"}
    ],
  },
  {
    kanji: "幽",
    keyword: "seclude/confine to a room",
    reading: "ふか.い / かす.か / くら.い / しろ.い / ユウ",
    radical: "幽",
    componentHint: "classical radical 52",
    examples: [
      {word: "幽霊", reading: "ゆうれい", meaning: "ghost; specter"},
      {word: "幽閉", reading: "ゆうへい", meaning: "confinement; imprisonment"},
      {word: "幽か", reading: "かすか", meaning: "faint; dim"}
    ],
  },
  {
    kanji: "幼",
    keyword: "infancy/childhood",
    reading: "おさな.い / ヨウ",
    radical: "幼",
    componentHint: "classical radical 52",
    examples: [
      {word: "幼い", reading: "おさない", meaning: "very young; childish"},
      {word: "幼児", reading: "ようじ", meaning: "infant; baby"},
      {word: "幼稚園", reading: "ようちえん", meaning: "kindergarten"}
    ],
  },
  {
    kanji: "稚",
    keyword: "immature/young",
    reading: "いとけない / おさない / おくて / おでる / チ / ジ",
    radical: "稚",
    componentHint: "classical radical 115",
    examples: [
      {word: "幼稚園", reading: "ようちえん", meaning: "kindergarten"},
      {word: "幼稚", reading: "ようち", meaning: "infancy; childish"},
      {word: "丁稚", reading: "でっち", meaning: "apprentice; shop boy"}
    ],
  },
  {
    kanji: "維",
    keyword: "fiber/tie",
    reading: "イ",
    radical: "維",
    componentHint: "classical radical 120",
    examples: [
      {word: "維持", reading: "いじ", meaning: "maintenance; preservation"},
      {word: "繊維", reading: "せんい", meaning: "fibre; fiber"},
      {word: "維新", reading: "いしん", meaning: "reformation; revolution"}
    ],
  },
  {
    kanji: "推",
    keyword: "conjecture/infer",
    reading: "お.す / スイ",
    radical: "推",
    componentHint: "classical radical 64",
    examples: [
      {word: "推理", reading: "すいり", meaning: "reasoning; inference"},
      {word: "推測", reading: "すいそく", meaning: "guess; conjecture"},
      {word: "推定", reading: "すいてい", meaning: "presumption; assumption"}
    ],
  },
  {
    kanji: "堆",
    keyword: "piled high",
    reading: "うずたか.い / タイ / ツイ",
    radical: "堆",
    componentHint: "classical radical 32",
    examples: [
      {word: "堆積", reading: "たいせき", meaning: "pile (of things); depositing (in a pile)"},
      {word: "堆い", reading: "うずたかい", meaning: "piled up high; in a heap"},
      {word: "堆肥", reading: "たいひ", meaning: "compost"}
    ],
  },
  {
    kanji: "椎",
    keyword: "chinquapin/mallet",
    reading: "つち / う.つ / ツイ / スイ",
    radical: "椎",
    componentHint: "classical radical 75",
    examples: [
      {word: "脊椎", reading: "せきつい", meaning: "spine; vertebral column"},
      {word: "椎茸", reading: "しいたけ", meaning: "shiitake mushroom (Lentinula edodes)"},
      {word: "椎の木", reading: "しいのき", meaning: "any beech tree of genus Castanopsis"}
    ],
  },
  {
    kanji: "脊",
    keyword: "stature/height",
    reading: "せ / せい / セキ",
    radical: "脊",
    componentHint: "classical radical 130",
    examples: [
      {word: "脊髄", reading: "せきずい", meaning: "spinal cord"},
      {word: "脊椎", reading: "せきつい", meaning: "spine; vertebral column"},
      {word: "脊椎動物", reading: "せきついどうぶつ", meaning: "vertebrate"}
    ],
  },
  {
    kanji: "雛",
    keyword: "chick/squab",
    reading: "ひな / ひよこ / スウ / ス / ジュ",
    radical: "雛",
    componentHint: "classical radical 172",
    examples: [
      {word: "雛鳥", reading: "ひなどり", meaning: "chick; baby bird"},
      {word: "雛壇", reading: "ひなだん", meaning: "tiered doll stand (for hina dolls); tiered platform"},
      {word: "雛形", reading: "ひながた", meaning: "model; miniature"}
    ],
  },
  {
    kanji: "誰",
    keyword: "who/someone",
    reading: "だれ / たれ / た / スイ",
    radical: "誰",
    componentHint: "classical radical 149",
    examples: [
      {word: "誰か", reading: "だれか", meaning: "someone; somebody"},
      {word: "誰も彼も", reading: "だれもかれも", meaning: "everyone; one and all"},
      {word: "誰彼", reading: "だれかれ", meaning: "this or that person; anybody"}
    ],
  },
  {
    kanji: "唯",
    keyword: "solely/only",
    reading: "ただ / ユイ / イ",
    radical: "唯",
    componentHint: "classical radical 30",
    examples: [
      {word: "唯一", reading: "ゆいいつ", meaning: "only; sole"},
      {word: "唯物", reading: "ゆいぶつ", meaning: "materialism (in philosophy)"},
      {word: "唯今", reading: "ただいま", meaning: "Here I am; I'm home!"}
    ],
  },
  {
    kanji: "鳴",
    keyword: "chirp/cry",
    reading: "な.く / な.る / な.らす / メイ",
    radical: "鳴",
    componentHint: "classical radical 30",
    examples: [
      {word: "鳴る", reading: "なる", meaning: "to sound; to ring"},
      {word: "悲鳴", reading: "ひめい", meaning: "shriek; scream"},
      {word: "鳴らす", reading: "ならす", meaning: "to ring; to sound"}
    ],
  },
  {
    kanji: "亥",
    keyword: "sign of the hog/9-11PM",
    reading: "い / ガイ / カイ",
    radical: "亥",
    componentHint: "classical radical 8",
    examples: [
      {word: "戌亥", reading: "いぬい", meaning: "northwest"},
      {word: "亥年", reading: "いどし", meaning: "year of the boar"},
      {word: "亥月", reading: "がいげつ", meaning: "tenth month of the lunar calendar"}
    ],
  },
  {
    kanji: "刻",
    keyword: "engrave/cut fine",
    reading: "きざ.む / きざ.み / コク",
    radical: "刻",
    componentHint: "classical radical 18",
    examples: [
      {word: "時刻", reading: "じこく", meaning: "instant; time"},
      {word: "刻む", reading: "きざむ", meaning: "to mince; to cut fine"},
      {word: "一刻", reading: "いっこく", meaning: "minute; moment"}
    ],
  },
  {
    kanji: "劾",
    keyword: "censure/criminal investigation",
    reading: "ガイ",
    radical: "劾",
    componentHint: "classical radical 19",
    examples: [
      {word: "弾劾", reading: "だんがい", meaning: "impeachment; accusation"},
      {word: "劾奏", reading: "がいそう", meaning: "report of an official's offence to the emperor (offense)"},
      {word: "弾劾投票", reading: "だんがいとうひょう", meaning: "impeachment vote"}
    ],
  },
  {
    kanji: "核",
    keyword: "nucleus/core",
    reading: "カク",
    radical: "核",
    componentHint: "classical radical 75",
    examples: [
      {word: "核心", reading: "かくしん", meaning: "core; heart (of the matter)"},
      {word: "結核", reading: "けっかく", meaning: "tuberculosis; tubercule"},
      {word: "中核", reading: "ちゅうかく", meaning: "kernel; core"}
    ],
  },
  {
    kanji: "骸",
    keyword: "bone/body",
    reading: "むくろ / ガイ / カイ",
    radical: "骸",
    componentHint: "classical radical 188",
    examples: [
      {word: "死骸", reading: "しがい", meaning: "body; corpse"},
      {word: "残骸", reading: "ざんがい", meaning: "ruins; wreckage"},
      {word: "骸骨", reading: "がいこつ", meaning: "skeleton"}
    ],
  },
  {
    kanji: "咳",
    keyword: "cough/clear throat",
    reading: "せ.く / しわぶ.く / せき / しわぶき / カイ / ガイ",
    radical: "咳",
    componentHint: "classical radical 30",
    examples: [
      {word: "咳払い", reading: "せきばらい", meaning: "clearing one's throat; cough"},
      {word: "咳き込む", reading: "せきこむ", meaning: "to cough violently; to have a coughing fit"},
      {word: "咳く", reading: "しわぶく", meaning: "to cough"}
    ],
  },
  {
    kanji: "該",
    keyword: "above-stated/the said",
    reading: "ガイ",
    radical: "該",
    componentHint: "classical radical 149",
    examples: [
      {word: "該当", reading: "がいとう", meaning: "corresponding to; being applicable to"},
      {word: "当該", reading: "とうがい", meaning: "appropriate (e.g. authorities); concerned"},
      {word: "該博", reading: "がいはく", meaning: "profundity; extensive (knowledge)"}
    ],
  },
  {
    kanji: "診",
    keyword: "checkup/seeing",
    reading: "み.る / シン",
    radical: "診",
    componentHint: "classical radical 149",
    examples: [
      {word: "診察", reading: "しんさつ", meaning: "medical examination"},
      {word: "診断", reading: "しんだん", meaning: "diagnosis; medical examination"},
      {word: "診る", reading: "みる", meaning: "to examine (medically)"}
    ],
  },
  {
    kanji: "珍",
    keyword: "rare/curious",
    reading: "めずら.しい / たから / チン",
    radical: "珍",
    componentHint: "classical radical 96",
    examples: [
      {word: "珍しい", reading: "めずらしい", meaning: "unusual; rare"},
      {word: "物珍しい", reading: "ものめずらしい", meaning: "curious"},
      {word: "珍重", reading: "ちんちょう", meaning: "prizing; valuing highly"}
    ],
  },
  {
    kanji: "瓦",
    keyword: "tile/gram",
    reading: "かわら / ぐらむ / ガ",
    radical: "瓦",
    componentHint: "classical radical 98",
    examples: [
      {word: "煉瓦", reading: "れんが", meaning: "brick"},
      {word: "瓦礫", reading: "がれき", meaning: "rubble; debris"},
      {word: "瓦解", reading: "がかい", meaning: "collapse; downfall"}
    ],
  },
  {
    kanji: "併",
    keyword: "join/get together",
    reading: "あわ.せる / ヘイ",
    radical: "併",
    componentHint: "classical radical 9",
    examples: [
      {word: "合併", reading: "がっぺい", meaning: "combination; union"},
      {word: "併せる", reading: "あわせる", meaning: "to match (rhythm, speed, etc.); to join together"},
      {word: "併合", reading: "へいごう", meaning: "merger; joining into one"}
    ],
  },
  {
    kanji: "瓶",
    keyword: "bottle/vial",
    reading: "かめ / ビン",
    radical: "瓶",
    componentHint: "classical radical 98",
    examples: [
      {word: "花瓶", reading: "かびん", meaning: "(flower) vase"},
      {word: "小瓶", reading: "こびん", meaning: "small bottle"},
      {word: "鉄瓶", reading: "てつびん", meaning: "iron kettle"}
    ],
  },
  {
    kanji: "屏",
    keyword: "wall/fence",
    reading: "おお.う / しりぞ.く / びょう.ぶ / ヘイ / ビョウ",
    radical: "屏",
    componentHint: "classical radical 44",
    examples: [
      {word: "屏風", reading: "びょうぶ", meaning: "folding screen"},
      {word: "屏風岩", reading: "びょうぶいわ", meaning: "sheer cliff"},
      {word: "枕屏風", reading: "まくらびょうぶ", meaning: "bed(side) screen"}
    ],
  },
  {
    kanji: "塀",
    keyword: "fence/wall",
    reading: "ヘイ / ベイ",
    radical: "塀",
    componentHint: "classical radical 32",
    examples: [
      {word: "土塀", reading: "どべい", meaning: "mud wall; earthen wall"},
      {word: "練塀", reading: "ねりべい", meaning: "mud and tile wall topped with tiles"},
      {word: "船板塀", reading: "ふないたべい", meaning: "fence made from disused ship planks"}
    ],
  },
  {
    kanji: "餅",
    keyword: "mochi rice cake",
    reading: "もち / もちい / ヘイ / ヒョウ",
    radical: "餅",
    componentHint: "classical radical 184",
    examples: [
      {word: "尻餅", reading: "しりもち", meaning: "falling on one's backside (behind, bottom)"},
      {word: "煎餅", reading: "せんべい", meaning: "rice cracker; Japanese cracker"},
      {word: "餅屋", reading: "もちや", meaning: "rice cake shop keeper; rice cake store (shop)"}
    ],
  },
  {
    kanji: "餌",
    keyword: "food/bait",
    reading: "え / えば / えさ / もち / ジ / ニ",
    radical: "餌",
    componentHint: "classical radical 184",
    examples: [
      {word: "餌食", reading: "えじき", meaning: "prey; victim"},
      {word: "食餌", reading: "しょくじ", meaning: "dietary cure"},
      {word: "好餌", reading: "こうじ", meaning: "bait; decoy"}
    ],
  },
  {
    kanji: "呑",
    keyword: "drink",
    reading: "の.む / トン / ドン",
    radical: "呑",
    componentHint: "classical radical 30",
    examples: [
      {word: "呑む", reading: "のむ", meaning: "to drink; to gulp"},
      {word: "呑み込む", reading: "のみこむ", meaning: "to gulp down; to swallow deeply"},
      {word: "呑気", reading: "のんき", meaning: "carefree; optimistic"}
    ],
  },
  {
    kanji: "沃",
    keyword: "fertility",
    reading: "そそ.ぐ / ヨウ / ヨク / オク",
    radical: "沃",
    componentHint: "classical radical 85",
    examples: [
      {word: "肥沃", reading: "ひよく", meaning: "fertility; productive"},
      {word: "沃野", reading: "よくや", meaning: "fertile fields or plain"},
      {word: "豊沃", reading: "ほうよく", meaning: "fertility"}
    ],
  },
  {
    kanji: "妖",
    keyword: "attractive/bewitching",
    reading: "あや.しい / なま.めく / わざわ.い / ヨウ",
    radical: "妖",
    componentHint: "classical radical 38",
    examples: [
      {word: "妖精", reading: "ようせい", meaning: "fairy; sprite"},
      {word: "妖怪", reading: "ようかい", meaning: "ghost; apparition"},
      {word: "妖しい", reading: "あやしい", meaning: "suspicious; dubious"}
    ],
  },
  {
    kanji: "呪",
    keyword: "spell/curse",
    reading: "まじな.う / のろ.い / まじな.い / のろ.う / ジュ / シュ / シュウ",
    radical: "呪",
    componentHint: "classical radical 30",
    examples: [
      {word: "呪文", reading: "じゅもん", meaning: "spell; charm"},
      {word: "呪い", reading: "のろい", meaning: "curse; spell"},
      {word: "呪う", reading: "のろう", meaning: "to curse; to put a curse on"}
    ],
  },
  {
    kanji: "艶",
    keyword: "glossy/luster",
    reading: "つや / なま.めかしい / あで.やか / つや.めく / エン",
    radical: "艶",
    componentHint: "classical radical 139",
    examples: [
      {word: "艶やか", reading: "あでやか", meaning: "glamorous; glamourous"},
      {word: "妖艶", reading: "ようえん", meaning: "fascinating; voluptuous"},
      {word: "艶然", reading: "えんぜん", meaning: "sweetly smiling; like the smiling of a beauty"}
    ],
  },
  {
    kanji: "慈",
    keyword: "mercy",
    reading: "いつく.しむ / ジ",
    radical: "慈",
    componentHint: "classical radical 61",
    examples: [
      {word: "慈悲", reading: "じひ", meaning: "compassion (e.g. of Buddha); benevolence"},
      {word: "無慈悲", reading: "むじひ", meaning: "merciless; ruthless"},
      {word: "慈善", reading: "じぜん", meaning: "charity; philanthropy"}
    ],
  },
  {
    kanji: "滋",
    keyword: "nourishing/more & more",
    reading: "ジ",
    radical: "滋",
    componentHint: "classical radical 85",
    examples: [
      {word: "滋養", reading: "じよう", meaning: "nourishment"},
      {word: "滋味", reading: "じみ", meaning: "nutriment; wholesome"},
      {word: "京滋", reading: "けいじ", meaning: "Kyoto-Shiga; Kyoto and Shiga"}
    ],
  },
  {
    kanji: "磁",
    keyword: "magnet/porcelain",
    reading: "ジ",
    radical: "磁",
    componentHint: "classical radical 112",
    examples: [
      {word: "磁石", reading: "じしゃく", meaning: "magnet; compass"},
      {word: "電磁", reading: "でんじ", meaning: "electromagnetic"},
      {word: "磁気", reading: "じき", meaning: "magnetism"}
    ],
  },
  {
    kanji: "擁",
    keyword: "hug/embrace",
    reading: "ヨウ",
    radical: "擁",
    componentHint: "classical radical 64",
    examples: [
      {word: "抱擁", reading: "ほうよう", meaning: "embrace; hug"},
      {word: "擁護", reading: "ようご", meaning: "protection; advocacy"},
      {word: "擁立", reading: "ようりつ", meaning: "back; support"}
    ],
  },
  {
    kanji: "腐",
    keyword: "rot/decay",
    reading: "くさ.る / -くさ.る / くさ.れる / くさ.れ / フ",
    radical: "腐",
    componentHint: "classical radical 130",
    examples: [
      {word: "腐る", reading: "くさる", meaning: "to rot; to go bad"},
      {word: "豆腐", reading: "とうふ", meaning: "tofu; bean-curd"},
      {word: "腐敗", reading: "ふはい", meaning: "decomposition; putrefaction"}
    ],
  },
  {
    kanji: "芯",
    keyword: "wick",
    reading: "シン",
    radical: "芯",
    componentHint: "classical radical 140",
    examples: [
      {word: "帯芯", reading: "おびしん", meaning: "thick obi sash; sash padding"},
      {word: "芯地", reading: "しんじ", meaning: "padding; lining"},
      {word: "偏芯", reading: "へんしん", meaning: "eccentricity (in mechanics, electronics, etc.)"}
    ],
  },
  {
    kanji: "蒔",
    keyword: "sow (seeds)",
    reading: "う.える / まく / シ / ジ",
    radical: "蒔",
    componentHint: "classical radical 140",
    examples: [
      {word: "蒔く", reading: "まく", meaning: "to sow; to plant"},
      {word: "蒔絵", reading: "まきえ", meaning: "gold or silver lacquer; lacquer decoration sprinkled with metal powder"},
      {word: "種蒔き", reading: "たねまき", meaning: "sowing seeds; planting seeds"}
    ],
  },
  {
    kanji: "撒",
    keyword: "scatter/sprinkle",
    reading: "ま.く / サン / サツ",
    radical: "撒",
    componentHint: "classical radical 64",
    examples: [
      {word: "撒く", reading: "まく", meaning: "to scatter; to sprinkle"},
      {word: "撒き散らす", reading: "まきちらす", meaning: "to scatter; to spread"},
      {word: "撒布", reading: "さんぷ", meaning: "dissemination; scattering"}
    ],
  },
  {
    kanji: "撤",
    keyword: "remove/withdraw",
    reading: "テツ",
    radical: "撤",
    componentHint: "classical radical 64",
    examples: [
      {word: "撤退", reading: "てったい", meaning: "evacuation; withdrawal"},
      {word: "撤回", reading: "てっかい", meaning: "withdrawal; retraction"},
      {word: "撤収", reading: "てっしゅう", meaning: "removal (e.g. of a building); dismantling (e.g. a tent)"}
    ],
  },
  {
    kanji: "徹",
    keyword: "penetrate/clear",
    reading: "テツ",
    radical: "徹",
    componentHint: "classical radical 60",
    examples: [
      {word: "徹底的", reading: "てっていてき", meaning: "thorough; complete"},
      {word: "徹底", reading: "てってい", meaning: "thoroughness; completeness"},
      {word: "徹夜", reading: "てつや", meaning: "all night; all-night vigil"}
    ],
  },
  {
    kanji: "微",
    keyword: "delicate/minuteness",
    reading: "かす.か / ビ",
    radical: "微",
    componentHint: "classical radical 60",
    examples: [
      {word: "微笑", reading: "びしょう", meaning: "smile"},
      {word: "微笑む", reading: "ほほえむ", meaning: "to smile"},
      {word: "微妙", reading: "びみょう", meaning: "delicate; subtle"}
    ],
  },
  {
    kanji: "徴",
    keyword: "indications/sign",
    reading: "しるし / チョウ / チ",
    radical: "徴",
    componentHint: "classical radical 60",
    examples: [
      {word: "特徴", reading: "とくちょう", meaning: "feature; trait"},
      {word: "象徴", reading: "しょうちょう", meaning: "symbol"},
      {word: "徴候", reading: "ちょうこう", meaning: "sign; indication"}
    ],
  },
  {
    kanji: "懲",
    keyword: "penal/chastise",
    reading: "こ.りる / こ.らす / こ.らしめる / チョウ",
    radical: "懲",
    componentHint: "classical radical 61",
    examples: [
      {word: "懲役", reading: "ちょうえき", meaning: "penal servitude; imprisonment with hard labor (hard labour)"},
      {word: "懲りる", reading: "こりる", meaning: "to learn by experience; to learn one's lesson"},
      {word: "懲罰", reading: "ちょうばつ", meaning: "discipline; punishment"}
    ],
  },
  {
    kanji: "殆",
    keyword: "almost/quite",
    reading: "ほとほと / ほとん.ど / あやうい / タイ / サイ",
    radical: "殆",
    componentHint: "classical radical 78",
    examples: [
      {word: "殆ど", reading: "ほとんど", meaning: "mostly; nearly"},
      {word: "危殆", reading: "きたい", meaning: "danger; jeopardy"},
      {word: "殆んど", reading: "ほとんど", meaning: "mostly; nearly"}
    ],
  },
  {
    kanji: "后",
    keyword: "empress/queen",
    reading: "きさき / コウ / ゴ",
    radical: "后",
    componentHint: "classical radical 30",
    examples: [
      {word: "皇后", reading: "こうごう", meaning: "(Japanese) empress; queen"},
      {word: "皇太后", reading: "こうたいごう", meaning: "Queen Mother; Empress Dowager"},
      {word: "母后", reading: "ぼこう", meaning: "empress dowager"}
    ],
  },
  {
    kanji: "垢",
    keyword: "dirt/grime",
    reading: "あか / はじ / コウ / ク",
    radical: "垢",
    componentHint: "classical radical 32",
    examples: [
      {word: "無垢", reading: "むく", meaning: "purity"},
      {word: "垢抜ける", reading: "あかぬける", meaning: "to refine"},
      {word: "手垢", reading: "てあか", meaning: "finger marks; dirty marks"}
    ],
  },
  {
    kanji: "妃",
    keyword: "queen/princess",
    reading: "きさき / ヒ",
    radical: "妃",
    componentHint: "classical radical 38",
    examples: [
      {word: "王妃", reading: "おうひ", meaning: "queen"},
      {word: "妃殿下", reading: "ひでんか", meaning: "princess; Her Royal Highness"},
      {word: "后妃", reading: "こうひ", meaning: "queen"}
    ],
  },
  {
    kanji: "姫",
    keyword: "princess",
    reading: "ひめ / ひめ- / キ",
    radical: "姫",
    componentHint: "classical radical 38",
    examples: [
      {word: "姫君", reading: "ひめぎみ", meaning: "daughter of a person of high rank (i.e. a king, noble, aristocrat, etc.)"},
      {word: "千姫", reading: "せんひめ", meaning: "Princess Sen"},
      {word: "お姫さま", reading: "おひめさま", meaning: "princess; spoiled girl"}
    ],
  },
  {
    kanji: "如",
    keyword: "likeness/like",
    reading: "ごと.し / ジョ / ニョ",
    radical: "如",
    componentHint: "classical radical 38",
    examples: [
      {word: "如し", reading: "ごとし", meaning: "like; as if"},
      {word: "如く", reading: "ごとく", meaning: "like; as if"},
      {word: "如何", reading: "いか", meaning: "how; in what way"}
    ],
  },
  {
    kanji: "茹",
    keyword: "boil/seethe",
    reading: "ゆ.でる / う.でる / ジョ / ニョ",
    radical: "茹",
    componentHint: "classical radical 140",
    examples: [
      {word: "茹でる", reading: "ゆでる", meaning: "to boil (something in hot water); to treat with medicinal steam (a swelling, etc.)"},
      {word: "茹だる", reading: "ゆだる", meaning: "to boil; to seethe"},
      {word: "茹で上がる", reading: "ゆであがる", meaning: "to be completely boiled; to be boiled to a turn"}
    ],
  },
  {
    kanji: "婿",
    keyword: "bridegroom/son-in-law",
    reading: "むこ / セイ",
    radical: "婿",
    componentHint: "classical radical 38",
    examples: [
      {word: "花婿", reading: "はなむこ", meaning: "bridegroom"},
      {word: "婿養子", reading: "むこようし", meaning: "son-in-law taken (adopted) into family"},
      {word: "女婿", reading: "じょせい", meaning: "one's son-in-law"}
    ],
  },
  {
    kanji: "娘",
    keyword: "daughter/girl",
    reading: "むすめ / こ / ジョウ",
    radical: "娘",
    componentHint: "classical radical 38",
    examples: [
      {word: "小娘", reading: "こむすめ", meaning: "young girl; lass"},
      {word: "孫娘", reading: "まごむすめ", meaning: "granddaughter"},
      {word: "一人娘", reading: "ひとりむすめ", meaning: "only daughter"}
    ],
  },
  {
    kanji: "嫁",
    keyword: "marry into/bride",
    reading: "よめ / とつ.ぐ / い.く / ゆ.く / カ",
    radical: "嫁",
    componentHint: "classical radical 38",
    examples: [
      {word: "花嫁", reading: "はなよめ", meaning: "bride"},
      {word: "嫁ぐ", reading: "とつぐ", meaning: "to marry (of a woman); to become a bride"},
      {word: "嫁さん", reading: "よめさん", meaning: "wife"}
    ],
  },
  {
    kanji: "稼",
    keyword: "earnings/work",
    reading: "かせ.ぐ / カ",
    radical: "稼",
    componentHint: "classical radical 115",
    examples: [
      {word: "稼ぐ", reading: "かせぐ", meaning: "to earn income; to labor"},
      {word: "稼ぎ", reading: "かせぎ", meaning: "earnings"},
      {word: "稼業", reading: "かぎょう", meaning: "trade; business"}
    ],
  },
  {
    kanji: "塚",
    keyword: "hillock/mound",
    reading: "つか / -づか / チョウ",
    radical: "塚",
    componentHint: "classical radical 32",
    examples: [
      {word: "貝塚", reading: "かいづか", meaning: "shell heap; shell mound"},
      {word: "狐塚", reading: "きつねづか", meaning: "foxhole; fox mound"},
      {word: "蟻塚", reading: "ありづか", meaning: "anthill"}
    ],
  },
  {
    kanji: "豪",
    keyword: "overpowering/great",
    reading: "えら.い / ゴウ",
    radical: "豪",
    componentHint: "classical radical 152",
    examples: [
      {word: "豪華", reading: "ごうか", meaning: "wonderful; gorgeous"},
      {word: "豪族", reading: "ごうぞく", meaning: "powerful family (clan)"},
      {word: "豪奢", reading: "ごうしゃ", meaning: "luxury; magnificence"}
    ],
  },
  {
    kanji: "蒙",
    keyword: "ignorance/darkness",
    reading: "こうむ.る / おお.う / くら.い / モウ / ボウ",
    radical: "蒙",
    componentHint: "classical radical 140",
    examples: [
      {word: "蒙る", reading: "こうむる", meaning: "to suffer; to receive"},
      {word: "啓蒙", reading: "けいもう", meaning: "enlightenment; instruction"},
      {word: "満蒙", reading: "まんもう", meaning: "Manchuria and Mongolia"}
    ],
  },
  {
    kanji: "墾",
    keyword: "ground-breaking/open up farmland",
    reading: "コン",
    radical: "墾",
    componentHint: "classical radical 32",
    examples: [
      {word: "開墾", reading: "かいこん", meaning: "cultivating new land; clearing"},
      {word: "墾田", reading: "こんでん", meaning: "new rice field"},
      {word: "未墾", reading: "みこん", meaning: "uncultivated; wild"}
    ],
  },
  {
    kanji: "懇",
    keyword: "sociable/kind",
    reading: "ねんご.ろ / コン",
    radical: "懇",
    componentHint: "classical radical 61",
    examples: [
      {word: "懇願", reading: "こんがん", meaning: "entreaty; supplication"},
      {word: "懇意", reading: "こんい", meaning: "kindness; intimacy"},
      {word: "懇話", reading: "こんわ", meaning: "friendly (familiar) chat (talk)"}
    ],
  },
  {
    kanji: "貌",
    keyword: "form/appearance",
    reading: "かたち / かたどる / ボウ / バク",
    radical: "貌",
    componentHint: "classical radical 153",
    examples: [
      {word: "美貌", reading: "びぼう", meaning: "beautiful face; good looks"},
      {word: "容貌", reading: "ようぼう", meaning: "looks; personal appearance"},
      {word: "風貌", reading: "ふうぼう", meaning: "looks; appearance"}
    ],
  },
  {
    kanji: "逐",
    keyword: "pursue/drive away",
    reading: "チク",
    radical: "逐",
    componentHint: "classical radical 162",
    examples: [
      {word: "駆逐", reading: "くちく", meaning: "extermination; expulsion"},
      {word: "逐一", reading: "ちくいち", meaning: "one by one; in detail"},
      {word: "放逐", reading: "ほうちく", meaning: "expulsion; ejection"}
    ],
  },
  {
    kanji: "遂",
    keyword: "consummate/accomplish",
    reading: "と.げる / つい.に / スイ",
    radical: "遂",
    componentHint: "classical radical 162",
    examples: [
      {word: "遂に", reading: "ついに", meaning: "finally; at last"},
      {word: "遂げる", reading: "とげる", meaning: "to accomplish; to achieve"},
      {word: "遂行", reading: "すいこう", meaning: "accomplishment; execution"}
    ],
  },
  {
    kanji: "墜",
    keyword: "crash/fall (down)",
    reading: "お.ちる / お.つ / ツイ",
    radical: "墜",
    componentHint: "classical radical 32",
    examples: [
      {word: "墜落", reading: "ついらく", meaning: "falling; crashing"},
      {word: "撃墜", reading: "げきつい", meaning: "shooting down (aircraft)"},
      {word: "墜ちる", reading: "おちる", meaning: "to fall down; to drop"}
    ],
  },
  {
    kanji: "堕",
    keyword: "degenerate/descend to",
    reading: "お.ちる / くず.す / くず.れる / ダ",
    radical: "堕",
    componentHint: "classical radical 32",
    examples: [
      {word: "堕落", reading: "だらく", meaning: "depravity; corruption"},
      {word: "堕ちる", reading: "おちる", meaning: "to fall down; to drop"},
      {word: "堕す", reading: "だす", meaning: "to degenerate; to lapse into"}
    ],
  },
  {
    kanji: "随",
    keyword: "follow/though",
    reading: "まにま.に / したが.う / ズイ",
    radical: "随",
    componentHint: "classical radical 170",
    examples: [
      {word: "随分", reading: "ずいぶん", meaning: "very; extremely"},
      {word: "随筆", reading: "ずいひつ", meaning: "essays; miscellaneous writings"},
      {word: "随一", reading: "ずいいち", meaning: "best; greatest"}
    ],
  },
  {
    kanji: "附",
    keyword: "affixed/attach",
    reading: "つ.ける / つ.く / フ",
    radical: "附",
    componentHint: "classical radical 170",
    examples: [
      {word: "附近", reading: "ふきん", meaning: "neighbourhood; neighborhood"},
      {word: "附ける", reading: "つける", meaning: "to attach; to join"},
      {word: "附属", reading: "ふぞく", meaning: "attached; belonging (to)"}
    ],
  },
  {
    kanji: "髄",
    keyword: "marrow/pith",
    reading: "ズイ",
    radical: "髄",
    componentHint: "classical radical 188",
    examples: [
      {word: "脳髄", reading: "のうずい", meaning: "brain"},
      {word: "脊髄", reading: "せきずい", meaning: "spinal cord"},
      {word: "骨髄", reading: "こつずい", meaning: "bone marrow; medulla"}
    ],
  },
  {
    kanji: "怠",
    keyword: "neglect/laziness",
    reading: "おこた.る / なま.ける / タイ",
    radical: "怠",
    componentHint: "classical radical 61",
    examples: [
      {word: "怠る", reading: "おこたる", meaning: "to be negligent in doing something; to shirk"},
      {word: "倦怠", reading: "けんたい", meaning: "languor; fatigue"},
      {word: "怠惰", reading: "たいだ", meaning: "laziness; idleness"}
    ],
  },
  {
    kanji: "惰",
    keyword: "lazy/laziness",
    reading: "ダ",
    radical: "惰",
    componentHint: "classical radical 61",
    examples: [
      {word: "怠惰", reading: "たいだ", meaning: "laziness; idleness"},
      {word: "惰性", reading: "だせい", meaning: "inertia; habit"},
      {word: "惰眠", reading: "だみん", meaning: "indolence; inactivity"}
    ],
  },
  {
    kanji: "佐",
    keyword: "assistant/help",
    reading: "サ",
    radical: "佐",
    componentHint: "classical radical 9",
    examples: [
      {word: "少佐", reading: "しょうさ", meaning: "major; lieutenant commander"},
      {word: "大佐", reading: "たいさ", meaning: "colonel; (navy) captain"},
      {word: "中佐", reading: "ちゅうさ", meaning: "lieutenant colonel; commander (navy)"}
    ],
  },
  {
    kanji: "玩",
    keyword: "play/take pleasure in",
    reading: "もちあそ.ぶ / もてあそ.ぶ / ガン",
    radical: "玩",
    componentHint: "classical radical 96",
    examples: [
      {word: "玩具", reading: "おもちゃ", meaning: "toy; plaything"},
      {word: "愛玩", reading: "あいがん", meaning: "caring for (esp. a pet or a small object); cherishing"},
      {word: "玩ぶ", reading: "もてあそぶ", meaning: "to play with (a toy, one's hair, etc.); to fiddle with"}
    ],
  },
  {
    kanji: "弄",
    keyword: "play with/tamper",
    reading: "いじく.る / ろう.する / いじ.る / ひねく.る / ロウ / ル",
    radical: "弄",
    componentHint: "classical radical 96",
    examples: [
      {word: "弄ぶ", reading: "もてあそぶ", meaning: "to play with (a toy, one's hair, etc.); to fiddle with"},
      {word: "翻弄", reading: "ほんろう", meaning: "trifling with; toying with"},
      {word: "嘲弄", reading: "ちょうろう", meaning: "scorn; mockery"}
    ],
  },
  {
    kanji: "嘲",
    keyword: "ridicule/insult",
    reading: "あざけ.る / チョウ / トウ",
    radical: "嘲",
    componentHint: "classical radical 30",
    examples: [
      {word: "嘲笑", reading: "ちょうしょう", meaning: "scorn; sneer"},
      {word: "嘲る", reading: "あざける", meaning: "to scoff; to laugh at"},
      {word: "自嘲", reading: "じちょう", meaning: "self-deprecation; self-derision"}
    ],
  },
  {
    kanji: "奔",
    keyword: "run/bustle",
    reading: "はし.る / ホン",
    radical: "奔",
    componentHint: "classical radical 37",
    examples: [
      {word: "奔流", reading: "ほんりゅう", meaning: "torrent; violently rushing stream"},
      {word: "奔走", reading: "ほんそう", meaning: "running about; efforts"},
      {word: "奔放", reading: "ほんぽう", meaning: "wild; uninhibited"}
    ],
  },
  {
    kanji: "弊",
    keyword: "abuse/evil",
    reading: "ヘイ",
    radical: "弊",
    componentHint: "classical radical 55",
    examples: [
      {word: "疲弊", reading: "ひへい", meaning: "exhaustion; impoverishment"},
      {word: "弊害", reading: "へいがい", meaning: "adverse effect; harmful effect"},
      {word: "語弊", reading: "ごへい", meaning: "faulty expression"}
    ],
  },
  {
    kanji: "幣",
    keyword: "cash/bad habit",
    reading: "ぬさ / ヘイ",
    radical: "幣",
    componentHint: "classical radical 50",
    examples: [
      {word: "紙幣", reading: "しへい", meaning: "paper money; notes"},
      {word: "貨幣", reading: "かへい", meaning: "money; currency"},
      {word: "御幣", reading: "ごへい", meaning: "staff with plaited paper streamers"}
    ],
  },
  {
    kanji: "蔽",
    keyword: "cover/shade",
    reading: "おお.う / おお.い / ヘイ / ヘツ / フツ",
    radical: "蔽",
    componentHint: "classical radical 140",
    examples: [
      {word: "蔽う", reading: "おおう", meaning: "to cover; to hide"},
      {word: "隠蔽", reading: "いんぺい", meaning: "concealment; suppression"},
      {word: "遮蔽", reading: "しゃへい", meaning: "screen; shielding"}
    ],
  },
  {
    kanji: "朋",
    keyword: "companion/friend",
    reading: "とも / ホウ",
    radical: "朋",
    componentHint: "classical radical 74",
    examples: [
      {word: "朋輩", reading: "ほうばい", meaning: "comrade; friend"},
      {word: "朋友", reading: "ほうゆう", meaning: "friend; companion"},
      {word: "同朋", reading: "どうほう", meaning: "companions; fellows"}
    ],
  },
  {
    kanji: "棚",
    keyword: "shelf/ledge",
    reading: "たな / -だな / ホウ",
    radical: "棚",
    componentHint: "classical radical 75",
    examples: [
      {word: "戸棚", reading: "とだな", meaning: "cupboard; locker"},
      {word: "本棚", reading: "ほんだな", meaning: "bookshelves; bookshelf"},
      {word: "書棚", reading: "しょだな", meaning: "bookshelf"}
    ],
  },
  {
    kanji: "柵",
    keyword: "stockade/fence",
    reading: "しがら.む / しがらみ / とりで / やらい / サク / サン",
    radical: "柵",
    componentHint: "classical radical 75",
    examples: [
      {word: "鉄柵", reading: "てっさく", meaning: "iron railing or fence"},
      {word: "電気柵", reading: "でんきさく", meaning: "electric fence"},
      {word: "柵状組織", reading: "さくじょうそしき", meaning: "palisade layer"}
    ],
  },
  {
    kanji: "桁",
    keyword: "beam/girder",
    reading: "けた / コウ",
    radical: "桁",
    componentHint: "classical radical 75",
    examples: [
      {word: "帆桁", reading: "ほげた", meaning: "(sail) yard; boom"},
      {word: "桁違い", reading: "けたちがい", meaning: "an order of magnitude higher; off by a digit"},
      {word: "桁外れ", reading: "けたはずれ", meaning: "incredible; extraordinary"}
    ],
  },
  {
    kanji: "栓",
    keyword: "plug/bolt",
    reading: "セン",
    radical: "栓",
    componentHint: "classical radical 75",
    examples: [
      {word: "栓抜き", reading: "せんぬき", meaning: "bottle opener; corkscrew"},
      {word: "元栓", reading: "もとせん", meaning: "stopcock (gas, water)"},
      {word: "消火栓", reading: "しょうかせん", meaning: "fire hydrant"}
    ],
  },
  {
    kanji: "詮",
    keyword: "discussion/methods called for",
    reading: "せん.ずる / かい / あき.らか / セン",
    radical: "詮",
    componentHint: "classical radical 149",
    examples: [
      {word: "所詮", reading: "しょせん", meaning: "after all"},
      {word: "詮索", reading: "せんさく", meaning: "inquiry into; enquiry into"},
      {word: "詮議", reading: "せんぎ", meaning: "discussion; examination"}
    ],
  },
  {
    kanji: "塞",
    keyword: "close/shut",
    reading: "ふさ.ぐ / とりで / み.ちる / ソク / サイ",
    radical: "塞",
    componentHint: "classical radical 32",
    examples: [
      {word: "塞ぐ", reading: "ふさぐ", meaning: "to stop up; to close up"},
      {word: "要塞", reading: "ようさい", meaning: "fort; stronghold"},
      {word: "塞がる", reading: "ふさがる", meaning: "to be closed; to be blocked"}
    ],
  },
  {
    kanji: "梗",
    keyword: "for the most part/close up",
    reading: "ふさぐ / やまにれ / おおむね / コウ / キョウ",
    radical: "梗",
    componentHint: "classical radical 75",
    examples: [
      {word: "桔梗", reading: "ききょう", meaning: "Chinese bellflower; Platycodon grandiflorum"},
      {word: "梗概", reading: "こうがい", meaning: "outline; summary"},
      {word: "心筋梗塞", reading: "しんきんこうそく", meaning: "heart attack; myocardial infarction"}
    ],
  },
  {
    kanji: "柿",
    keyword: "persimmon",
    reading: "かき / シ",
    radical: "柿",
    componentHint: "classical radical 75",
    examples: [
      {word: "柿の木", reading: "かきのき", meaning: "(Japanese) persimmon tree (Diospyros kaki)"},
      {word: "柿ノ木", reading: "かきのき", meaning: "(Japanese) persimmon tree (Diospyros kaki)"},
      {word: "柿色", reading: "かきいろ", meaning: "reddish-brown; yellowish-brown"}
    ],
  },
  {
    kanji: "藤",
    keyword: "wisteria",
    reading: "ふじ / トウ / ドウ",
    radical: "藤",
    componentHint: "classical radical 140",
    examples: [
      {word: "葛藤", reading: "かっとう", meaning: "conflict; complication"},
      {word: "藤棚", reading: "ふじだな", meaning: "wisteria trellis; wisteria arbor (arbour)"},
      {word: "藤蔓", reading: "ふじづる", meaning: "wisteria vine"}
    ],
  },
  {
    kanji: "騰",
    keyword: "leaping up/jumping up",
    reading: "あが.る / のぼ.る / トウ",
    radical: "騰",
    componentHint: "classical radical 187",
    examples: [
      {word: "沸騰", reading: "ふっとう", meaning: "boiling; seething"},
      {word: "高騰", reading: "こうとう", meaning: "sudden price jump; steep price rise"},
      {word: "奔騰", reading: "ほんとう", meaning: "price jump; boom"}
    ],
  },
  {
    kanji: "謄",
    keyword: "mimeograph/copy",
    reading: "トウ",
    radical: "謄",
    componentHint: "classical radical 149",
    examples: [
      {word: "謄本", reading: "とうほん", meaning: "certified copy; transcript"},
      {word: "謄写版", reading: "とうしゃばん", meaning: "mimeograph; stencil"},
      {word: "謄写", reading: "とうしゃ", meaning: "copy; transcription"}
    ],
  },
  {
    kanji: "麺",
    keyword: "noodles/wheat flour",
    reading: "むぎこ / メン / ベン",
    radical: "麺",
    componentHint: "classical radical 199",
    examples: [
      {word: "素麺", reading: "そうめん", meaning: "fine white noodles"},
      {word: "麺棒", reading: "めんぼう", meaning: "rolling pin"},
      {word: "麺類", reading: "めんるい", meaning: "noodles; vermicelli"}
    ],
  },
  {
    kanji: "拉",
    keyword: "Latin/kidnap",
    reading: "らっ.する / ひし.ぐ / くだ.く / ラツ / ラ / ロウ",
    radical: "拉",
    componentHint: "classical radical 64",
    examples: [
      {word: "拉致", reading: "らち", meaning: "taking captive; carrying away"},
      {word: "拉ぐ", reading: "ひしぐ", meaning: "to crush"},
      {word: "拉げる", reading: "ひしゃげる", meaning: "to be crushed; to be squashed (flat)"}
    ],
  },
  {
    kanji: "晃",
    keyword: "clear",
    reading: "あきらか / コウ",
    radical: "晃",
    componentHint: "classical radical 72",
    examples: [
      {word: "晃々", reading: "こうこう", meaning: "brilliant; dazzling"},
      {word: "晃晃", reading: "こうこう", meaning: "brilliant; dazzling"},
      {word: "晃曜", reading: "こうよう", meaning: "dazzling brightness"}
    ],
  },
  {
    kanji: "幌",
    keyword: "canopy/awning",
    reading: "ほろ / とばり / コウ",
    radical: "幌",
    componentHint: "classical radical 50",
    examples: [
      {word: "札幌", reading: "さっぽろ", meaning: "Sapporo (city)"},
      {word: "幌馬車", reading: "ほろばしゃ", meaning: "covered wagon; prairie schooner"},
      {word: "幌蚊帳", reading: "ほろがや", meaning: "tent-shaped mosquito net (often used to protect infants)"}
    ],
  },
  {
    kanji: "厘",
    keyword: "rin/1/10 sen",
    reading: "リン",
    radical: "厘",
    componentHint: "classical radical 27",
    examples: [
      {word: "九分九厘", reading: "くぶくりん", meaning: "ten to one; nine cases out of ten"},
      {word: "一分一厘", reading: "いちぶいちりん", meaning: "(not even) a bit of; (not even) a hint of"},
      {word: "七厘", reading: "しちりん", meaning: "earthen charcoal brazier (for cooking)"}
    ],
  },
  {
    kanji: "畝",
    keyword: "furrow/thirty tsubo",
    reading: "せ / うね / ボウ / ホ / モ",
    radical: "畝",
    componentHint: "classical radical 102",
    examples: [
      {word: "畝間", reading: "うねま", meaning: "furrow; room with ridged roof"},
      {word: "畝織", reading: "うねおり", meaning: "ribbed fabric; corded fabric"},
      {word: "畝る", reading: "うねる", meaning: "to wind (of a road, etc.); to meander"}
    ],
  },
  {
    kanji: "匁",
    keyword: "monme/3.75 grams",
    reading: "もんめ / め",
    radical: "匁",
    componentHint: "classical radical 20",
    examples: [
      {word: "百匁", reading: "ひゃくもんめ", meaning: "375 grams (100 monme)"},
      {word: "匁", reading: "もんめ", meaning: "unit of weight, approx. 3.75 g"},
      {word: "匁", reading: "もんめ", meaning: "kanji entry"}
    ],
  },
  {
    kanji: "匂",
    keyword: "fragrant/stink",
    reading: "にお.う / にお.い / にお.わせる",
    radical: "匂",
    componentHint: "classical radical 20",
    examples: [
      {word: "匂い", reading: "におい", meaning: "odour; odor"},
      {word: "匂う", reading: "におう", meaning: "to be fragrant; to smell (good)"},
      {word: "匂わせる", reading: "におわせる", meaning: "to smell of; to give off a scent"}
    ],
  },
  {
    kanji: "勾",
    keyword: "be bent/slope",
    reading: "かぎ / ま.がる / コウ / ク",
    radical: "勾",
    componentHint: "classical radical 20",
    examples: [
      {word: "勾配", reading: "こうばい", meaning: "slope; incline"},
      {word: "勾玉", reading: "まがたま", meaning: "comma-shaped jewels"},
      {word: "勾留", reading: "こうりゅう", meaning: "detention; confinement"}
    ],
  },
  {
    kanji: "挨",
    keyword: "approach/draw near",
    reading: "ひら.く / アイ",
    radical: "挨",
    componentHint: "classical radical 64",
    examples: [
      {word: "挨拶", reading: "あいさつ", meaning: "greeting; greetings"},
      {word: "挨拶状", reading: "あいさつじょう", meaning: "greeting card"},
      {word: "ご挨拶", reading: "ごあいさつ", meaning: "greeting; a fine thing to say (used as part of a sarcastic response to a rude remark)"}
    ],
  },
  {
    kanji: "拶",
    keyword: "be imminent/draw close",
    reading: "せま.る / サツ",
    radical: "拶",
    componentHint: "classical radical 64",
    examples: [
      {word: "挨拶", reading: "あいさつ", meaning: "greeting; greetings"},
      {word: "挨拶状", reading: "あいさつじょう", meaning: "greeting card"},
      {word: "ご挨拶", reading: "ごあいさつ", meaning: "greeting; a fine thing to say (used as part of a sarcastic response to a rude remark)"}
    ],
  },
  {
    kanji: "曖",
    keyword: "dark/not clear",
    reading: "くら.い / アイ",
    radical: "曖",
    componentHint: "classical radical 72",
    examples: [
      {word: "曖昧", reading: "あいまい", meaning: "vague; ambiguous"},
      {word: "曖昧屋", reading: "あいまいや", meaning: "brothel fronting as a tea house, inn, restaurant, etc."},
      {word: "曖曖", reading: "あいあい", meaning: "dim; faint"}
    ],
  },
  {
    kanji: "昧",
    keyword: "dark/foolish",
    reading: "くら.い / むさぼ.る / マイ / バイ",
    radical: "昧",
    componentHint: "classical radical 72",
    examples: [
      {word: "曖昧", reading: "あいまい", meaning: "vague; ambiguous"},
      {word: "三昧", reading: "さんまい", meaning: "samadhi (state of intense concentration achieved through meditation); concentrating on something"},
      {word: "蒙昧", reading: "もうまい", meaning: "ignorance; (lack of) enlightenment or civilization (civilisation)"}
    ],
  },
  {
    kanji: "瑠",
    keyword: "lapis lazuli",
    reading: "ル / リュウ",
    radical: "瑠",
    componentHint: "classical radical 96",
    examples: [
      {word: "瑠璃", reading: "るり", meaning: "lapis lazuli; lapis lazuli (color)"},
      {word: "浄瑠璃", reading: "じょうるり", meaning: "type of dramatic recitation accompanied by a shamisen (associated with the Japanese puppet theater)"},
      {word: "人形浄瑠璃", reading: "にんぎょうじょうるり", meaning: "Japanese puppet theatre in which recited narrative and dialog is accompanied by a shamisen (forerunner of bunraku)"}
    ],
  },
  {
    kanji: "璃",
    keyword: "glassy/lapis lazuli",
    reading: "リ",
    radical: "璃",
    componentHint: "classical radical 96",
    examples: [
      {word: "瑠璃", reading: "るり", meaning: "lapis lazuli; lapis lazuli (color)"},
      {word: "玻璃", reading: "はり", meaning: "quartz; glass"},
      {word: "浄瑠璃", reading: "じょうるり", meaning: "type of dramatic recitation accompanied by a shamisen (associated with the Japanese puppet theater)"}
    ],
  },
  {
    kanji: "嫉",
    keyword: "jealous/envy",
    reading: "そね.む / ねた.む / にく.む / シツ",
    radical: "嫉",
    componentHint: "classical radical 38",
    examples: [
      {word: "嫉妬", reading: "しっと", meaning: "jealousy; envy"},
      {word: "嫉む", reading: "そねむ", meaning: "to be jealous of; to envy"},
      {word: "嫉視", reading: "しっし", meaning: "jealousy; to be jealous"}
    ],
  },
  {
    kanji: "妬",
    keyword: "jealous/envy",
    reading: "ねた.む / そね.む / つも.る / ふさ.ぐ / ト / ツ",
    radical: "妬",
    componentHint: "classical radical 38",
    examples: [
      {word: "嫉妬", reading: "しっと", meaning: "jealousy; envy"},
      {word: "妬む", reading: "そねむ", meaning: "to be jealous of; to envy"},
      {word: "妬く", reading: "やく", meaning: "to be jealous of; to be envious of"}
    ],
  },
  {
    kanji: "鹿",
    keyword: "deer",
    reading: "しか / か / ロク",
    radical: "鹿",
    componentHint: "classical radical 198",
    examples: [
      {word: "馬鹿", reading: "ばか", meaning: "fool; idiot"},
      {word: "馬鹿げる", reading: "ばかげる", meaning: "to look foolish"},
      {word: "馬鹿馬鹿しい", reading: "ばかばかしい", meaning: "absurd; ridiculous"}
    ],
  },
  {
    kanji: "塵",
    keyword: "dust/trash",
    reading: "ちり / ごみ / チン / ジン",
    radical: "塵",
    componentHint: "classical radical 32",
    examples: [
      {word: "微塵", reading: "みじん", meaning: "particle; atom"},
      {word: "砂塵", reading: "さじん", meaning: "cloud of dust; sandstorm"},
      {word: "塵芥", reading: "じんかい", meaning: "rubbish; trash"}
    ],
  },
  {
    kanji: "麓",
    keyword: "foot of a mountain",
    reading: "ふもと / ロク",
    radical: "麓",
    componentHint: "classical radical 198",
    examples: [
      {word: "山麓", reading: "さんろく", meaning: "foot of a mountain; base of a mountain"},
      {word: "岳麓", reading: "がくろく", meaning: "foot of Mt Fuji"},
      {word: "麓", reading: "ふもと", meaning: "foot (of a mountain or hill); bottom"}
    ],
  },
  {
    kanji: "麗",
    keyword: "lovely/beautiful",
    reading: "うるわ.しい / うら.らか / レイ",
    radical: "麗",
    componentHint: "classical radical 198",
    examples: [
      {word: "綺麗", reading: "きれい", meaning: "pretty; lovely"},
      {word: "秀麗", reading: "しゅうれい", meaning: "graceful; beautiful"},
      {word: "華麗", reading: "かれい", meaning: "splendor; splendour"}
    ],
  },
  {
    kanji: "薦",
    keyword: "recommend/mat",
    reading: "すす.める / セン",
    radical: "薦",
    componentHint: "classical radical 140",
    examples: [
      {word: "推薦", reading: "すいせん", meaning: "recommendation; referral"},
      {word: "薦める", reading: "すすめる", meaning: "to recommend; to advise"},
      {word: "お薦め", reading: "おすすめ", meaning: "recommendation; advice"}
    ],
  },
  {
    kanji: "慶",
    keyword: "jubilation/congratulate",
    reading: "よろこ.び / ケイ",
    radical: "慶",
    componentHint: "classical radical 61",
    examples: [
      {word: "慶応", reading: "けいおう", meaning: "Keiô era (1865.4.7-1868.9.8)"},
      {word: "慶長", reading: "けいちょう", meaning: "Keichou era (1596.10.27-1615.7.13)"},
      {word: "弁慶", reading: "べんけい", meaning: "strong person; person putting on a brave front"}
    ],
  },
  {
    kanji: "兜",
    keyword: "helmet/head piece",
    reading: "かぶと / トウ / ト",
    radical: "兜",
    componentHint: "classical radical 10",
    examples: [
      {word: "鉄兜", reading: "てつかぶと", meaning: "steel helmet"},
      {word: "鳥兜", reading: "とりかぶと", meaning: "aconite (esp. species Aconitum japonicum); wolfsbane"},
      {word: "兜虫", reading: "かぶとむし", meaning: "rhinoceros beetle (esp. the Japanese rhinoceros beetle, Trypoxylus dichotomus)"}
    ],
  },
  {
    kanji: "睨",
    keyword: "glaring at/authority",
    reading: "にら.む / にら.み / ゲイ",
    radical: "睨",
    componentHint: "classical radical 109",
    examples: [
      {word: "睨む", reading: "にらむ", meaning: "to glare at; to scowl at"},
      {word: "睨みつける", reading: "にらみつける", meaning: "to glare at; to scowl at"},
      {word: "睨み合う", reading: "にらみあう", meaning: "to glare at each other"}
    ],
  },
  {
    kanji: "鼠",
    keyword: "rat/mouse",
    reading: "ねずみ / ねず / ソ / ショ",
    radical: "鼠",
    componentHint: "classical radical 208",
    examples: [
      {word: "鼠色", reading: "ねずみいろ", meaning: "grey; gray"},
      {word: "栗鼠", reading: "りす", meaning: "squirrel (excluding flying squirrels); Japanese squirrel (Sciurus lis)"},
      {word: "窮鼠", reading: "きゅうそ", meaning: "cornered rat or mouse"}
    ],
  },
  {
    kanji: "溺",
    keyword: "drown/indulge",
    reading: "いばり / おぼ.れる / デキ / ジョウ / ニョウ",
    radical: "溺",
    componentHint: "classical radical 85",
    examples: [
      {word: "溺れる", reading: "おぼれる", meaning: "to drown; to nearly drown"},
      {word: "溺死", reading: "できし", meaning: "death by drowning"},
      {word: "溺愛", reading: "できあい", meaning: "doting"}
    ],
  },
  {
    kanji: "潟",
    keyword: "lagoon",
    reading: "かた / -がた / セキ",
    radical: "潟",
    componentHint: "classical radical 85",
    examples: [
      {word: "新潟", reading: "にいがた", meaning: "Niigata (city)"},
      {word: "干潟", reading: "ひがた", meaning: "tidal flat; tideland"},
      {word: "八郎潟", reading: "はちろうがた", meaning: "Lagoon Hachiro"}
    ],
  },
  {
    kanji: "濁",
    keyword: "voiced/uncleanness",
    reading: "にご.る / にご.す / ダク / ジョク",
    radical: "濁",
    componentHint: "classical radical 85",
    examples: [
      {word: "濁る", reading: "にごる", meaning: "to become muddy; to become cloudy"},
      {word: "濁す", reading: "にごす", meaning: "to make muddy (a liquid); to make cloudy"},
      {word: "濁流", reading: "だくりゅう", meaning: "muddy stream"}
    ],
  },
  {
    kanji: "渇",
    keyword: "thirst/dry up",
    reading: "かわ.く / カツ",
    radical: "渇",
    componentHint: "classical radical 85",
    examples: [
      {word: "渇く", reading: "かわく", meaning: "to be thirsty; to feel thirsty"},
      {word: "渇き", reading: "かわき", meaning: "thirst"},
      {word: "渇望", reading: "かつぼう", meaning: "craving; longing"}
    ],
  },
  {
    kanji: "褐",
    keyword: "brown/woollen kimono",
    reading: "カツ",
    radical: "褐",
    componentHint: "classical radical 145",
    examples: [
      {word: "褐色", reading: "かっしょく", meaning: "dark brown; colour of tanned skin"},
      {word: "茶褐色", reading: "ちゃかっしょく", meaning: "dark reddish-brown; liver color"},
      {word: "赤褐色", reading: "せっかっしょく", meaning: "reddish brown; rufous"}
    ],
  },
  {
    kanji: "葛",
    keyword: "arrowroot/kudzu",
    reading: "つづら / くず / カツ / カチ",
    radical: "葛",
    componentHint: "classical radical 140",
    examples: [
      {word: "葛藤", reading: "かっとう", meaning: "conflict; complication"},
      {word: "葛籠", reading: "つづら", meaning: "wicker clothes hamper"},
      {word: "葛湯", reading: "くずゆ", meaning: "kudzu starch gruel"}
    ],
  },
  {
    kanji: "喝",
    keyword: "hoarse/scold",
    reading: "カツ",
    radical: "喝",
    componentHint: "classical radical 30",
    examples: [
      {word: "喝采", reading: "かっさい", meaning: "acclamation; applause"},
      {word: "一喝", reading: "いっかつ", meaning: "cry in a thundering voice; one roar"},
      {word: "恐喝", reading: "きょうかつ", meaning: "blackmail; extortion"}
    ],
  },
  {
    kanji: "謁",
    keyword: "audience/audience (with king)",
    reading: "エツ",
    radical: "謁",
    componentHint: "classical radical 149",
    examples: [
      {word: "謁見", reading: "えっけん", meaning: "audience (with a superior, e.g. nobility)"},
      {word: "拝謁", reading: "はいえつ", meaning: "having an audience with someone of very high social standing (e.g. the emperor)"},
      {word: "内謁", reading: "ないえつ", meaning: "private audience"}
    ],
  },
  {
    kanji: "掲",
    keyword: "put up (a notice)/put up",
    reading: "かか.げる / ケイ",
    radical: "掲",
    componentHint: "classical radical 64",
    examples: [
      {word: "掲げる", reading: "かかげる", meaning: "to publish; to print"},
      {word: "掲載", reading: "けいさい", meaning: "publication (e.g. article in paper); appearance"},
      {word: "掲示板", reading: "けいじばん", meaning: "bulletin board; display board"}
    ],
  },
  {
    kanji: "戌",
    keyword: "sign of the dog/7-9PM",
    reading: "いぬ / ジュツ",
    radical: "戌",
    componentHint: "classical radical 62",
    examples: [
      {word: "戌亥", reading: "いぬい", meaning: "northwest"},
      {word: "戌年", reading: "いぬどし", meaning: "year of the dog"},
      {word: "戊戌", reading: "ぼじゅつ", meaning: "35th of the sexagenary cycle"}
    ],
  },
  {
    kanji: "尤",
    keyword: "reasonable/just",
    reading: "もっと.も / とが.める / ユウ",
    radical: "尤",
    componentHint: "classical radical 43",
    examples: [
      {word: "尤も", reading: "もっとも", meaning: "most; extremely"},
      {word: "尤物", reading: "ゆうぶつ", meaning: "something superior; beautiful woman"},
      {word: "尤度", reading: "ゆうど", meaning: "likelihood"}
    ],
  },
  {
    kanji: "駄",
    keyword: "burdensome/pack horse",
    reading: "ダ / タ",
    radical: "駄",
    componentHint: "classical radical 187",
    examples: [
      {word: "駄目", reading: "だめ", meaning: "no good; not serving its purpose"},
      {word: "無駄", reading: "むだ", meaning: "futility; uselessness"},
      {word: "下駄", reading: "げた", meaning: "geta; Japanese wooden clogs"}
    ],
  },
  {
    kanji: "駒",
    keyword: "pony/horse",
    reading: "こま / ク",
    radical: "駒",
    componentHint: "classical radical 187",
    examples: [
      {word: "駒場", reading: "こまば", meaning: "pasture used for grazing horses (esp. ponies)"},
      {word: "手駒", reading: "てごま", meaning: "(game pieces, soldiers, etc.) under one's control"},
      {word: "駒下駄", reading: "こまげた", meaning: "low wooden clogs; komageta"}
    ],
  },
  {
    kanji: "篤",
    keyword: "fervent/kind",
    reading: "あつ.い / トク",
    radical: "篤",
    componentHint: "classical radical 118",
    examples: [
      {word: "危篤", reading: "きとく", meaning: "critical illness; on the verge of death"},
      {word: "篤い", reading: "あつい", meaning: "thick; deep"},
      {word: "篤実", reading: "とくじつ", meaning: "sincerity; faithfulness"}
    ],
  },
  {
    kanji: "罵",
    keyword: "abuse/insult",
    reading: "ののし.る / バ",
    radical: "罵",
    componentHint: "classical radical 122",
    examples: [
      {word: "罵る", reading: "ののしる", meaning: "to abuse (verbally); to curse at"},
      {word: "罵倒", reading: "ばとう", meaning: "abuse; disparagement"},
      {word: "罵声", reading: "ばせい", meaning: "boos; jeers"}
    ],
  },
  {
    kanji: "蔑",
    keyword: "ignore/despise",
    reading: "ないがしろ / なみ.する / くらい / さげす.む / ベツ",
    radical: "蔑",
    componentHint: "classical radical 140",
    examples: [
      {word: "軽蔑", reading: "けいべつ", meaning: "scorn; disdain"},
      {word: "侮蔑", reading: "ぶべつ", meaning: "scorn; disdain"},
      {word: "蔑む", reading: "さげすむ", meaning: "to scorn; to despise"}
    ],
  },
  {
    kanji: "罠",
    keyword: "trap/snare",
    reading: "わな / あみ / ビン / ミン",
    radical: "罠",
    componentHint: "classical radical 122",
    examples: [
      {word: "罠網", reading: "わなみ", meaning: "snare"},
      {word: "罠猟", reading: "わなりょう", meaning: "animal trapping; hunting with traps"},
      {word: "罠にかかる", reading: "わなにかかる", meaning: "to be caught in a trap (snare, etc.); to fall for (a trick, ambush, etc.)"}
    ],
  },
  {
    kanji: "烏",
    keyword: "crow/raven",
    reading: "からす / いずくんぞ / なんぞ / ウ / オ",
    radical: "烏",
    componentHint: "classical radical 86",
    examples: [
      {word: "烏帽子", reading: "えぼし", meaning: "black-lacquered headgear (made of silk, cloth or paper) originally worn by court nobles in ancient Japan, and afterwards spreading to the common people"},
      {word: "烏丸", reading: "うがん", meaning: "Wuhuan (proto-Mongolic nomadic people)"},
      {word: "烏賊", reading: "いか", meaning: "cuttlefish; squid"}
    ],
  },
  {
    kanji: "鴨",
    keyword: "wild duck/easy mark",
    reading: "かも / あひる / オウ",
    radical: "鴨",
    componentHint: "classical radical 196",
    examples: [
      {word: "鴨居", reading: "かもい", meaning: "lintel (esp. one with grooves for sliding doors)"},
      {word: "家鴨", reading: "あひる", meaning: "domestic duck"},
      {word: "鴨嘴", reading: "かものはし", meaning: "platypus (Ornithorhynchus anatinus)"}
    ],
  },
  {
    kanji: "鳩",
    keyword: "pigeon/dove",
    reading: "はと / あつ.める / キュウ / ク",
    radical: "鳩",
    componentHint: "classical radical 196",
    examples: [
      {word: "鳩尾", reading: "みずおち", meaning: "pit of the stomach; solar plexus"},
      {word: "斑鳩", reading: "いかる", meaning: "Japanese grosbeak (Eophona personata)"},
      {word: "山鳩", reading: "やまばと", meaning: "mountain-dwelling turtledove (often oriental turtle dove)"}
    ],
  },
  {
    kanji: "鶏",
    keyword: "chicken",
    reading: "にわとり / とり / ケイ",
    radical: "鶏",
    componentHint: "classical radical 196",
    examples: [
      {word: "花鶏", reading: "あとり", meaning: "brambling (bird) (Fringilla montifringilla)"},
      {word: "鶏肉", reading: "けいにく", meaning: "chicken meat"},
      {word: "雄鶏", reading: "おんどり", meaning: "cock; rooster"}
    ],
  },
  {
    kanji: "渓",
    keyword: "mountain stream/valley",
    reading: "たに / たにがわ / ケイ",
    radical: "渓",
    componentHint: "classical radical 85",
    examples: [
      {word: "渓谷", reading: "けいこく", meaning: "valley; ravine"},
      {word: "渓流", reading: "けいりゅう", meaning: "mountain stream; mountain torrent"},
      {word: "雪渓", reading: "せっけい", meaning: "snowy valley"}
    ],
  },
  {
    kanji: "鷹",
    keyword: "hawk",
    reading: "たか / ヨウ / オウ",
    radical: "鷹",
    componentHint: "classical radical 196",
    examples: [
      {word: "鷹野", reading: "たかの", meaning: "falconry"},
      {word: "鷹揚", reading: "おうよう", meaning: "largehearted; generous"},
      {word: "夜鷹", reading: "よたか", meaning: "grey nightjar (Caprimulgus indicus); nightjar (any bird of family Caprimulgidae)"}
    ],
  },
  {
    kanji: "鷲",
    keyword: "eagle",
    reading: "わし / シュウ / ジュ",
    radical: "鷲",
    componentHint: "classical radical 196",
    examples: [
      {word: "鷲掴み", reading: "わしづかみ", meaning: "grabbing hold; eagle grip"},
      {word: "鷲づかみ", reading: "わしづかみ", meaning: "grabbing hold; eagle grip"},
      {word: "鷲鼻", reading: "わしばな", meaning: "aquiline nose; Roman nose"}
    ],
  },
  {
    kanji: "璽",
    keyword: "emperor's seal",
    reading: "ジ",
    radical: "璽",
    componentHint: "classical radical 96",
    examples: [
      {word: "印璽", reading: "いんじ", meaning: "imperial seal"},
      {word: "御璽", reading: "ぎょじ", meaning: "imperial seal; privy seal"},
      {word: "国璽", reading: "こくじ", meaning: "the seal of state"}
    ],
  },
  {
    kanji: "爽",
    keyword: "refreshing/bracing",
    reading: "あき.らか / さわ.やか / たがう / ソウ",
    radical: "爽",
    componentHint: "classical radical 4",
    examples: [
      {word: "爽やか", reading: "さわやか", meaning: "fresh; refreshing"},
      {word: "爽快", reading: "そうかい", meaning: "refreshing; exhilarating"},
      {word: "颯爽", reading: "さっそう", meaning: "gallant; dashing"}
    ],
  },
  {
    kanji: "綴",
    keyword: "compose/spell",
    reading: "と.じる / つづ.る / つづり / すみ.やか / テイ / テツ / テチ",
    radical: "綴",
    componentHint: "classical radical 120",
    examples: [
      {word: "綴る", reading: "つづる", meaning: "to spell; to compose"},
      {word: "綴り", reading: "つづり", meaning: "spelling; orthography"},
      {word: "綴じる", reading: "とじる", meaning: "to bind; to file"}
    ],
  },
  {
    kanji: "桑",
    keyword: "mulberry",
    reading: "くわ / ソウ",
    radical: "桑",
    componentHint: "classical radical 75",
    examples: [
      {word: "桑原", reading: "くわばら", meaning: "mulberry field"},
      {word: "桑畑", reading: "くわばたけ", meaning: "mulberry field; mulberry plantation"},
      {word: "扶桑", reading: "ふそう", meaning: "land east of China; Japan"}
    ],
  },
  {
    kanji: "蚕",
    keyword: "silkworm",
    reading: "かいこ / こ / サン / テン",
    radical: "蚕",
    componentHint: "classical radical 142",
    examples: [
      {word: "養蚕", reading: "ようさん", meaning: "sericulture; silkworm culture"},
      {word: "蚕食", reading: "さんしょく", meaning: "encroachment; invasion"},
      {word: "蚕豆", reading: "そらまめ", meaning: "broad bean (Vicia faba); horse bean"}
    ],
  },
  {
    kanji: "蛋",
    keyword: "barbarian/egg",
    reading: "タン",
    radical: "蛋",
    componentHint: "classical radical 103",
    examples: [
      {word: "蛋白質", reading: "たんぱくしつ", meaning: "protein"},
      {word: "蛋白", reading: "たんぱく", meaning: "egg white; albumen"},
      {word: "蛋白石", reading: "たんぱくせき", meaning: "opal"}
    ],
  },
  {
    kanji: "蟹",
    keyword: "crab",
    reading: "かに / カイ",
    radical: "蟹",
    componentHint: "classical radical 142",
    examples: [
      {word: "毛蟹", reading: "けがに", meaning: "hair crab (Erimacrus isenbeckii)"},
      {word: "平家蟹", reading: "へいけがに", meaning: "Heike crab"},
      {word: "沢蟹", reading: "さわがに", meaning: "Japanese freshwater crab (Geothelphusa dehaani)"}
    ],
  },
  {
    kanji: "蚊",
    keyword: "mosquito",
    reading: "か / ブン",
    radical: "蚊",
    componentHint: "classical radical 142",
    examples: [
      {word: "蚊帳", reading: "かや", meaning: "mosquito net"},
      {word: "蚊取り線香", reading: "かとりせんこう", meaning: "mosquito coil; anti-mosquito incense"},
      {word: "蚊柱", reading: "かばしら", meaning: "mosquito swarm"}
    ],
  },
  {
    kanji: "巳",
    keyword: "sign of the snake or serpent/9-11AM",
    reading: "み / シ",
    radical: "巳",
    componentHint: "classical radical 49",
    examples: [
      {word: "辰巳", reading: "たつみ", meaning: "southeast"},
      {word: "上巳", reading: "じょうし", meaning: "March 3rd of the lunar calendar (one of the five annual festivals); dolls festival"},
      {word: "癸巳", reading: "きし", meaning: "thirtieth of the sexagenary cycle"}
    ],
  },
  {
    kanji: "蛇",
    keyword: "snake/serpent",
    reading: "へび / ジャ / ダ / イ",
    radical: "蛇",
    componentHint: "classical radical 142",
    examples: [
      {word: "大蛇", reading: "だいじゃ", meaning: "big snake; serpent"},
      {word: "蛇口", reading: "じゃぐち", meaning: "faucet; tap"},
      {word: "毒蛇", reading: "どくじゃ", meaning: "poisonous snake; poisonous serpent"}
    ],
  },
  {
    kanji: "繭",
    keyword: "cocoon",
    reading: "まゆ / きぬ / ケン",
    radical: "繭",
    componentHint: "classical radical 120",
    examples: [
      {word: "山繭", reading: "やままゆ", meaning: "Japanese oak silkmoth (Antheraea yamamai)"},
      {word: "繭玉", reading: "まゆだま", meaning: "New Year's decoration with cocoon-shaped cakes"},
      {word: "繭紬", reading: "けんちゅう", meaning: "pongee (unbleached silk)"}
    ],
  },
  {
    kanji: "蝶",
    keyword: "butterfly",
    reading: "チョウ",
    radical: "蝶",
    componentHint: "classical radical 142",
    examples: [
      {word: "胡蝶", reading: "こちょう", meaning: "butterfly"},
      {word: "蝶々", reading: "ちょうちょう", meaning: "butterfly"},
      {word: "蝶番", reading: "ちょうつがい", meaning: "hinge (e.g. on a door); joint (esp. an anatomical joint)"}
    ],
  },
  {
    kanji: "虹",
    keyword: "rainbow",
    reading: "にじ / コウ",
    radical: "虹",
    componentHint: "classical radical 142",
    examples: [
      {word: "虹彩", reading: "こうさい", meaning: "iris (of the eye)"},
      {word: "白虹", reading: "はっこう", meaning: "white rainbow"},
      {word: "虹鱒", reading: "にじます", meaning: "rainbow trout (Oncorhynchus mykiss)"}
    ],
  }
]

let optionFor = item => item.keyword

let ulrikeMnemonicSource = "https://www.joyokanji.com/ulrikes-mnemonics"
let ulrikeMnemonicJson = "https://japanesestudies.github.io/joyo-kanji/complete-ulrike-joyo-kanji.json"

let ulrikeMnemonicFor = kanji => UlrikeMnemonicData.forKanji(kanji)
