let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    position: fixed;
    inset: 0;
    z-index: 2;
    pointer-events: none;
    perspective: 1200px;

    &::before {
      content: "";
      position: absolute;
      inset: 0;
      transform-origin: 0 0;
      border-bottom-right-radius: 18px;
      background:
        linear-gradient(135deg, rgba(255,255,255,.97), rgba(248,243,233,.96) 46%, rgba(232,244,228,.92)),
        #fffdf8;
      box-shadow: 22px 26px 80px rgba(33,52,42,.22);
      animation: drawPaperIn .62s cubic-bezier(.18,.82,.2,1) both;
    }

    &::after {
      content: "";
      position: absolute;
      left: 0;
      top: 0;
      width: min(34vw, 150px);
      aspect-ratio: 1 / 1;
      transform-origin: 0 0;
      background:
        linear-gradient(135deg, rgba(255,255,255,.84), rgba(112,183,189,.24) 44%, rgba(33,52,42,.16));
      clip-path: polygon(0 0, 100% 0, 0 100%);
      animation: drawPaperFold .62s cubic-bezier(.18,.82,.2,1) both;
    }

    @keyframes drawPaperIn {
      0% {
        opacity: 0;
        transform: rotateX(64deg) rotateZ(-9deg) translate(-18px, -18px) scale(.2);
        clip-path: polygon(0 0, 18% 0, 0 18%);
      }
      72% {
        opacity: 1;
        transform: rotateX(0deg) rotateZ(0deg) translate(0, 0) scale(1.01);
        clip-path: polygon(0 0, 100% 0, 100% 100%, 0 100%);
      }
      100% {
        opacity: 0;
        transform: scale(1);
        clip-path: polygon(0 0, 100% 0, 100% 100%, 0 100%);
      }
    }

    @keyframes drawPaperFold {
      0% {
        opacity: 0;
        transform: rotateX(62deg) rotateZ(-16deg) scale(.25);
      }
      42% {
        opacity: 1;
      }
      100% {
        opacity: 0;
        transform: rotateX(0deg) rotateZ(0deg) scale(1);
      }
    }
  `,
)
