let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: flex;
    justify-content: flex-end;
    align-items: center;
    min-height: 52px;

    @media (max-width: 520px) {
      min-height: 46px;
    }
  `,
)
