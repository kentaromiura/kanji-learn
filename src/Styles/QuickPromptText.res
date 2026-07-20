let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    min-height: 78px;
    display: grid;
    place-items: center;
    padding: 0 10px;
    box-sizing: border-box;
    text-align: center;
    color: #21342a;
    font-size: clamp(34px, 8vw, 66px);
    line-height: 1.08;
    font-weight: 760;
    overflow-wrap: anywhere;

    @media (max-width: 520px) {
      min-height: 54px;
      max-height: 84px;
      padding: 0 6px;
      font-size: clamp(24px, 9vw, 38px);
      overflow: hidden;
    }
  `,
)
