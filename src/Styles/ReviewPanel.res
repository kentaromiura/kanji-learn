let styled = Html.styled

let make = styled(
  Dom("article"),
  Html.css`
    height: 100%;
    min-height: 0;
    display: grid;
    grid-template-rows: auto minmax(0, 1fr);
    gap: 14px;
    border: 1px solid rgba(33,52,42,.16);
    border-radius: 8px;
    padding: 18px;
    box-sizing: border-box;
    background: #fffdf8;
    box-shadow: 0 24px 62px rgba(33,52,42,.14);
    overflow: hidden;

    @media (max-width: 520px) {
      gap: 8px;
      padding: 10px;
      box-shadow: 0 12px 28px rgba(33,52,42,.12);
    }
  `,
)
