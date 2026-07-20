let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    height: 100%;
    width: 0;
    border-radius: inherit;
    background: linear-gradient(90deg, #df765d, #70b7bd);
    transition: width .26s ease;
  `,
)
