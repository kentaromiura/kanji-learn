let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
    align-items: center;
    justify-content: space-between;

    @media (max-width: 520px) {
      gap: 6px;
    }
  `,
)
