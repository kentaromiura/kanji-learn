let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: grid;
    grid-template-columns: repeat(3, minmax(0, 1fr));
    gap: 10px;

    @media (max-width: 620px) {
      grid-template-columns: 1fr;
    }
  `,
)
