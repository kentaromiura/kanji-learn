let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    width: 100%;
    height: 10px;
    border-radius: 999px;
    background: rgba(33,52,42,.14);
    overflow: hidden;

    @media (max-width: 520px) {
      height: 7px;
    }
  `,
)
