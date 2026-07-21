let styled = Html.styled

let make = styled(
  Dom("button"),
  Html.css`
    width: 28px;
    height: 28px;
    border: 1px solid rgba(49,116,128,.28);
    border-radius: 7px;
    padding: 0;
    color: #1e6571;
    background: rgba(255,255,255,.72);
    font: inherit;
    font-size: 16px;
    font-weight: 760;
    line-height: 1;
    cursor: pointer;
  `,
)
