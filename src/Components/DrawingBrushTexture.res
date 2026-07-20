let render: string => React.element = %raw(`id => React.createElement(
  "filter",
  {
    id,
    x: "-8%",
    y: "-8%",
    width: "116%",
    height: "116%",
    colorInterpolationFilters: "sRGB"
  },
  React.createElement("feImage", {
    href: "./public/textures/ryokan-ink-grain-320.png",
    x: "0",
    y: "0",
    width: "109",
    height: "109",
    preserveAspectRatio: "none",
    result: "inkGrain"
  }),
  React.createElement("feComponentTransfer", {in: "inkGrain", result: "softGrain"},
    React.createElement("feFuncA", {type: "linear", slope: "0.22"})
  ),
  React.createElement("feComposite", {
    in: "SourceGraphic",
    in2: "softGrain",
    operator: "out"
  })
)`)

type nativeProps = {id: string}

let native = (props: nativeProps): React.element => render(props.id)

@react.component
let make = (~id: string) => React.createElement(native, {id: id})
