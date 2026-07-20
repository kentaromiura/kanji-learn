let styled = Html.styled

type props = {...JsxDOM.domProps, active: bool}

let baseClass = Html.css`
  appearance: none;
  min-height: 46px;
  border: 1px solid rgba(33,52,42,.16);
  border-radius: 8px;
  padding: 0 14px;
  background: rgba(255,255,255,.72);
  color: #21342a;
  font: inherit;
  font-weight: 760;
  cursor: pointer;

  @media (max-width: 520px) {
    min-height: 34px;
    padding: 0 8px;
    font-size: 12px;
  }

  @media (max-height: 760px) and (min-width: 521px) {
    min-height: 36px;
    padding: 0 10px;
    font-size: 13px;
  }
`

let activeClass = Html.css`
  border-color: #df765d;
  background: rgba(223,118,93,.16);
  box-shadow: inset 0 0 0 1px rgba(223,118,93,.32);
`

let make = props =>
  styled(
    Dom("button"),
    props.active ? Html.cx([baseClass, activeClass]) : baseClass,
  )((props :> JsxDOM.domProps))
