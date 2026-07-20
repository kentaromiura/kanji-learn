let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: grid;
    grid-template-columns: minmax(0, 1fr) auto;
    align-items: center;
    gap: 12px;
  `,
)
