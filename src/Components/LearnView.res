open Constants
open Learning
open Srs

let str = React.string

@react.component
  let make = (~lessonStart, ~learnOffset, ~onNext) => {
    let item = itemAt(lessonStart + learnOffset)
    let (selectedExample, setSelectedExample) = React.useState(() => 0)
    let (mode, setMode) = React.useState(() => KanjiToMeaning)
    let example = exampleAt(item, selectedExample)
    let mnemonic = KanjiData.ulrikeMnemonicFor(item.kanji)
    let storedStage = growthStageForKanji(item.kanji)
    let lanternStage = if storedStage == 0 {1} else {storedStage}
    let activeMode = validModeForItem(mode, item)
    let activeModeAnswersKana = activeMode == KanjiToKana || activeMode == MeaningToKana
    let modes = learnModesForItem(item)
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
      if readingIsPending(item.reading) {
        item.kanji ++ " means " ++ item.keyword ++ "."
      } else if activeModeAnswersKana {
        example.word ++ " is read " ++ example.reading ++ "."
      } else {
        example.word ++ " means " ++ example.meaning ++ "."
      }
    let topBadge =
      if readingIsPending(item.reading) {
        None
      } else if activeModeAnswersKana {
        Some(example.meaning)
      } else {
        Some(item.reading)
      }

    <LessonPanel>
      <LessonContent>
        <Flashcard>
          <GlyphPanel> <KanjiDrawing item /> </GlyphPanel>
          <FlashBody>
            <CardHeader>
              <div>
                <SmallLabel>
                  {str("Learn " ++ Int.toString(learnOffset + 1) ++ " / " ++ Int.toString(lessonBatchSize))}
                </SmallLabel>
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
                  key={modeLabel(learnMode)}
                  active
                  onClick={_ => setMode(_ => learnMode)}
                >
                  {str(modeLabel(learnMode))}
                </ModeButton>
              })
              ->React.array}
            </ModeTabs>
            <PromptAnswer>
              <PromptBox tone={promptTone}>
                <SmallLabel> {str(promptLabel)} </SmallLabel>
                <BigValue> {str(promptValue)} </BigValue>
              </PromptBox>
              <AnswerBox tone={answerTone}>
                <SmallLabel> {str(answerLabel)} </SmallLabel>
                <BigValue> {str(answerValue)} </BigValue>
              </AnswerBox>
            </PromptAnswer>
            <DetailLine>
              {str(detailText)}
            </DetailLine>
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
          </FlashBody>
        </Flashcard>
      </LessonContent>
      <BottomAction>
        <NextButton onClick={_ => {
          Runtime.playInterfaceClick()
          onNext()
        }}>
          {str(learnOffset + 1 >= lessonBatchSize ? "Start review" : "Next kanji")}
        </NextButton>
      </BottomAction>
    </LessonPanel>
  }
