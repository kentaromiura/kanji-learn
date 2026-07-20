type screen = Learn | Review | QuickReview | Stats | Studied

type quickReviewBackdrop =
  | Hidden
  | Filling
  | Draining(string)

let currentScreen = Jotai.Atom.make(Learn)
let quickReviewBackdrop = Jotai.Atom.make(Hidden)
let quickReviewDrawing = Jotai.Atom.make(false)
