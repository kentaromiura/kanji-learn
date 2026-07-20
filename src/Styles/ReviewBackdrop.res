let styled = Html.styled

type props = {...JsxDOM.domProps, draining: bool}

let baseClass = Html.css`
  position: fixed;
  inset: auto 0 0;
  width: 100%;
  height: 3.5%;
  z-index: 0;
  pointer-events: none;
  background:
    radial-gradient(circle at 20% 10%, rgba(255,255,255,.28), transparent 28px),
    radial-gradient(circle at 70% 30%, rgba(255,255,255,.20), transparent 34px),
    linear-gradient(180deg, #70b7bd, #df765d);
  animation: quickReviewFill 8s linear forwards;

  @keyframes quickReviewFill {
    to { height: 100%; }
  }

  @keyframes quickReviewDrain {
    to { height: 3.5%; }
  }
`

let drainingClass = Html.css`
  animation: quickReviewDrain .9s ease-in forwards;
`

let make = props =>
  styled(
    Dom("div"),
    props.draining ? Html.cx([baseClass, drainingClass]) : baseClass,
  )((props :> JsxDOM.domProps))
