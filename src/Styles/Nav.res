let styled = Html.styled

let make = styled(
  Dom("nav"),
  Html.css`
    display: grid;
    gap: 6px;

    @media (max-width: 1100px) {
      flex: 1 1 auto;
      grid-template-columns: repeat(3, minmax(0, 1fr));
    }
  `,
)
