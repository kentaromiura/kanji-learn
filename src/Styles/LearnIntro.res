let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    @media (max-width: 520px) {
      display: none;
    }
  `,
)
