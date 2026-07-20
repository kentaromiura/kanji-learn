let styled = Html.styled

let make = styled(
  Dom("button"),
  Html.css`
    appearance: none;
    border: 0;
    padding: 0;
    width: 100%;
    height: 100%;
    min-height: inherit;
    display: grid;
    place-items: center;
    background: transparent;
    color: inherit;
    font: inherit;
    line-height: inherit;
    cursor: pointer;
    position: relative;
    z-index: 1;

    &:focus-visible {
      outline: 2px solid rgba(248,243,233,.86);
      outline-offset: -12px;
    }
  `,
)
