let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    height: 7px;
    border-radius: 999px;
    background: rgba(33,52,42,.11);
    overflow: hidden;
  `,
)
