open Srs
open Learning

let str = React.string

let detailCard = (
  item: KanjiData.item,
  selectedExample,
  setSelectedExample,
  mode,
  setMode,
) => {
  let example = Learning.exampleAt(item, selectedExample)
  let schedule = cardScheduleForKanji(item.kanji)
  let mnemonic = KanjiData.ulrikeMnemonicFor(item.kanji)
  let storedStage = growthStageForKanji(item.kanji)
  let lanternStage = if storedStage == 0 {1} else {storedStage}
  let activeMode = Learning.validModeForItem(mode, item)
  let activeModeAnswersKana = activeMode == KanjiToKana || activeMode == MeaningToKana
  let modes = Learning.learnModesForItem(item)
  let promptLabel =
    switch activeMode {
    | KanjiToKana | KanjiToMeaning => "Kanji"
    | KanaToMeaning => "Kana"
    | MeaningToKanji | MeaningToKana => "Meaning"
    }
  let promptTone =
    switch activeMode {
    | KanjiToKana | KanjiToMeaning => KanjiTone
    | KanaToMeaning => KanaTone
    | MeaningToKanji | MeaningToKana => MeaningTone
    }
  let promptValue =
    switch activeMode {
    | KanjiToKana | KanjiToMeaning => example.word
    | KanaToMeaning => example.reading
    | MeaningToKanji | MeaningToKana => example.meaning
    }
  let answerLabel =
    switch activeMode {
    | KanjiToKana | MeaningToKana => "Kana"
    | KanjiToMeaning | KanaToMeaning => "Meaning"
    | MeaningToKanji => "Kanji"
    }
  let answerTone =
    switch activeMode {
    | KanjiToKana | MeaningToKana => KanaTone
    | KanjiToMeaning | KanaToMeaning => MeaningTone
    | MeaningToKanji => KanjiTone
    }
  let answerValue =
    switch activeMode {
    | KanjiToKana | MeaningToKana => example.reading
    | KanjiToMeaning | KanaToMeaning => example.meaning
    | MeaningToKanji => example.word
    }
  let detailText =
    if Learning.readingIsPending(item.reading) {
      item.kanji ++ " means " ++ item.keyword ++ "."
    } else if activeModeAnswersKana {
      example.word ++ " is read " ++ example.reading ++ "."
    } else {
      example.word ++ " means " ++ example.meaning ++ "."
    }
  let topBadge =
    if Learning.readingIsPending(item.reading) {
      None
    } else if activeModeAnswersKana {
      Some(example.meaning)
    } else {
      Some(item.reading)
    }

  <StudiedDetailCard>
    <StudiedDetailGlyphPanel> <KanjiDrawing item /> </StudiedDetailGlyphPanel>
    <StudiedDetailBody>
      <CardHeader>
        <div>
          <SmallLabel> {str("Studied kanji")} </SmallLabel>
          <CardTitle> {str(item.keyword)} </CardTitle>
        </div>
        <CardTools>
          {switch topBadge {
          | Some(text) => <ReadingBadge> {str(text)} </ReadingBadge>
          | None => React.null
          }}
          <MemoryLantern stage={lanternStage} />
        </CardTools>
      </CardHeader>
      <ModeTabs>
        {modes
        ->Array.map(learnMode => {
          let active = learnMode == activeMode
          <ModeButton
            key={Learning.modeLabel(learnMode)}
            active
            onClick={_ => setMode(_ => learnMode)}
          >
            {str(Learning.modeLabel(learnMode))}
          </ModeButton>
        })
        ->React.array}
      </ModeTabs>
      <StudiedPromptAnswer>
        <StudiedPromptBox tone={promptTone}>
          <SmallLabel> {str(promptLabel)} </SmallLabel>
          <StudiedBigValue> {str(promptValue)} </StudiedBigValue>
        </StudiedPromptBox>
        <StudiedAnswerBox tone={answerTone}>
          <SmallLabel> {str(answerLabel)} </SmallLabel>
          <StudiedBigValue> {str(answerValue)} </StudiedBigValue>
        </StudiedAnswerBox>
      </StudiedPromptAnswer>
      <DetailLine> {str(detailText)} </DetailLine>
      {switch mnemonic {
      | Some(text) =>
        <MemoryCue>
          <SmallLabel> {str("Memory cue")} </SmallLabel>
          <DetailLine> {str(text)} </DetailLine>
        </MemoryCue>
      | None => React.null
      }}
      <WordDeck>
        {item.examples
        ->Array.mapWithIndex((example, index) => {
          let active = index == selectedExample
          <WordButton
            key={example.word}
            active
            onClick={_ => setSelectedExample(_ => index)}
          >
            {str(example.word)}
          </WordButton>
        })
        ->React.array}
      </WordDeck>
      {if Array.length(schedule) <= 0 {
        React.null
      } else {
        <SchedulePanel>
          <SmallLabel> {str("Next schedule")} </SmallLabel>
          <ScheduleList>
            {schedule
            ->Array.map(row => {
              <ScheduleRow key={row.kind}>
                <span> {str(row.label)} </span>
                <ScheduleBar>
                  <ScheduleFill style={ReactDOMStyle.make(~width=row.fill, ())} />
                </ScheduleBar>
                <span> {str(row.dueLabel)} </span>
              </ScheduleRow>
            })
            ->React.array}
          </ScheduleList>
        </SchedulePanel>
      }}
    </StudiedDetailBody>
  </StudiedDetailCard>
}

let statusCount: (array<studiedKanji>, string) => int = %raw(`(items, status) =>
  items.filter(item => item.status === status).length
`)

let progressWidth = item =>
  Learning.clampedPercentStyle(item.learnedCards, item.totalCards)

@react.component
let make = (~nextStudy: array<studyPreview>, ~onShowStats) => {
  let items = studiedKanjiList()
  let seen = Array.length(items)
  let (selectedKanji, setSelectedKanji) = React.useState(() => None)
  let (selectedExample, setSelectedExample) = React.useState(() => 0)
  let (mode, setMode) = React.useState(() => Learning.KanjiToMeaning)
  React.useEffect1(() => {
    setSelectedExample(_ => 0)
    setMode(_ => Learning.KanjiToMeaning)
    None
  }, [selectedKanji])

  <StatsPanel>
    {switch selectedKanji {
    | Some(kanji) =>
      <>
        <StudiedHeaderBar>
          <Heading> {str("Studied kanji")} </Heading>
          <ModeTabs>
            <ModeButton active=false onClick={_ => onShowStats()}> {str("Stats")} </ModeButton>
            <ModeButton active=true onClick={_ => ()}> {str("Studied")} </ModeButton>
            <ModeButton active=false onClick={_ => {
              Runtime.playInterfaceClick()
              setSelectedKanji(_ => None)
            }}>
              {str("Back")}
            </ModeButton>
          </ModeTabs>
        </StudiedHeaderBar>
        {detailCard(
          Learning.itemForKanji(kanji),
          selectedExample,
          setSelectedExample,
          mode,
          setMode,
        )}
      </>
    | None =>
      <>
        <StudiedHeaderBar>
          <Heading> {str("Studied kanji")} </Heading>
          <ModeTabs>
            <ModeButton active=false onClick={_ => onShowStats()}> {str("Stats")} </ModeButton>
            <ModeButton active=true onClick={_ => ()}> {str("Studied")} </ModeButton>
          </ModeTabs>
        </StudiedHeaderBar>
        <StudiedSummaryGrid>
          <StudiedSummaryCard>
            <SmallLabel> {str("Seen")} </SmallLabel>
            <StatNumber> {str(Int.toString(seen))} </StatNumber>
            <DetailLine> {str("Introduced")} </DetailLine>
          </StudiedSummaryCard>
          <StudiedSummaryCard>
            <SmallLabel> {str("Learning")} </SmallLabel>
            <StatNumber> {str(Int.toString(statusCount(items, "Learning")))} </StatNumber>
            <DetailLine> {str("In progress")} </DetailLine>
          </StudiedSummaryCard>
          <StudiedSummaryCard>
            <SmallLabel> {str("Learned / mastered")} </SmallLabel>
            <StatNumber>
              {str(
                Int.toString(statusCount(items, "Learned") + statusCount(items, "Mastered")),
              )}
            </StatNumber>
            <DetailLine> {str("Review ready")} </DetailLine>
          </StudiedSummaryCard>
        </StudiedSummaryGrid>
        <SchedulePanel>
          <SmallLabel> {str("Next to study")} </SmallLabel>
          <NextStudyGrid>
            {nextStudy
            ->Array.map(item => {
              <NextStudyButton
                key={item.kanji}
                title={"#" ++ Int.toString(item.index) ++ " " ++ item.kanji ++ " " ++ item.keyword}
                onClick={_ => {
                  Runtime.playInterfaceClick()
                  setSelectedKanji(_ => Some(item.kanji))
                }}
              >
                <strong> {str(item.kanji)} </strong>
                <span> {str(item.keyword)} </span>
              </NextStudyButton>
            })
            ->React.array}
          </NextStudyGrid>
        </SchedulePanel>
        {if seen <= 0 {
      <StudiedEmptyBox>
        <SmallLabel> {str("No studied kanji yet")} </SmallLabel>
        <DetailLine> {str("Start a learn batch and the kanji will appear here.")} </DetailLine>
      </StudiedEmptyBox>
    } else {
      <StudiedList>
        {items
        ->Array.map(item =>
          <StudiedKanjiRow key={item.kanji}>
            <StudiedGlyph
              title={item.kanji ++ " " ++ item.keyword}
              onClick={_ => {
                Runtime.playInterfaceClick()
                setSelectedKanji(_ => Some(item.kanji))
              }}
            >
              {str(item.kanji)}
            </StudiedGlyph>
            <StudiedKanjiInfo>
              <StudiedTitleLine>
                <StudiedKeyword> {str(item.keyword)} </StudiedKeyword>
                {Learning.readingIsPending(item.reading)
                  ? React.null
                  : <StudiedReading> {str(item.reading)} </StudiedReading>}
              </StudiedTitleLine>
              <StudiedMeta>
                <StudiedChip> {str("#" ++ Int.toString(item.index))} </StudiedChip>
                <StudiedChip> {str(Int.toString(item.learnedCards) ++ " / " ++ Int.toString(item.totalCards) ++ " cards")} </StudiedChip>
                <StudiedChip> {str(Int.toString(item.dueCards) ++ " due")} </StudiedChip>
                <StudiedChip> {str(Int.toString(item.reps) ++ " reps")} </StudiedChip>
                <StudiedChip> {str(Int.toString(item.lapses) ++ " errors")} </StudiedChip>
                <StudiedChip> {str(item.lastReviewed)} </StudiedChip>
              </StudiedMeta>
            </StudiedKanjiInfo>
            <StudiedStatus>
              <StudiedStatusBadge> {str(item.status)} </StudiedStatusBadge>
              <StudiedMeter>
                <StudiedMeterFill style={ReactDOMStyle.make(~width=progressWidth(item), ())} />
              </StudiedMeter>
            </StudiedStatus>
          </StudiedKanjiRow>
        )
        ->React.array}
      </StudiedList>
        }}
      </>
    }}
  </StatsPanel>
}
