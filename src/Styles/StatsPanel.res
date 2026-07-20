let styled = Html.styled

let make = styled(
  Dom("section"),
  Html.css`
    height: 100%;
    min-height: 0;
    display: grid;
    align-content: start;
    gap: 22px;
    padding: 32px;
    box-sizing: border-box;
    overflow-y: auto;
    overscroll-behavior: contain;
    scrollbar-width: thin;

    @media (max-width: 1100px) {
      padding: 12px 0 78px;
    }

    @media (max-width: 520px) {
      gap: 12px;
      padding: max(12px, env(safe-area-inset-top)) 0 58px;
    }
  `,
)
