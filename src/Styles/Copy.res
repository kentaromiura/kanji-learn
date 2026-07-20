let styled = Html.styled

let make = styled(
  Dom("p"),
  Html.css`
    margin: 0;
    max-width: 64ch;
    color: rgba(33,52,42,.74);
    font-size: 16px;
    line-height: 1.55;
  `,
)
