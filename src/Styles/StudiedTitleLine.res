let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    min-width: 0;
    display: flex;
    gap: 8px;
    align-items: baseline;
    flex-wrap: wrap;
  `,
)
