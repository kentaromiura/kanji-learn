let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    min-width: 0;
    display: grid;
    gap: 8px;
  `,
)
