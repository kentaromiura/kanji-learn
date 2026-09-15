open Constants

@val external window: {..} = "window"

let store = Jotai.Store.make()

let registerVersionedServiceWorker: string => unit = %raw(`url => {
  window.navigator.serviceWorker.register(url).then(registration => registration.update()).catch(() => {});
}`)

let registerServiceWorker = () => {
  let canRegister: bool = %raw(`"serviceWorker" in window.navigator`)
  if canRegister {
    window["addEventListener"]("load", () => {
      let serviceWorkerUrl = "./sw.js?v=kanji-learn-" ++ appVersion
      registerVersionedServiceWorker(serviceWorkerUrl)
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
