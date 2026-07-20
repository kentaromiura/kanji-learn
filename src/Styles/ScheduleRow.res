let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: grid;
    grid-template-columns: auto minmax(0, 1fr) auto;
    align-items: center;
    gap: 8px;
    color: rgba(33,52,42,.78);
    font-size: 12px;
    font-weight: 720;

    @media (max-width: 520px) {
      grid-template-columns: auto minmax(0, 1fr) auto;
      gap: 6px;
      font-size: 11px;
    }
  `,
)
