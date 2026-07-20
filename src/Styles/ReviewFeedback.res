let styled = Html.styled

type props = {...JsxDOM.domProps, good: bool}

let baseClass = Html.css`
  min-height: 34px;
  border-radius: 8px;
  padding: 9px 11px;
  box-sizing: border-box;
  font-size: 14px;
  line-height: 1.25;
  font-weight: 720;

  @media (max-width: 520px) {
    min-height: 30px;
    padding: 7px 9px;
    font-size: 12px;
  }
`

let goodClass = Html.css`
  color: #2e5a37;
  background: rgba(226,239,219,.86);
`

let badClass = Html.css`
  color: #7e372d;
  background: rgba(255,232,218,.90);
`

let make = props =>
  styled(Dom("div"), Html.cx([baseClass, props.good ? goodClass : badClass]))((props :> JsxDOM.domProps))
