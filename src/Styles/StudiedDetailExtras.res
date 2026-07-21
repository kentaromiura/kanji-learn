let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: grid;
    align-content: start;
    gap: 10px;
    min-height: 0;
    overflow-y: auto;
    overscroll-behavior: contain;
    padding-right: 2px;
    scrollbar-width: thin;

    @media (max-width: 520px) {
      gap: 8px;
    }
  `,
)
