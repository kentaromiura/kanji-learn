let styled = Html.styled

type props = {...JsxDOM.domProps, drawing: bool}

let baseClass = Html.css`
  display: grid;
  place-items: center;
  width: 100%;
  height: 100%;
  transform: translateY(-.02em);
  position: relative;
  z-index: 0;
  transition: opacity 110ms ease;
`

let drawingClass = Html.css`opacity: .18;`

let make = props =>
  styled(
    Dom("span"),
    props.drawing ? Html.cx([baseClass, drawingClass]) : baseClass,
  )((props :> JsxDOM.domProps))
