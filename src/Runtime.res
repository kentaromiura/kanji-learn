@val external setTimeout: (unit => unit, int) => float = "setTimeout"
@val external clearTimeout: float => unit = "clearTimeout"
let nowMs = %raw(`() => Date.now()`)

let afterDelay = (ms, onDone) => setTimeout(onDone, ms)->ignore
let unlockAudio = AudioManager.unlock

let playEffectThen = AudioManager.playEffectThen
let playPopThen = onDone => playEffectThen("pop", 0.55, 1200, onDone)
let playErrorThen = onDone => playEffectThen("error", 0.62, 1200, onDone)
let playInterfaceClick = () => playEffectThen("playCard", 0.38, 900, () => ())

let runDrawTransition: (int, int, unit => unit, unit => unit, (unit => unit) => unit) => unit = %raw(`(animationMs, coverMs, onCovered, onDone, playDrawThen) => {
  let settled = false;
  let covered = false;
  const cover = () => {
    if (covered) return;
    covered = true;
    window.setTimeout(onCovered, 0);
  };
  const finish = () => {
    if (settled) return;
    settled = true;
    cover();
    window.setTimeout(onDone, 0);
  };
  const wait = (ms) => new Promise(resolve => window.setTimeout(resolve, ms));
  const playDraw = () => new Promise(resolve => playDrawThen(resolve));
  window.setTimeout(cover, coverMs);
  window.setTimeout(finish, Math.max(animationMs, coverMs) + 1400);
  Promise.all([playDraw(), wait(animationMs)]).then(finish, finish);
}`)

let playDrawTransition = (animationMs, coverMs, onCovered, onDone) =>
  runDrawTransition(animationMs, coverMs, onCovered, onDone, onSoundDone =>
    playEffectThen("draw", 0.45, 1200, onSoundDone)
  )

let runCorrectTransition: (int, unit => unit, (unit => unit) => unit) => unit = %raw(`(animationMs, onDone, playPopThen) => {
  let settled = false;
  const finish = () => {
    if (settled) return;
    settled = true;
    window.setTimeout(onDone, 0);
  };
  const wait = (ms) => new Promise(resolve => window.setTimeout(resolve, ms));
  const playPop = () => new Promise(resolve => playPopThen(resolve));
  window.setTimeout(finish, animationMs + 1400);
  Promise.all([playPop(), wait(animationMs)]).then(finish, finish);
}`)

let playCorrectTransition = (animationMs, onDone) =>
  runCorrectTransition(animationMs, onDone, onSoundDone =>
    playEffectThen("pop", 0.55, 1200, onSoundDone)
  )
