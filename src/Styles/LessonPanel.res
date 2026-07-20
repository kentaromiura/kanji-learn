let styled = Html.styled

let make = styled(
  Dom("section"),
  Html.css`
    height: 100%;
    min-height: 0;
    display: grid;
    grid-template-rows: minmax(0, 1fr) auto;
    gap: 18px;
    padding: 24px 32px 28px;
    box-sizing: border-box;

    @media (max-width: 820px) {
      padding: 0;
    }

    @media (max-width: 520px) {
      height: 100%;
      min-height: 0;
      gap: 8px;
      overflow: hidden;
      padding: 0;
    }
  `,
)
