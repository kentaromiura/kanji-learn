let styled = Html.styled

type props = {...JsxDOM.domProps, status: string}

let baseClass = Html.css`
  appearance: none;
  min-height: 58px;
  border: 1px solid rgba(33,52,42,.16);
  border-radius: 8px;
  padding: 0 14px;
  background: rgba(255,255,255,.82);
  color: #21342a;
  font: inherit;
  font-size: 17px;
  font-weight: 760;
  text-align: left;
  cursor: pointer;
  overflow-wrap: anywhere;
  transition: background .18s ease, border-color .18s ease, transform .18s ease;

  &:disabled {
    cursor: default;
  }

  @media (max-width: 520px) {
    min-height: 46px;
    padding: 0 10px;
    font-size: 14px;
  }
`

let correctClass = Html.css`
  border-color: rgba(107,154,103,.55);
  background: rgba(226,239,219,.96);
  animation: review-choice-correct .3s ease both;

  @keyframes review-choice-correct {
    0% {
      transform: scale(1);
    }
    55% {
      transform: scale(.985);
    }
    100% {
      transform: scale(1);
    }
  }
`

let wrongClass = Html.css`
  border-color: rgba(223,118,93,.56);
  background: rgba(255,232,218,.96);
`

let pickedClass = Html.css`
  border-color: rgba(112,183,189,.54);
  background: rgba(222,242,241,.96);
`

let classForStatus = status =>
  switch status {
  | "correct" => correctClass
  | "wrong" => wrongClass
  | "picked" => pickedClass
  | _ => ""
  }

let make = props =>
  styled(Dom("button"), Html.cx([baseClass, classForStatus(props.status)]))((props :> JsxDOM.domProps))
