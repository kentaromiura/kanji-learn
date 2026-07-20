let styled = Html.styled

let make = styled(
  Dom("article"),
  Html.css`
    min-height: 88px;
    display: grid;
    grid-template-columns: 64px minmax(0, 1fr) 104px;
    align-items: center;
    gap: 10px;
    border: 1px solid rgba(33,52,42,.14);
    border-radius: 8px;
    padding: 10px 12px;
    background: rgba(255,255,255,.68);
    box-sizing: border-box;

    @media (max-width: 640px) {
      grid-template-columns: 58px minmax(0, 1fr);
      min-height: 84px;
      gap: 10px;
      padding: 10px;
    }
  `,
)
