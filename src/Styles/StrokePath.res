let styled = Html.styled

type props = {...JsxDOM.domProps, delay: string, radical: bool}

let baseClass = Html.css`
  fill: none;
  stroke: #21342a;
  stroke-width: 7;
  stroke-linecap: round;
  stroke-linejoin: round;
  stroke-dasharray: 190;
  stroke-dashoffset: 190;
  animation: drawStroke .9s ease forwards;

  @keyframes drawStroke {
    to { stroke-dashoffset: 0; }
  }
`

let radicalClass = Html.css`stroke: #df765d;`

let make = props =>
  styled(
    Dom("path"),
    props.radical ? Html.cx([baseClass, radicalClass]) : baseClass,
  )((props :> JsxDOM.domProps))
