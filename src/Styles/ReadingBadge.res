let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    min-height: 32px;
    display: inline-flex;
    align-items: center;
    border-radius: 999px;
    padding: 0 11px;
    color: #20372d;
    background: rgba(112,183,189,.18);
    font-size: 13px;
    font-weight: 760;
    white-space: nowrap;

    @media (max-width: 520px) {
      width: fit-content;
      white-space: normal;
      min-height: 28px;
      padding: 0 9px;
      font-size: 12px;
    }
  `,
)
