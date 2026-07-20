let styled = Html.styled

let make = styled(
  Dom("span"),
  Html.css`
    min-height: 22px;
    display: inline-flex;
    align-items: center;
    border: 1px solid rgba(33,52,42,.12);
    border-radius: 999px;
    padding: 0 8px;
    background: rgba(248,243,233,.78);
    color: rgba(33,52,42,.76);
    font-size: 11px;
    font-weight: 720;
  `,
)
