let styled = Html.styled

let make = styled(
  Dom("button"),
  Html.css`
    appearance: none;
    border: 0;
    padding: 0;
    width: 56px;
    height: 56px;
    display: grid;
    place-items: center;
    border-radius: 8px;
    background: #fff8ea;
    color: #21342a;
    font-size: 36px;
    font-weight: 780;
    line-height: 1;
    cursor: pointer;

    &:hover {
      background: #fff0cf;
    }

    @media (max-width: 640px) {
      width: 54px;
      height: 54px;
      font-size: 34px;
    }
  `,
)
