let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: grid;
    gap: 12px;
    align-content: start;
    min-height: 0;
    overflow-y: auto;
    overscroll-behavior: contain;
    padding: 18px;
    scrollbar-width: thin;

    @media (max-height: 720px) and (min-width: 761px) {
      gap: 9px;
      padding: 14px;
    }

    @media (max-width: 760px) {
      gap: 10px;
      padding: 14px 18px;
    }

    @media (max-width: 520px) {
      gap: 8px;
      padding: 10px;
    }
  `,
)
