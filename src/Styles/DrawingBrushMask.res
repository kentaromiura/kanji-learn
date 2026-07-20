let styled = Html.styled

let make = styled(
  Dom("mask"),
  Html.css`
    mask-type: luminance;
  `,
)
