let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    min-height: 0;
    display: grid;
    align-content: start;
    gap: 16px;
    overflow: hidden;

    @media (max-width: 520px) {
      align-content: start;
      gap: 8px;
    }
  `,
)
