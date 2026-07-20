let styled = Html.styled

let make = styled(
  Dom("aside"),
  Html.css`
    display: flex;
    flex-direction: column;
    gap: 18px;
    border-right: 1px solid rgba(33,52,42,.16);
    padding-right: 24px;

    @media (max-width: 1100px) {
      order: 2;
      flex-direction: row;
      align-items: center;
      border-right: 0;
      border-top: 0;
      padding-right: 0;
      padding-top: 0;
      gap: 8px;
      min-height: 0;
    }

    @media (max-width: 820px) {}

    @media (max-width: 520px) {
      gap: 8px;
      padding-top: 0;
    }
  `,
)
