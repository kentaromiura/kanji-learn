let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 10px;

    @media (max-width: 520px) {
      gap: 7px;
    }
  `,
)
