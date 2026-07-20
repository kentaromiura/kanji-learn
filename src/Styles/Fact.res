let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    border: 1px solid rgba(33,52,42,.14);
    border-radius: 8px;
    padding: 12px;
    background: rgba(255,255,255,.56);
  `,
)
