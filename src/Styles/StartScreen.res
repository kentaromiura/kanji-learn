let styled = Html.styled

type props = {...JsxDOM.domProps, fading: bool}

let baseClass = Html.css`
  min-height: calc(100vh - 48px);
  display: grid;
  place-items: center;
  padding: 32px;
  box-sizing: border-box;
  animation: startScreenIn .42s ease-out both;

  @keyframes startScreenIn {
    from {
      opacity: 0;
      transform: translateY(10px);
    }
    to {
      opacity: 1;
      transform: translateY(0);
    }
  }

  @keyframes startScreenOut {
    to {
      opacity: 0;
      transform: translateY(-8px) scale(.98);
    }
  }

  @media (max-width: 520px) {
    height: 100%;
    min-height: 0;
    padding: 0;
  }
`

let fadingClass = Html.css`
  pointer-events: none;
  animation: startScreenOut .42s ease-in both;
`

let make = props =>
  styled(
    Dom("section"),
    props.fading ? Html.cx([baseClass, fadingClass]) : baseClass,
  )((props :> JsxDOM.domProps))
