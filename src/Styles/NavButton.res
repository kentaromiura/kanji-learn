let styled = Html.styled

type props = {...JsxDOM.domProps, active: bool}

let baseClass = Html.css`
  appearance: none;
  width: 100%;
  min-height: 42px;
  border: 1px solid rgba(33,52,42,.18);
  border-radius: 8px;
  padding: 0 12px;
  display: flex;
  align-items: center;
  justify-content: flex-start;
  background: rgba(255,255,255,.52);
  color: #21342a;
  font: inherit;
  font-weight: 650;
  cursor: pointer;

  @media (max-width: 1100px) {
    justify-content: center;
    min-height: 38px;
  }

  @media (max-width: 520px) {
    min-height: 36px;
    padding: 0 6px;
    font-size: 12px;
  }
`

let activeClass = Html.css`
  border-color: #21342a;
  background: #21342a;
  color: #f8f3e9;
`

let make = props =>
  styled(
    Dom("button"),
    props.active ? Html.cx([baseClass, activeClass]) : baseClass,
  )((props :> JsxDOM.domProps))
