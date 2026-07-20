let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    min-height: 0;
    display: grid;
    grid-template-rows: auto auto minmax(0, auto);
    align-content: start;
    gap: 12px;

    @media (max-width: 520px) {
      gap: 8px;
    }
  `,
)
