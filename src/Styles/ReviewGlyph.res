let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    min-height: 0;
    display: grid;
    place-items: center;
    border-radius: 8px;
    color: #fffdf8;
    background:
      linear-gradient(180deg, rgba(255,255,255,.08), rgba(255,255,255,0)),
      #21342a;
    font-size: clamp(78px, 12vw, 150px);
    line-height: 1;
    font-weight: 740;

    @media (max-width: 760px) {
      min-height: 96px;
      font-size: 76px;
    }

    @media (max-width: 520px) {
      min-height: 76px;
      font-size: 58px;
    }
  `,
)
