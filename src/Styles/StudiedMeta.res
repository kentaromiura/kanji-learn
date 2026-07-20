let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: flex;
    gap: 6px;
    align-items: center;
    flex-wrap: wrap;
  `,
)
