let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 12px;

    @media (max-width: 620px) {
      grid-template-columns: 1fr;
    }

    @media (max-width: 520px) {
      gap: 8px;
    }
  `,
)
