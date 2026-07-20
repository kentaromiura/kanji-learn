open Learning
open Srs
open Constants

let str = React.string

type selectedAnswer = {
  cardId: string,
  answer: string,
}

@react.component
let make = (
  ~card: option<srsCard>,
  ~reviewOffset,
  ~reviewTotal,
  ~dueCount,
  ~learnedCount,
  ~requiredCorrectStreak,
  ~onAnswer,
  ~onContinue,
) => {
  let (selected, setSelected) = React.useState(() => None)
  let (answeredAt, setAnsweredAt) = React.useState(() => 0.0)
  let (startedAt, setStartedAt) = React.useState(() => Runtime.nowMs())
  let (autoAdvancing, setAutoAdvancing) = React.useState(() => false)
  let submittedRef = React.useRef(false)

  let currentKey =
    switch card {
    | Some(card) =>
      card.id ++
      ":" ++
      Int.toString(card.reps) ++
      ":" ++
      Int.toString(card.correctStreak) ++
      ":" ++
      Int.toString(card.lapses)
    | None => "none"
    }

  React.useEffect1(() => {
    setSelected(_ => None)
    setAnsweredAt(_ => 0.0)
    setStartedAt(_ => Runtime.nowMs())
    setAutoAdvancing(_ => false)
    submittedRef.current = false
    None
  }, [currentKey])

  switch card {
    | None =>
      <LessonPanel key={currentKey}>
        <LessonContent>
          <Panel>
            <Heading> {str("Review clear")} </Heading>
            <Copy>
              {str(
                "Due 0 · learned " ++
                Int.toString(learnedCount) ++ " kanji. The route can continue to the next lesson.",
              )}
            </Copy>
          </Panel>
        </LessonContent>
        <BottomAction>
          <NextButton onClick={_ => onContinue()}> {str("Learn next set")} </NextButton>
        </BottomAction>
      </LessonPanel>
    | Some(card) =>
      let item = itemForKanji(card.kanji)
      let example = exampleAt(item, 0)
      let lanternStage = growthStageForKanji(item.kanji)
      let correctAnswer = srsAnswerValue(card.kind, item)
      let previewGlyph = if card.kind == "meaning_to_kanji" { "?" } else { item.kanji }
      let optionSalt =
        currentKey ++ ":" ++ Int.toString(reviewOffset) ++ ":" ++ Int.toString(reviewTotal)
      let options = srsOptionsForCardWithSalt(card.kind, card.kanji, optionSalt)
      let answerIsKana = card.kind == "kanji_to_kana" || card.kind == "meaning_to_kana"
      let selectedForCard =
        switch selected {
        | Some(pick) if pick.cardId == card.id => Some(pick.answer)
        | _ => None
        }
      let isAnswered =
        switch selectedForCard {
        | Some(_) => true
        | None => false
        }
      let wasCorrect =
        switch selectedForCard {
        | Some(answer) => answer == correctAnswer
        | None => false
        }
      let progress = clampedPercentStyle(reviewOffset + 1, reviewTotal)
      let streakAfterCorrect = card.correctStreak + 1
      let submitAnswer = (answer, elapsedMs, force) => {
        if submittedRef.current && !force {
          ()
        } else {
          submittedRef.current = true
          if answer == correctAnswer {
            setAutoAdvancing(_ => true)
          }
          onAnswer(answer == correctAnswer, elapsedMs)
        }
      }
      let chooseAnswer = answer => {
        let now = Runtime.nowMs()
        Runtime.playInterfaceClick()
        setSelected(_ => Some({cardId: card.id, answer}))
        setAnsweredAt(_ => now)
        if answer == correctAnswer {
          setAutoAdvancing(_ => true)
          Runtime.afterDelay(reviewAutoAdvanceMs, () => submitAnswer(answer, now -. startedAt, false))
        }
      }
      <LessonPanel>
        <LessonContent>
          <ReviewPanel>
            <div>
              <ReviewTopbar>
                <div>
                  <SmallLabel>
                    {str(
                      "Due " ++
                      Int.toString(dueCount) ++
                      " · learned " ++
                      Int.toString(learnedCount) ++
                      " · " ++
                      Int.toString(reviewTotal) ++ " cards remaining",
                    )}
                  </SmallLabel>
                  <ReviewTitle> {str(srsKindLabel(card.kind))} </ReviewTitle>
                </div>
                <CardTools>
                  <ReadingBadge> {str(card.state)} </ReadingBadge>
                  <MemoryLantern stage={lanternStage} />
                </CardTools>
              </ReviewTopbar>
              <ReviewProgressTrack>
                <ReviewProgressFill style={ReactDOMStyle.make(~width=progress, ())} />
              </ReviewProgressTrack>
            </div>
            <ReviewBody>
              <ReviewGlyph> {str(previewGlyph)} </ReviewGlyph>
              <ReviewMain>
                <PromptBox tone={srsPromptTone(card.kind)}>
                  <SmallLabel> {str(srsPromptLabel(card.kind))} </SmallLabel>
                  <BigValue> {str(srsPromptValue(card.kind, item))} </BigValue>
                </PromptBox>
                <ReviewChoices>
                  {options
                  ->Array.map(answer => {
                    let status =
                      switch selectedForCard {
                      | None => "neutral"
                      | Some(pick) =>
                        if answer == correctAnswer {
                          "correct"
                        } else if answer == pick {
                          "wrong"
                        } else {
                          "neutral"
                        }
                      }
                    <ReviewChoiceButton
                      key={card.id ++ answer}
                      status
                      disabled={isAnswered}
                      onClick={_ => chooseAnswer(answer)}
                    >
                      {str(answer)}
                    </ReviewChoiceButton>
                  })
                  ->React.array}
                </ReviewChoices>
                {isAnswered
                  ? <ReviewFeedback good={wasCorrect}>
                      {str(
                        wasCorrect
                          ? "Correct - streak " ++ Int.toString(streakAfterCorrect) ++ " / " ++ Int.toString(requiredCorrectStreak)
                          : "Answer: " ++ correctAnswer,
                      )}
                    </ReviewFeedback>
                  : <ReviewFeedback good=true>
                      {str(
                        answerIsKana
                          ? example.word
                          : example.word ++ " - " ++ displayReading(example.reading),
                      )}
                    </ReviewFeedback>}
                <ReviewMeta>
                  <ReviewMetaChip>
                    <span> {str("State")} </span>
                    {str(card.state)}
                  </ReviewMetaChip>
                  <ReviewMetaChip>
                    <span> {str("Streak")} </span>
                    {str(Int.toString(card.correctStreak) ++ " / " ++ Int.toString(requiredCorrectStreak))}
                  </ReviewMetaChip>
                  <ReviewMetaChip>
                    <span> {str("Stability")} </span>
                    {str(card.stability <= 0.0 ? "new" : Float.toString(card.stability) ++ "d")}
                  </ReviewMetaChip>
                  <ReviewMetaChip>
                    <span> {str("Lapses")} </span>
                    {str(Int.toString(card.lapses))}
                  </ReviewMetaChip>
                </ReviewMeta>
              </ReviewMain>
            </ReviewBody>
          </ReviewPanel>
        </LessonContent>
        <BottomAction>
          <NextButton
            active={autoAdvancing}
            disabled={!isAnswered}
            onClick={_ =>
              switch selectedForCard {
              | Some(answer) => submitAnswer(answer, answeredAt -. startedAt, true)
              | None => ()
              }}
          >
            {str(autoAdvancing ? "Next card" : isAnswered ? "Next card" : "Choose an answer")}
          </NextButton>
        </BottomAction>
      </LessonPanel>
    }
}
