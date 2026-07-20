let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: flex;
    flex-wrap: wrap;
    gap: 6px;
    align-items: baseline;
    color: rgb(33,52,42);
    font-size: 13px;
    font-weight: 780;
  `,
)
