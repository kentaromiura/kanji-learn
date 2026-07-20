let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: grid;
    grid-template-columns: minmax(112px, .9fr) minmax(112px, .9fr) minmax(140px, 1.2fr);
    gap: 12px;
    align-items: baseline;
    border: 1px solid rgba(33,52,42,.14);
    border-radius: 8px;
    padding: 12px;
    background: rgba(255,255,255,.62);

    @media (max-width: 620px) {
      grid-template-columns: 1fr;
      gap: 3px;
    }
  `,
)
