let styled = Html.styled

let make = styled(
  Dom("header"),
  Html.css`
    display: flex;
    gap: 12px;
    align-items: flex-start;
    justify-content: space-between;

    @media (max-width: 520px) {
      gap: 8px;
      align-items: center;
    }
  `,
)
