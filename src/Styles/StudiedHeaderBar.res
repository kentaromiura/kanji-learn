let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 12px;
    flex-wrap: wrap;
  `,
)
