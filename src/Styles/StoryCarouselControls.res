let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: grid;
    grid-template-columns: 28px minmax(0, 1fr) 28px;
    align-items: center;
    gap: 6px;
  `,
)
