let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    max-height: 4.35em;
    overflow-y: auto;
    color: #21342a;
    font-size: 14px;
    line-height: 1.45;
    padding-right: 3px;
    white-space: pre-wrap;

    @media (max-width: 520px) {
      max-height: 3.96em;
      font-size: 12px;
      line-height: 1.32;
    }
  `,
)
