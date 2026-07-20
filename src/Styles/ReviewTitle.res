let styled = Html.styled

let make = styled(
  Dom("h2"),
  Html.css`
    margin: 2px 0 0;
    color: #21342a;
    font-size: 28px;
    line-height: 1.05;
    letter-spacing: 0;

    @media (max-width: 520px) {
      font-size: 20px;
    }
  `,
)
