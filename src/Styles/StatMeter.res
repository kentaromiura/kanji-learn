let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    width: 100%;
    height: 9px;
    border-radius: 999px;
    background: rgba(33,52,42,.12);
    overflow: hidden;
  `,
)
