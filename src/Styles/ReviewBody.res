let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    min-height: 0;
    display: grid;
    grid-template-columns: minmax(148px, 240px) minmax(0, 1fr);
    gap: 16px;

    @media (max-width: 760px) {
      grid-template-columns: 1fr;
      gap: 10px;
    }

    @media (max-width: 520px) {
      gap: 8px;
    }
  `,
)
