
module KanjiDrawing = {
  @react.component
  let make = (~item: KanjiData.item) =>
    <KanjiStage>
      <StrokeSvg
        viewBox="0 0 109 109" role="img" ariaLabel={"KanjiVG-ready stroke preview for " ++ item.kanji}
      >
        <StrokePath radical=true delay="0s" d="M55 14 C55 30 55 56 55 94" />
        <StrokePath radical=true delay=".35s" d="M22 38 C39 39 70 37 88 35" />
        <StrokePath radical=false delay=".7s" d="M51 43 C42 61 29 76 15 88" />
        <StrokePath radical=false delay="1.05s" d="M60 44 C70 62 82 76 96 88" />
      </StrokeSvg>
    </KanjiStage>
}
