let styled = Html.styled

type props = {...JsxDOM.domProps, advancing: bool}

let baseClass = Html.css`
      position: relative;
      min-height: calc(100vh - 48px);
      display: grid;
      align-content: center;
      gap: 20px;
      padding: 32px;
      box-sizing: border-box;
      overflow: hidden;

      @media (max-width: 520px) {
        height: 100%;
        min-height: 0;
        align-content: start;
        gap: 10px;
        padding: 0;
      }
    `

let advancingClass = Html.css`
  pointer-events: none;
`

let make = props =>
  styled(
    Dom("section"),
    props.advancing ? Html.cx([baseClass, advancingClass]) : baseClass,
  )((props :> JsxDOM.domProps))
