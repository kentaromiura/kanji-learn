let styled = Html.styled

let make = styled(
  Dom("span"),
  Html.css`
    min-height: 30px;
    display: inline-flex;
    align-items: center;
    border: 1px solid rgba(33,52,42,.15);
    border-radius: 999px;
    padding: 0 10px;
    background: rgba(255,255,255,.62);
    font-weight: 720;
    font-size: 13px;

    @media (max-width: 520px) {
      min-height: 27px;
      padding: 0 9px;
      font-size: 12px;
    }
  `,
)
