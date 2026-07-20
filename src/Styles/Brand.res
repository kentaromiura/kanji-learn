let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: flex;
    align-items: center;
    gap: 12px;
    font-weight: 760;
    font-size: 21px;

    @media (max-width: 1100px) {
      flex: 0 0 auto;
      gap: 0;
      font-size: 0;
    }
  `,
)
