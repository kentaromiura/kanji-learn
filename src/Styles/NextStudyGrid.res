let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: grid;
    grid-template-columns: repeat(5, minmax(0, 1fr));
    gap: 8px;

    @media (max-width: 720px) {
      grid-template-columns: repeat(3, minmax(0, 1fr));
    }

    @media (max-width: 520px) {
      grid-template-columns: repeat(2, minmax(0, 1fr));
      gap: 6px;
    }
  `,
)
