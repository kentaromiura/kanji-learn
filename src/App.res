open State
open Constants
open Srs
open Learning

let str = React.string

@react.component
let make = () => {
  let (screen, setScreen) = Jotai.Atom.useAtom(currentScreen)
  let (backdrop, _) = Jotai.Atom.useAtom(quickReviewBackdrop)
  let (drawing, _) = Jotai.Atom.useAtom(quickReviewDrawing)
  let (learnProgress, setLearnProgress) = React.useState(() => loadLearnProgress(lessonBatchSize))
  let (reviewOffset, setReviewOffset) = React.useState(() => 0)
  let (reviewCards, setReviewCards) = React.useState(() => [])
  let (reviewIsLesson, setReviewIsLesson) = React.useState(() => false)
  let (stats, setStats) = React.useState(() => loadReviewStats())
  let (settings, setSettings) = React.useState(() => loadReviewSettings())
  let startupRouteChecked = React.useRef(false)
  let lessonStart = learnProgress.lessonStart
  let learnOffset = learnProgress.learnOffset
  let currentReviewCard = reviewCards[reviewOffset]
  let dashboard = loadSrsDashboard()
  let dueCount = dashboard.dueCount
  let learnedTotal = dashboard.learnedKanji + dashboard.masteredKanji
  let nextStudy = nextStudyKanji(lessonStart + learnOffset, 5)
  let srsLearnedCount = learnedKanjiCountFromSrs()
  let quickReviewKindCount = Array.length(settings.quickReviewKinds)
  let quickReviewCards =
    quickReviewCardsForLearned(
      srsLearnedCount * (if quickReviewKindCount <= 0 {5} else {quickReviewKindCount}),
      settings.quickReviewKinds,
    )

  React.useEffect0(() => {
    if !startupRouteChecked.current {
      startupRouteChecked.current = true
      let due = dueSrsCards()
      if Array.length(due) >= 3 {
        setReviewCards(_ => due)
        setReviewIsLesson(_ => false)
        setReviewOffset(_ => 0)
        setScreen(_ => Review)
      }
    }
    None
  })

  let refreshStats = () => setStats(_ => loadReviewStats())

  let recordReviewResult = (kind, wasCorrect) => {
    recordReviewEvent(kind, wasCorrect)
    refreshStats()
  }

  let updateSettings = nextSettings => {
    saveReviewSettings(nextSettings)
    setSettings(_ => nextSettings)
    refreshStats()
  }

  let finishDataImport = () => {
    setSettings(_ => loadReviewSettings())
    setLearnProgress(_ => loadLearnProgress(lessonBatchSize))
    setReviewCards(_ => [])
    setReviewOffset(_ => 0)
    setReviewIsLesson(_ => false)
    refreshStats()
    setScreen(_ => Stats)
  }

  let goToScreen = nextScreen => {
    Runtime.playInterfaceClick()
    if nextScreen == Stats {
      refreshStats()
    }
    if nextScreen == Review {
      setReviewCards(_ => dueSrsCards())
      setReviewIsLesson(_ => false)
      setReviewOffset(_ => 0)
    }
    setScreen(_ => nextScreen)
  }

  let continueLearn = () => {
    if learnOffset + 1 >= lessonBatchSize {
      ensureSrsCardsForLesson(lessonStart, lessonBatchSize)
      setReviewCards(_ => dueSrsCardsForLesson(lessonStart, lessonBatchSize))
      setReviewIsLesson(_ => true)
      setReviewOffset(_ => 0)
      setScreen(_ => Review)
    } else {
      setLearnProgress(progress => {
        let next = {...progress, learnOffset: progress.learnOffset + 1}
        saveLearnProgress(next)
        next
      })
    }
  }

  let finishReviewBatch = () => {
    setLearnProgress(progress => {
      let next = {lessonStart: progress.lessonStart + lessonBatchSize, learnOffset: 0}
      saveLearnProgress(next)
      next
    })
    setReviewOffset(_ => 0)
    setReviewCards(_ => [])
    setReviewIsLesson(_ => false)
    setScreen(_ => Learn)
  }

  let finishDueReview = () => {
    setReviewCards(_ => dueSrsCards())
    setReviewIsLesson(_ => false)
    setReviewOffset(_ => 0)
    setScreen(_ => Learn)
  }

  let finishActiveReview = () =>
    if reviewIsLesson {
      finishReviewBatch()
    } else {
      finishDueReview()
    }

  let answerReview = (wasCorrect, elapsedMs) => {
    switch currentReviewCard {
    | Some(card) =>
      let rating = ratingForQuizAnswer(card.id, card.kind, wasCorrect, elapsedMs)
      gradeSrsCard(card.id, rating)
      recordReviewResult(card.kind, wasCorrect)
      let isLearned = wasCorrect && card.correctStreak + 1 >= settings.requiredCorrectStreak
      let nextCards = nextReviewQueueAfterAnswer(reviewCards, reviewOffset, card, isLearned, wasCorrect, rating)
      if Array.length(nextCards) == 0 {
        finishActiveReview()
      } else {
        setReviewCards(_ => nextCards)
        setReviewOffset(_ => 0)
      }
    | None => finishActiveReview()
    }
  }

  let answerQuickReview = (card, wasCorrect, elapsedMs, shouldDemote) => {
    let rating = ratingForQuizAnswer(card.id, card.kind, wasCorrect, elapsedMs)
    gradeSrsCard(card.id, rating)
    if shouldDemote {
      demoteSrsCard(card.id)
    }
    recordReviewResult(card.kind, wasCorrect)
  }

  <Shell>
    {switch (screen, backdrop) {
    | (QuickReview, Filling) => <ReviewBackdrop draining=false />
    | (QuickReview, Draining(height)) =>
      <ReviewBackdrop draining=true style={ReactDOMStyle.make(~height, ())} />
    | _ => React.null
    }}
    {screen == QuickReview && drawing ? <DrawOverlay /> : React.null}
    <Workspace>
      <Sidebar>
        <Brand>
          <Mark
            src="./public/icons/cristian-logo.webp"
            alt="Stats"
            title="Stats"
            onClick={_ => goToScreen(Stats)}
          />
          <span> {str("Kanji Learn")} </span>
        </Brand>
        <Nav>
          {screens
          ->Array.map(item => {
            let active = item == screen
            <NavButton key={labelForScreen(item)} active onClick={_ => goToScreen(item)}>
              {str(labelForScreen(item))}
            </NavButton>
          })
          ->React.array}
        </Nav>
      </Sidebar>
      {switch screen {
      | Learn => <LearnView lessonStart learnOffset onNext={continueLearn} />
      | Review =>
        <ReviewView
          card={currentReviewCard}
          reviewOffset
          reviewTotal={Array.length(reviewCards)}
          dueCount
          learnedCount={learnedTotal}
          requiredCorrectStreak={settings.requiredCorrectStreak}
          onAnswer={answerReview}
          onContinue={finishActiveReview}
        />
      | QuickReview => <QuickReviewView cards={quickReviewCards} onQuickReviewAnswer={answerQuickReview} />
      | Stats =>
        <StatsView
          learnedCount={learnedTotal}
          stats
          dashboard
          settings
          onSettingsChange={updateSettings}
          onShowStudied={() => goToScreen(Studied)}
          onDataImported={finishDataImport}
        />
      | Studied => <StudiedView nextStudy onShowStats={() => goToScreen(Stats)} />
      }}
    </Workspace>
  </Shell>
}
