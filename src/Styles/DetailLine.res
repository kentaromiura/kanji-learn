let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    color: rgba(33,52,42,.70);
    font-size: 14px;
    line-height: 1.45;

    @media (max-width: 520px) {
      font-size: 12px;
      line-height: 1.32;
    }

    @media (max-height: 760px) and (min-width: 521px) {
      font-size: 12px;
      line-height: 1.3;
    }
  `,
)
