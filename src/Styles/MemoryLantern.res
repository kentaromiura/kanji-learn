let styled = Html.styled

type props = {...JsxDOM.domProps, stage: int}

let baseClass = Html.css`
  width: 58px;
  height: 58px;
  position: relative;
  flex: 0 0 auto;
  display: grid;
  place-items: center;

  &::before {
    content: "";
    position: absolute;
    width: 34px;
    height: 40px;
    border: 2px solid rgba(33,52,42,.72);
    border-radius: 999px 999px 10px 10px;
    background: linear-gradient(180deg, rgba(255,255,255,.72), rgba(255,232,218,.72));
    box-shadow: inset 0 -8px 0 rgba(33,52,42,.08);
    transition: transform .35s ease, box-shadow .35s ease;
  }

  &::after {
    content: "";
    position: absolute;
    bottom: 4px;
    width: 5px;
    height: 5px;
    border-radius: 999px;
    background: #df765d;
    box-shadow: 0 0 4px rgba(223,118,93,.38);
    animation: lanternPulse 1.8s ease-in-out infinite;
  }

  @keyframes lanternPulse {
    0%, 100% { transform: scale(.94); }
    50% { transform: scale(1.08); }
  }

  @media (max-width: 520px) {
    width: 42px;
    height: 42px;

    &::before {
      width: 25px;
      height: 30px;
    }
  }
`

let stage0Class = Html.css`
  &::before { transform: translateY(5px); }
  &::after { opacity: .38; }
`

let stage1Class = Html.css`
  &::before {
    transform: translateY(4px);
    background:
      radial-gradient(circle at 50% 78%, rgba(255,244,177,.16), transparent 42%),
      linear-gradient(180deg, rgba(255,255,255,.72), rgba(255,232,218,.72));
    box-shadow: 0 0 7px rgba(223,118,93,.16), inset 0 -8px 0 rgba(33,52,42,.08);
  }
  &::after { width: 8px; height: 8px; }
`

let stage2Class = Html.css`
  &::before {
    transform: translateY(3px);
    background:
      radial-gradient(circle at 50% 66%, rgba(255,244,177,.32), transparent 43%),
      linear-gradient(180deg, rgba(255,255,255,.72), rgba(255,232,218,.72));
    box-shadow: 0 0 14px rgba(223,118,93,.26), inset 0 -8px 0 rgba(33,52,42,.08);
  }
  &::after { width: 11px; height: 11px; box-shadow: 0 0 14px rgba(223,118,93,.5); }
`

let stage3Class = Html.css`
  &::before {
    transform: translateY(2px);
    background:
      radial-gradient(circle at 50% 56%, rgba(255,244,177,.48), transparent 44%),
      linear-gradient(180deg, rgba(255,255,255,.72), rgba(255,232,218,.72));
    box-shadow: 0 0 21px rgba(223,118,93,.36), inset 0 -8px 0 rgba(33,52,42,.08);
  }
  &::after { width: 14px; height: 14px; box-shadow: 0 0 21px rgba(223,118,93,.56); }
`

let stage4Class = Html.css`
  &::before {
    transform: translateY(1px);
    background:
      radial-gradient(circle at 50% 46%, rgba(255,244,177,.64), transparent 45%),
      linear-gradient(180deg, rgba(255,255,255,.72), rgba(255,232,218,.72));
    box-shadow: 0 0 28px rgba(223,118,93,.46), inset 0 -8px 0 rgba(33,52,42,.08);
  }
  &::after { width: 17px; height: 17px; box-shadow: 0 0 28px rgba(223,118,93,.62); }
`

let stage5Class = Html.css`
  &::before {
    background:
      radial-gradient(circle at 50% 37%, rgba(255,244,177,.78), transparent 46%),
      linear-gradient(180deg, rgba(255,255,255,.76), rgba(255,232,218,.74));
    box-shadow: 0 0 36px rgba(223,118,93,.58), inset 0 -8px 0 rgba(33,52,42,.08);
  }
  &::after { width: 20px; height: 20px; box-shadow: 0 0 36px rgba(223,118,93,.72); }
`

let classForStage = stage =>
  switch stage {
  | 0 => stage0Class
  | 1 => stage1Class
  | 2 => stage2Class
  | 3 => stage3Class
  | 4 => stage4Class
  | _ => stage5Class
  }

let make = props => {
  let stage = if props.stage < 0 {0} else if props.stage > 5 {5} else {props.stage}
  styled(Dom("div"), Html.cx([baseClass, classForStage(stage)]))(
    {
      ...((props :> JsxDOM.domProps)),
      title: "Memory lantern level " ++ Int.toString(stage) ++ " / 5",
    },
  )
}
