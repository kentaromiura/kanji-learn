let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: flex;
    justify-content: flex-end;
    align-items: center;
    gap: 8px;
    min-height: 52px;

    & > :last-child {
      margin-left: auto;
    }

    @media (max-width: 520px) {
      min-height: 46px;

      & > :only-child {
        width: 100%;
      }

      & > :last-child:not(:only-child) {
        flex: 1 1 0;
        min-width: 0;
      }
    }
  `,
)
