let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: flex;
    flex-wrap: wrap;
    gap: 6px;

    @media (max-width: 520px) {
      flex-wrap: nowrap;
      overflow-x: auto;
      padding-bottom: 2px;
      scrollbar-width: none;
    }
  `,
)
