let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 8px;

    @media (max-width: 620px) {
      grid-template-columns: 1fr;
    }

    @media (max-width: 520px) {
      grid-template-columns: 1fr 1fr;
      gap: 6px;
    }
  `,
)
