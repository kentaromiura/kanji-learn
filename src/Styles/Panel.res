let styled = Html.styled

let make = styled(
  Dom("section"),
  Html.css`
    min-height: calc(100vh - 48px);
    display: grid;
    align-content: center;
    gap: 22px;
    padding: 32px;
    box-sizing: border-box;

    @media (max-width: 820px) {
      min-height: auto;
      gap: 14px;
      padding: 4px 0 28px;
    }

    @media (max-width: 520px) {
      height: 100%;
      min-height: 0;
      align-content: start;
      gap: 8px;
      overflow: hidden;
      padding: 0;
    }
  `,
)
