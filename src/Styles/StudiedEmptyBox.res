let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: grid;
    gap: 8px;
    border: 1px solid rgba(33,52,42,.14);
    border-radius: 8px;
    padding: 18px;
    background: rgba(255,255,255,.66);
  `,
)
