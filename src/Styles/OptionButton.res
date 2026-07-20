let styled = Html.styled

let make = styled(
  Dom("button"),
  Html.css`
    appearance: none;
    min-height: 64px;
    border: 1px solid rgba(33,52,42,.16);
    border-radius: 8px;
    padding: 0 16px;
    background: rgba(255,255,255,.78);
    color: #21342a;
    font: inherit;
    font-size: 18px;
    font-weight: 760;
    cursor: pointer;
    text-align: left;

    @media (max-width: 520px) {
      min-height: 54px;
      padding: 0 12px;
      font-size: 16px;
    }
  `,
)
