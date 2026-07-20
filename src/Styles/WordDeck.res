let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: flex;
    flex-wrap: wrap;
    gap: 9px;

    @media (max-width: 520px) {
      display: grid;
      grid-template-columns: repeat(3, minmax(0, 1fr));
      gap: 6px;
    }
  `,
)
