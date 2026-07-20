let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: grid;
    grid-template-columns: repeat(4, minmax(0, 1fr));
    gap: 8px;
    width: min(560px, 100%);

    @media (max-width: 520px) {
      grid-template-columns: repeat(2, minmax(0, 1fr));
      width: 100%;
    }
  `,
)
