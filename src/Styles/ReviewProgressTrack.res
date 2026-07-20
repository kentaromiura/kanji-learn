let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    height: 8px;
    border-radius: 999px;
    background: rgba(33,52,42,.10);
    overflow: hidden;
  `,
)
