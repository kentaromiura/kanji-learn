let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    text-align: center;
    font-size: clamp(112px, 24vw, 210px);
    line-height: 1;
    font-weight: 520;

    @media (max-width: 520px) {
      font-size: clamp(100px, 34vw, 148px);
    }
  `,
)
