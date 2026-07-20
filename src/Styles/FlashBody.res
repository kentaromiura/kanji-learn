let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: grid;
    gap: 18px;
    align-content: start;
    min-height: 0;
    overflow-x: hidden;
    overflow-y: auto;
    overscroll-behavior: contain;
    padding: 24px;
    -webkit-overflow-scrolling: touch;

    @media (max-height: 820px) and (min-width: 761px) {
      gap: 12px;
      padding: 18px;
    }

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
