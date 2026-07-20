let styled = Html.styled

let make = styled(
  Dom("path"),
  Html.css`
    fill: none;
    stroke: #ffffff;
    stroke-width: 12;
    stroke-linecap: round;
    stroke-linejoin: round;
    opacity: 0;
    stroke-dasharray: 1;
    stroke-dashoffset: 1;
    animation: kanjiBrushReveal .44s cubic-bezier(.18,.75,.28,1) forwards;

    @keyframes kanjiBrushReveal {
      0% { opacity: 1; }
      100% { opacity: 1; stroke-dashoffset: 0; }
    }
  `,
)
