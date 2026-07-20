let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    min-width: 0;
    border: 1px solid rgba(33,52,42,.10);
    border-radius: 8px;
    padding: 8px 10px;
    background: rgba(248,243,233,.70);
    color: #21342a;
    font-size: 13px;
    line-height: 1.2;
    font-weight: 720;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;

    span {
      display: block;
      color: rgba(33,52,42,.58);
      font-size: 10px;
      text-transform: uppercase;
      letter-spacing: .08em;
      margin-bottom: 3px;
    }

    @media (max-width: 520px) {
      padding: 6px 8px;
      font-size: 12px;
    }
  `,
)
