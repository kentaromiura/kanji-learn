let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: grid;
    gap: 6px;

    @media (max-width: 520px) {
      gap: 4px;
    }
  `,
)
