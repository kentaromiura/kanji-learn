let styled = Html.styled

let make = styled(
  Dom("button"),
  Html.css`
    appearance: none;
    min-width: 172px;
    min-height: 56px;
    border: 1px solid rgba(33,52,42,.18);
    border-radius: 999px;
    color: #f8f3e9;
    background: #21342a;
    box-shadow: 0 20px 48px rgba(33,52,42,.22);
    font: inherit;
    font-size: 18px;
    font-weight: 780;
    cursor: pointer;
  `,
)
