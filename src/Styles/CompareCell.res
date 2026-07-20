let styled = Html.styled

type props = {...JsxDOM.domProps, good: bool}

let baseClass = Html.css`
  border: 1px solid rgba(191,74,55,.32);
  border-radius: 8px;
  padding: 14px;
  background: rgba(255,232,220,.84);
`

let goodClass = Html.css`
  border-color: rgba(33,52,42,.22);
  background: rgba(232,244,228,.8);
`

let make = props =>
  styled(
    Dom("div"),
    props.good ? Html.cx([baseClass, goodClass]) : baseClass,
  )((props :> JsxDOM.domProps))
