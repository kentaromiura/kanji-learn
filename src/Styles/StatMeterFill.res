let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    height: 100%;
    border-radius: inherit;
    background: linear-gradient(90deg, #70b7bd, #df765d);
  `,
)
