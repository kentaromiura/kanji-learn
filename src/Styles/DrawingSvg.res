let styled = Html.styled

let make = styled(
  Dom("svg"),
  Html.css`
    position: absolute;
    inset: 50% auto auto 50%;
    width: 1.2em;
    height: 1.2em;
    transform: translate(-50%, -50%);
    overflow: visible;
    pointer-events: none;
    z-index: 1;
  `,
)
