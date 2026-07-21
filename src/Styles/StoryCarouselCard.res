let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: grid;
    gap: 4px;
    animation: story-card-in .18s ease-out;

    @keyframes story-card-in {
      from { opacity: .25; transform: translateX(9px); }
      to { opacity: 1; transform: translateX(0); }
    }

  `,
)
