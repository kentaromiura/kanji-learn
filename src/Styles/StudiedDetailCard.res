let styled = Html.styled

let make = styled(
  Dom("article"),
  Html.css`
    display: grid;
    grid-template-rows: clamp(116px, 21dvh, 158px) minmax(0, 1fr);
    height: 100%;
    min-height: 0;
    gap: 0;
    border: 1px solid rgba(33,52,42,.18);
    border-radius: 8px;
    padding: 0;
    background: #fffdf8;
    box-shadow: 0 18px 48px rgba(33,52,42,.14);
    overflow: hidden;

    @media (max-width: 520px) {
      grid-template-rows: clamp(96px, 20dvh, 124px) minmax(0, 1fr);
      box-shadow: 0 14px 34px rgba(33,52,42,.12);
    }
  `,
)
