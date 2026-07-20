let styled = Html.styled

let make = styled(
  Dom("h2"),
  Html.css`
    margin: 0;
    font-size: 24px;
    line-height: 1.2;

    @media (max-width: 520px) {
      font-size: 18px;
    }
  `,
)
