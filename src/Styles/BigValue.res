let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    font-size: 27px;
    line-height: 1.12;
    font-weight: 780;
    overflow-wrap: anywhere;

    @media (max-width: 520px) {
      font-size: 18px;
    }

    @media (max-height: 760px) and (min-width: 521px) {
      font-size: 22px;
    }
  `,
)
