let styled = Html.styled

let make = styled(
  Dom("section"),
  Html.css`
    width: min(1180px, calc(100% - 32px));
    height: 100dvh;
    min-height: 0;
    margin: 0 auto;
    position: relative;
    z-index: 1;
    display: grid;
    grid-template-columns: 260px 1fr;
    gap: 24px;
    padding: 24px 0;
    box-sizing: border-box;
    overflow: hidden;

    @media (max-width: 1100px) {
      width: calc(100% - 24px);
      grid-template-columns: 1fr;
      grid-template-rows: minmax(0, 1fr) 44px;
      gap: 6px;
      padding: 4px 0 max(18px, env(safe-area-inset-bottom));
    }

    @media (max-width: 820px) {}

    @media (max-width: 520px) {
      width: calc(100% - 16px);
      min-height: 0;
      grid-template-rows: minmax(0, 1fr) 40px;
      gap: 6px;
      padding: 4px 0 max(12px, env(safe-area-inset-bottom));
    }
  `,
)
