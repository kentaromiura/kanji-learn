let styled = Html.styled

let make = styled(
  Dom("section"),
  Html.css`
    display: grid;
    gap: 10px;
    border: 1px solid rgba(33,52,42,.12);
    border-radius: 8px;
    padding: 14px;
    background: rgba(255,255,255,.44);
  `,
)
