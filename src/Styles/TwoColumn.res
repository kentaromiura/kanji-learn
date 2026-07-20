let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: grid;
    grid-template-columns: minmax(280px, 420px) minmax(0, 1fr);
    align-items: center;
    gap: 28px;

    @media (max-width: 920px) {
      grid-template-columns: 1fr;
    }
  `,
)
