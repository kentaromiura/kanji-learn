let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    position: relative;
    display: grid;
    place-items: center;
    min-height: 460px;
    border-right: 1px solid rgba(248,243,233,.18);
    background:
      linear-gradient(135deg, rgba(255,255,255,.08), rgba(255,255,255,0) 38%),
      #20372d;
    color: #f8f3e9;
    font-size: clamp(132px, 22vw, 218px);
    line-height: 1;
    font-weight: 520;

    &::before {
      content: "";
      position: absolute;
      inset: 22px;
      border: 1px solid rgba(248,243,233,.18);
      border-radius: 8px;
    }

    @media (max-width: 760px) {
      min-height: 0;
      height: 100%;
      border-right: 0;
      border-bottom: 1px solid rgba(33,52,42,.12);
      font-size: clamp(86px, 22vw, 132px);

      &::before {
        inset: 14px;
      }
    }

    @media (max-height: 820px) and (min-width: 761px) {
      min-height: 340px;
      font-size: clamp(112px, 18vw, 180px);

      &::before {
        inset: 16px;
      }
    }

    @media (max-height: 720px) and (min-width: 761px) {
      min-height: 280px;
      font-size: clamp(96px, 16vw, 152px);
    }

    @media (max-height: 760px) and (min-width: 761px) and (max-width: 1100px) {
      min-height: 220px;
      font-size: clamp(86px, 17vw, 142px);

      &::before {
        inset: 14px;
      }
    }

    @media (max-width: 520px) {
      min-height: 0;
      height: 100%;
      font-size: clamp(82px, 30vw, 116px);

      &::before {
        inset: 12px;
      }
    }
  `,
)
