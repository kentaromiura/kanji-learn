let styled = Html.styled

let make = styled(
  Dom("button"),
  Html.css`
    appearance: none;
    min-height: 44px;
    border: 1px solid rgba(33,52,42,.16);
    border-radius: 999px;
    padding: 0 12px;
    color: #21342a;
    background: rgba(255,255,255,.72);
    font: inherit;
    font-weight: 780;
    cursor: pointer;

    &:last-child {
      color: #f8f3e9;
      background: #21342a;
    }

    @media (max-width: 520px) {
      min-height: 40px;
      font-size: 13px;
    }
  `,
)
