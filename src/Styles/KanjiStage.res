let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    width: min(420px, 100%);
    aspect-ratio: 1 / 1;
    display: grid;
    place-items: center;
    border: 1px solid rgba(33,52,42,.16);
    border-radius: 8px;
    background: rgba(255,255,255,.64);
    box-shadow: 0 22px 48px rgba(33,52,42,.12);
    overflow: hidden;
  `,
)
