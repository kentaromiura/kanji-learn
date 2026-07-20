@val external window: {..} = "window"

let store = Jotai.Store.make()

let registerServiceWorker = () => {
  let canRegister: bool = %raw(`"serviceWorker" in window.navigator`)
  if canRegister {
    window["addEventListener"]("load", () => {
      window["navigator"]["serviceWorker"]["register"]("./sw.js")->ignore
    })
  }
}

let start = () =>
  switch ReactDOM.querySelector("#root") {
  | Some(domElement) =>
    registerServiceWorker()
    ReactDOM.Client.createRoot(domElement)->ReactDOM.Client.Root.render(
      <React.StrictMode>
        <Jotai.Provider store={store}>
          <App />
        </Jotai.Provider>
      </React.StrictMode>,
    )
  | None => ()
  }

window["addEventListener"]("DOMContentLoaded", start)
