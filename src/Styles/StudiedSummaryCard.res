let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    min-height: 86px;
    display: grid;
    align-content: center;
    gap: 4px;
    border: 1px solid rgba(33,52,42,.14);
    border-radius: 8px;
    padding: 10px 12px;
    background: rgba(255,255,255,.66);
    box-sizing: border-box;

    @media (max-width: 520px) {
      min-height: 72px;
      padding: 8px;
    }
  `,
)
