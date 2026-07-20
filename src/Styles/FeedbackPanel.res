let styled = Html.styled

type props = {...JsxDOM.domProps, entering: bool}

let baseClass = Html.css`
    display: grid;
    gap: 14px;
    border: 1px solid rgba(33,52,42,.16);
    border-radius: 8px;
    padding: 22px;
    background: rgba(255,255,255,.78);

    @keyframes errorPanelUp {
      from {
        opacity: 0;
        transform: translateY(28px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }
  `

let enteringClass = Html.css`
  animation: errorPanelUp .34s ease-out both;
`

let make = props =>
  styled(
    Dom("div"),
    props.entering ? Html.cx([baseClass, enteringClass]) : baseClass,
  )((props :> JsxDOM.domProps))
