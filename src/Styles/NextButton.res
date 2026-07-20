let styled = Html.styled

type props = {...JsxDOM.domProps, active?: bool}

let baseClass = Html.css`
    appearance: none;
    min-width: 156px;
    min-height: 46px;
    border: 0;
    border-radius: 999px;
    padding: 0 18px;
    color: #f8f3e9;
    background: #21342a;
    box-shadow: 0 14px 34px rgba(33,52,42,.20);
    font: inherit;
    font-weight: 780;
    cursor: pointer;

    &:disabled {
      opacity: .45;
      cursor: default;
      box-shadow: none;
    }

    @media (max-width: 520px) {
      width: 100%;
      min-height: 42px;
    }
  `

let activeClass = Html.css`
  animation: next-button-pulse .3s ease both;

  @keyframes next-button-pulse {
    0% {
      opacity: 1;
      box-shadow: 0 14px 34px rgba(33,52,42,.20);
    }
    55% {
      opacity: .82;
      box-shadow: 0 0 0 5px rgba(112,183,189,.18), 0 10px 24px rgba(33,52,42,.14);
    }
    100% {
      opacity: .45;
      box-shadow: none;
    }
  }
`

let make = props =>
  styled(Dom("button"), Html.cx([baseClass, props.active == Some(true) ? activeClass : ""]))(
    (props :> JsxDOM.domProps),
  )
