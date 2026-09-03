let styled = Html.styled

let make = styled(
  Dom("button"),
  Html.css`
    appearance: none;
    min-width: 82px;
    min-height: 46px;
    border: 1px solid rgba(33,52,42,.3);
    border-radius: 999px;
    padding: 0 14px;
    color: #21342a;
    background: rgba(248,243,233,.72);
    font: inherit;
    font-weight: 740;
    cursor: pointer;

    &:hover {
      background: #f8f3e9;
    }

    @media (max-width: 520px) {
      min-width: 76px;
      min-height: 42px;
    }
  `,
)
