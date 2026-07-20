let styled = Html.styled

type props = {...JsxDOM.domProps, active: bool}

let baseClass = Html.css`
  appearance: none;
  min-height: 34px;
  border: 1px solid rgba(33,52,42,.18);
  border-radius: 999px;
  padding: 0 12px;
  background: rgba(255,255,255,.62);
  color: #21342a;
  font: inherit;
  font-size: 13px;
  font-weight: 740;
  cursor: pointer;
  white-space: nowrap;

  @media (max-width: 520px) {
    flex: 0 0 auto;
    min-height: 31px;
    padding: 0 10px;
    font-size: 12px;
  }
`

let activeClass = Html.css`
  border-color: #bf4a37;
  background: #df765d;
  color: #f8f3e9;
  box-shadow: 0 0 0 2px rgba(223,118,93,.20), inset 0 -2px 0 rgba(33,52,42,.14);
`

let make = props =>
  styled(
    Dom("button"),
    props.active ? Html.cx([baseClass, activeClass]) : baseClass,
  )((props :> JsxDOM.domProps))
