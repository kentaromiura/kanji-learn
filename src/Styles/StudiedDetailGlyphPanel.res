let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    position: relative;
    display: grid;
    place-items: center;
    min-height: 0;
    border-bottom: 1px solid rgba(33,52,42,.12);
    background:
      linear-gradient(135deg, rgba(255,255,255,.08), rgba(255,255,255,0) 38%),
      #20372d;
    color: #f8f3e9;
    font-size: clamp(86px, 15vw, 138px);
    line-height: 1;
    font-weight: 520;

    &::before {
      content: "";
      position: absolute;
      inset: 14px;
      border: 1px solid rgba(248,243,233,.18);
      border-radius: 8px;
    }

    @media (max-width: 520px) {
      font-size: clamp(76px, 26vw, 108px);

      &::before {
        inset: 10px;
      }
    }
  `,
)
