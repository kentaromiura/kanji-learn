open Learning

let styled = Html.styled

type props = {...JsxDOM.domProps, tone: termTone}

let baseClass = Html.css`
    min-height: 86px;
    display: grid;
    align-content: center;
    gap: 5px;
    border: 1px solid rgba(33,52,42,.12);
    border-radius: 8px;
    padding: 12px 14px;
    background:
      linear-gradient(180deg, rgba(255,255,255,.62), rgba(255,255,255,0)),
      rgba(218,236,225,.86);

    @media (max-width: 520px) {
      min-height: 56px;
      padding: 8px;
      gap: 3px;
    }

    @media (max-height: 760px) and (min-width: 521px) {
      min-height: 68px;
      padding: 9px 11px;
      gap: 3px;
    }
  `

let kanjiClass = Html.css`
  border-color: rgba(223,118,93,.24);
  background:
    linear-gradient(180deg, rgba(255,255,255,.62), rgba(255,255,255,0)),
    rgba(255,232,218,.92);
`

let kanaClass = Html.css`
  border-color: rgba(112,183,189,.24);
  background:
    linear-gradient(180deg, rgba(255,255,255,.62), rgba(255,255,255,0)),
    rgba(222,242,241,.92);
`

let meaningClass = Html.css`
  border-color: rgba(107,154,103,.24);
  background:
    linear-gradient(180deg, rgba(255,255,255,.62), rgba(255,255,255,0)),
    rgba(226,239,219,.92);
`

let classForTone = tone =>
  switch tone {
  | KanjiTone => kanjiClass
  | KanaTone => kanaClass
  | MeaningTone => meaningClass
  }

let make = props =>
  styled(Dom("div"), Html.cx([baseClass, classForTone(props.tone)]))((props :> JsxDOM.domProps))
