let styled = Html.styled

let make = styled(
  Dom("button"),
  Html.css`
    appearance: none;
    width: fit-content;
    min-height: 44px;
    border: 0;
    border-radius: 8px;
    padding: 0 16px;
    color: #f8f3e9;
    background: #21342a;
    font: inherit;
    font-weight: 760;
    cursor: pointer;
  `,
)
