let css: (array<string>, array<string>) => string = (template, _holes) => {
  "" ++ Int.toString(Array.length(template))
}

let cx = (classes: array<string>): string => Array.join(classes, " ")

%%private(
  let getClassName = className =>
    switch className {
    | Some(className) => className
    | None => ""
    }
)

let stripDomStyleProps: JsxDOM.domProps => JsxDOM.domProps = %raw(`props => {
  const nextProps = {...props};
  delete nextProps.active;
  delete nextProps.good;
  delete nextProps.radical;
  delete nextProps.delay;
  delete nextProps.drawing;
  return nextProps;
}`)

type stylable<'props> = Component(React.component<'props>) | Dom(string)

let styled = (what: stylable<'props>, className) => (props: JsxDOM.domProps) => {
  switch what {
  | Component(component) =>
    let nextProps = {...props, className: cx([className, getClassName(props.className)])}
    React.createElement(component, nextProps)
  | Dom(tagName) =>
    let domProps = stripDomStyleProps(props)
    ReactDOM.createDOMElementVariadic(
      tagName,
      ~props={...domProps, className: cx([className, getClassName(props.className)])},
      [],
    )
  }
}
