let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: grid;
    grid-template-columns: minmax(0, 1fr) auto;
    gap: 12px;
    align-items: center;
    border: 1px solid rgba(33,52,42,.12);
    border-radius: 8px;
    padding: 11px 12px;
    background: rgba(255,255,255,.56);
    font-weight: 720;
  `,
)
