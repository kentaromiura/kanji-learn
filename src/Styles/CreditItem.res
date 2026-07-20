let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: grid;
    gap: 4px;
    border: 1px solid rgba(33,52,42,.10);
    border-radius: 8px;
    padding: 10px 11px;
    background: rgba(255,255,255,.50);
  `,
)
