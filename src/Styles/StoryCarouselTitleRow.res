let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: flex;
    align-items: baseline;
    justify-content: space-between;
    gap: 10px;
  `,
)
