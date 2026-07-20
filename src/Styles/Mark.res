let styled = Html.styled

let make = styled(
  Dom("img"),
  Html.css`
    width: 44px;
    height: 44px;
    display: block;
    border-radius: 8px;
    background: #21342a;
    object-fit: cover;
    box-shadow: 0 8px 18px rgba(33,52,42,.14);
    cursor: pointer;

    @media (max-width: 520px) {
      width: 34px;
      height: 34px;
    }

    @media (max-width: 1100px) and (min-width: 521px) {
      width: 38px;
      height: 38px;
    }
  `,
)
