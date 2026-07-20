let styled = Html.styled

let make = styled(
  Dom("button"),
  Html.css`
    appearance: none;
    min-width: 0;
    min-height: 68px;
    display: grid;
    align-content: center;
    gap: 3px;
    border: 1px solid rgba(33,52,42,.14);
    border-radius: 8px;
    padding: 8px;
    background: rgba(255,248,234,.86);
    color: #21342a;
    font: inherit;
    cursor: pointer;
    text-align: center;

    strong {
      font-size: 30px;
      line-height: 1;
    }

    span {
      min-width: 0;
      overflow: hidden;
      text-overflow: ellipsis;
      white-space: nowrap;
      font-size: 12px;
      font-weight: 740;
      color: rgba(33,52,42,.70);
    }

    &:hover {
      background: #fff0cf;
    }

    @media (max-width: 520px) {
      min-height: 58px;

      strong {
        font-size: 26px;
      }
    }
  `,
)
