let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    font-size: 32px;
    line-height: 1;
    font-weight: 820;

    @media (max-width: 520px) {
      font-size: 24px;
    }
  `,
)
