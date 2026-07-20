let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    min-width: 96px;
    display: grid;
    justify-items: end;
    gap: 6px;

    @media (max-width: 640px) {
      grid-column: 1 / -1;
      min-width: 0;
      justify-items: stretch;
    }
  `,
)
