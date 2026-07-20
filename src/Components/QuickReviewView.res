open State
open Constants
open Learning
open Srs

let str = React.string

let insertCardAfterGap: (array<srsCard>, int, srsCard, int) => array<srsCard> = %raw(`(queue, index, card, gap) => {
  const next = queue.slice();
  const insertAt = Math.min(next.length, index + gap + 1);
  next.splice(insertAt, 0, Object.assign({}, card));
  return next;
}`)

let hasId: (array<string>, string) => bool = %raw(`(ids, id) => ids.includes(id)`)

let addIdOnce: (array<string>, string) => array<string> = %raw(`(ids, id) => ids.includes(id) ? ids : ids.concat(id)`)

type feedback = {
  correct: KanjiData.item,
  picked: string,
}

@react.component
  let make = (~cards: array<srsCard>, ~onQuickReviewAnswer) => {
  let (queue, setQueue) = React.useState(() => cards)
  let (missedIds, setMissedIds) = React.useState(() => [])
  let (batchStart, setBatchStart) = React.useState(() => 0)
  let (questionIndex, setQuestionIndex) = React.useState(() => 0)
  let (mistakes, setMistakes) = React.useState(() => 0)
  let (feedback, setFeedback) = React.useState(() => None)
  let (sessionDone, setSessionDone) = React.useState(() => false)
  let (started, setStarted) = React.useState(() => false)
  let (starting, setStarting) = React.useState(() => false)
  let (locked, setLocked) = React.useState(() => false)
  let (advancing, setAdvancing) = React.useState(() => false)
  let (feedbackEntering, setFeedbackEntering) = React.useState(() => false)
  let (questionStartedAt, setQuestionStartedAt) = React.useState(() => Runtime.nowMs())
  let (_, setBackdrop) = Jotai.Atom.useAtom(quickReviewBackdrop)
  let (_, setDrawing) = Jotai.Atom.useAtom(quickReviewDrawing)
  let sourceCount = Array.length(cards)
  React.useEffect1(() => {
    if !started {
      setQueue(_ => cards)
      setMissedIds(_ => [])
      setBatchStart(_ => 0)
      setQuestionIndex(_ => 0)
    }
    None
  }, [sourceCount])
  let cappedAvailable = Array.length(queue)
  let activeIndex = if cappedAvailable <= 0 {0} else if questionIndex >= cappedAvailable {0} else {questionIndex}
  let activeCard = queue[activeIndex]
  let item =
    switch activeCard {
    | Some(card) => itemForKanji(card.kanji)
    | None => itemAt(0)
    }
  let promptValue =
    switch activeCard {
    | Some(card) => srsPromptValue(card.kind, item)
    | None => item.kanji
    }
  let correctAnswer =
    switch activeCard {
    | Some(card) => srsAnswerValue(card.kind, item)
    | None => item.keyword
    }
  let answerIsKanji =
    switch activeCard {
    | Some(card) => card.kind == "meaning_to_kanji"
    | None => false
    }
  let promptIsKanji =
    switch activeCard {
    | Some(card) => card.kind == "kanji_to_kana" || card.kind == "kanji_to_meaning"
    | None => true
    }
  let questionInBatch = questionIndex - batchStart
  let batchAnswered = if questionInBatch < 0 {0} else {questionInBatch}
  let batchEnd = if batchStart + batchSize > cappedAvailable {cappedAvailable} else {batchStart + batchSize}
  let currentBatchSize = if batchEnd - batchStart <= 0 {1} else {batchEnd - batchStart}
  let progress = Int.toString(batchAnswered * 100 / currentBatchSize) ++ "%"
  let isPaused =
    switch feedback {
    | Some(_) => true
    | None => sessionDone || locked || !started || starting
    }

  let failWith = picked => {
    let countedMiss =
      switch activeCard {
      | Some(card) =>
        let alreadyMissed = hasId(missedIds, card.id)
        if alreadyMissed {
          onQuickReviewAnswer(card, false, Runtime.nowMs() -. questionStartedAt, true)
        }
        setMissedIds(ids => addIdOnce(ids, card.id))
        setQueue(cards => insertCardAfterGap(cards, questionIndex, card, 3))
        alreadyMissed
      | None => false
      }
    setAdvancing(_ => false)
    setLocked(_ => false)
    setBackdrop(_ => Hidden)
    setFeedbackEntering(_ => true)
    if countedMiss {
      setMistakes(m => m + 1)
    }
    setFeedback(_ => Some({correct: item, picked}))
  }

  let startRoundAfterPause = () =>
    Runtime.afterDelay(transitionPauseMs, () => {
      setQuestionStartedAt(_ => Runtime.nowMs())
      setBackdrop(_ => Filling)
      setLocked(_ => false)
    })

  let hasNextRound = () => questionIndex + 1 < batchEnd && mistakes < maxMistakes

  let mountNextQuestion = () => {
    let next = questionIndex + 1
    setQuestionIndex(_ => next)
    setAdvancing(_ => false)
    if next >= batchEnd || mistakes >= maxMistakes {
      setBackdrop(_ => Hidden)
      false
    } else {
      setBackdrop(_ => Hidden)
      true
    }
  }

  let drawThen = (beforeMount, onDone) => {
    let shouldStartNextRound = hasNextRound()
    setDrawing(_ => true)
    Runtime.playDrawTransition(drawAnimationMs, drawCoverMs, () => {
      beforeMount()
      mountNextQuestion()->ignore
    }, () => {
      setDrawing(_ => false)
      if shouldStartNextRound {
        onDone()
      } else {
        setLocked(_ => false)
        setSessionDone(_ => true)
      }
    })
  }

  let beginQuiz = () => {
    if !starting {
      Runtime.unlockAudio()
      if Array.length(cards) <= 0 {
        setQueue(_ => [])
        setMissedIds(_ => [])
        setBatchStart(_ => 0)
        setQuestionIndex(_ => 0)
        setMistakes(_ => 0)
        setFeedback(_ => None)
        setSessionDone(_ => false)
        setStarted(_ => false)
        setStarting(_ => false)
        setLocked(_ => false)
        setBackdrop(_ => Hidden)
      } else {
        setQueue(_ => cards)
        setMissedIds(_ => [])
        setBatchStart(_ => 0)
        setQuestionIndex(_ => 0)
        setMistakes(_ => 0)
        setFeedback(_ => None)
        setSessionDone(_ => false)
        setStarting(_ => true)
        setLocked(_ => true)
        setBackdrop(_ => Hidden)
        Runtime.afterDelay(startFadeMs + transitionPauseMs, () => {
          setStarted(_ => true)
          setStarting(_ => false)
          Runtime.afterDelay(transitionPauseMs, () => {
            setQuestionStartedAt(_ => Runtime.nowMs())
            setBackdrop(_ => Filling)
            setLocked(_ => false)
          })
        })
      }
    }
  }

  let chooseWrong = label => {
    if !locked {
      setLocked(_ => true)
      Runtime.playErrorThen(() => Runtime.afterDelay(transitionPauseMs, () => failWith(label)))
    }
  }

  let chooseCorrect = () => {
    if !locked {
      switch activeCard {
      | Some(card) => onQuickReviewAnswer(card, true, Runtime.nowMs() -. questionStartedAt, false)
      | None => ()
      }
      setLocked(_ => true)
      setAdvancing(_ => true)
      setBackdrop(_ => Draining(fillHeightSince(questionStartedAt)))
      Runtime.playCorrectTransition(resetAnimationMs, () =>
        Runtime.afterDelay(transitionPauseMs, () => drawThen(() => (), startRoundAfterPause))
      )
    }
  }

  React.useEffect3(
    () => {
      if isPaused {
        None
      } else {
        setBackdrop(_ => Filling)
        let timer = Runtime.setTimeout(
          () => {
            setLocked(_ => true)
            Runtime.playErrorThen(() => Runtime.afterDelay(transitionPauseMs, () => failWith("time ran out")))
          },
          secondsPerQuestion * 1000,
        )
        Some(() => Runtime.clearTimeout(timer))
      }
    },
    (questionIndex, mistakes, isPaused),
  )

  if cappedAvailable <= 0 {
    <Panel>
      <Heading> {str("Quick Review locked")} </Heading>
      <Copy> {str("Learn a few kanji first, then quick review will use that learned set.")} </Copy>
    </Panel>
  } else if batchStart >= cappedAvailable {
    <Panel>
      <Heading> {str("Learned set reviewed")} </Heading>
      <Copy> {str("Quick Review has reached the end of your learned kanji for now.")} </Copy>
      <PrimaryButton
        onClick={_ => {
          setQueue(_ => cards)
          setMissedIds(_ => [])
          setBatchStart(_ => 0)
          setQuestionIndex(_ => 0)
          setMistakes(_ => 0)
          setFeedback(_ => None)
          setSessionDone(_ => false)
          setStarted(_ => false)
          setStarting(_ => false)
          setLocked(_ => false)
          setAdvancing(_ => false)
          setFeedbackEntering(_ => false)
          setDrawing(_ => false)
          setBackdrop(_ => Hidden)
        }}
      >
        {str("Review again")}
      </PrimaryButton>
    </Panel>
  } else if !started {
    <StartScreen fading={starting}>
      <StartButton onClick={_ => beginQuiz()}> {str("Start")} </StartButton>
    </StartScreen>
  } else if sessionDone {
    let completedBatch = mistakes < maxMistakes
    let nextBatchStart = if completedBatch {batchEnd} else {questionIndex + 1}
    <Panel>
      <Heading> {str(mistakes >= maxMistakes ? "Quick Review stopped" : "Batch complete")} </Heading>
      <Copy>
        {str(
          "Answered " ++ Int.toString(batchAnswered) ++ " of " ++ Int.toString(currentBatchSize) ++ " with " ++ Int.toString(mistakes) ++ " errors.",
        )}
      </Copy>
      <PrimaryButton
        onClick={_ => {
          let safeNextStart = if nextBatchStart > cappedAvailable {cappedAvailable} else {nextBatchStart}
          setBatchStart(_ => safeNextStart)
          setQuestionIndex(_ => safeNextStart)
          setMistakes(_ => 0)
          setFeedback(_ => None)
          setSessionDone(_ => false)
          setStarted(_ => false)
          setStarting(_ => false)
          setLocked(_ => false)
          setAdvancing(_ => false)
          setFeedbackEntering(_ => false)
          setDrawing(_ => false)
          setBackdrop(_ => Hidden)
        }}
      >
        {str("Next batch")}
      </PrimaryButton>
    </Panel>
  } else {
    switch feedback {
    | Some(result) =>
      <Panel>
        <FeedbackPanel entering={feedbackEntering}>
          <Heading> {str("Not quite")} </Heading>
          <Compare>
            <CompareCell good=false>
              <SmallLabel> {str("Your answer")} </SmallLabel>
              <FactValue> {str(result.picked)} </FactValue>
            </CompareCell>
            <CompareCell good=true>
              <SmallLabel> {str("Correct answer")} </SmallLabel>
              <FactValue> {str(result.correct.kanji ++ " means " ++ result.correct.keyword)} </FactValue>
            </CompareCell>
          </Compare>
          <PrimaryButton
            onClick={_ => {
              setAdvancing(_ => false)
              if mistakes >= maxMistakes {
                setFeedback(_ => None)
                setFeedbackEntering(_ => false)
                setBackdrop(_ => Hidden)
                setLocked(_ => false)
                setSessionDone(_ => true)
              } else {
                setLocked(_ => true)
                drawThen(() => {
                  setFeedback(_ => None)
                  setFeedbackEntering(_ => false)
                }, startRoundAfterPause)
              }
            }}
          >
            {str("Continue")}
          </PrimaryButton>
        </FeedbackPanel>
      </Panel>
    | None =>
      <ReviewShell key={Int.toString(questionIndex)} advancing={advancing}>
        <Hud>
          <Pill>
            {str(
              "Question " ++
              Int.toString(questionInBatch + 1) ++ " / " ++ Int.toString(currentBatchSize),
            )}
          </Pill>
          <Pill> {str("Errors " ++ Int.toString(mistakes) ++ " / " ++ Int.toString(maxMistakes))} </Pill>
        </Hud>
        <ProgressBar>
          <ProgressFill style={ReactDOMStyle.make(~width=progress, ())} />
        </ProgressBar>
        {promptIsKanji
          ? <BigKanji> {str(promptValue)} </BigKanji>
          : <QuickPromptText> {str(promptValue)} </QuickPromptText>}
        {answerIsKanji
          ? React.null
          : <ContextWords>
              {item.examples
              ->Array.map(example =>
                <ContextChip key={item.kanji ++ example.word}> {str(example.word)} </ContextChip>
              )
              ->React.array}
            </ContextWords>}
        <OptionGrid>
          {switch activeCard {
          | Some(card) =>
            srsOptionsForCardWithSalt(
              card.kind,
              card.kanji,
              Int.toString(questionIndex) ++ ":" ++ Int.toString(mistakes) ++ ":" ++ Int.toString(card.reps),
            )
          | None => []
          }
          ->Array.map(label => {
            <OptionButton
              key={item.kanji ++ label}
              onClick={_ =>
                if label == correctAnswer {
                  chooseCorrect()
                } else {
                  chooseWrong(label)
                }}
            >
              {str(label)}
            </OptionButton>
          })
          ->React.array}
        </OptionGrid>
      </ReviewShell>
    }
  }
  }
