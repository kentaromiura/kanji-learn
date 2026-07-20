let styled = Html.styled

let make = styled(
  Dom("a"),
  Html.css`
    color: rgb(42,92,79);
    text-decoration: none;

    &:hover {
      text-decoration: underline;
    }
  `,
)
