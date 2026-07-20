let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    font-size: 27px;
    line-height: 1.12;
    font-weight: 780;

    @media (max-width: 520px) {
      font-size: 20px;
    }
  `,
)
