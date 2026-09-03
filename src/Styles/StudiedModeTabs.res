let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    min-height: 38px;
    gap: 6px;
    overflow: visible;

    @media (max-width: 520px) {
      flex-wrap: nowrap;
      min-height: 37px;
      overflow-x: auto;
      padding: 3px 0;
      scrollbar-width: none;
    }
  `,
)
