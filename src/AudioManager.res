let unlock: unit => unit = %raw(`() => {
  const files = {
    pop: "./public/sounds/plop.ogg",
    error: "./public/sounds/error.wav",
    draw: "./public/sounds/draw.wav",
    playCard: "./public/sounds/play-card.wav",
  };
  const state = window.__kanjiLearnAudio || (window.__kanjiLearnAudio = {
    context: null,
    buffers: Object.create(null),
    loading: Object.create(null),
  });
  try {
    const AudioContext = window.AudioContext || window.webkitAudioContext;
    if (!AudioContext) return;
    if (!state.context) state.context = new AudioContext();
    if (state.context.state === "suspended") state.context.resume().catch(() => {});
    Object.keys(files).forEach(name => {
      if (state.buffers[name] || state.loading[name] || !window.fetch) return;
      state.loading[name] = fetch(files[name])
        .then(response => {
          if (!response.ok) throw new Error("Sound fetch failed");
          return response.arrayBuffer();
        })
        .then(bytes => state.context.decodeAudioData(bytes))
        .then(buffer => {
          state.buffers[name] = buffer;
          return buffer;
        })
        .catch(error => {
          delete state.loading[name];
          return null;
        });
    });
  } catch (_) {}
}`)

let playEffectThen: (string, float, int, unit => unit) => unit = %raw(`(name, volume, timeoutMs, onDone) => {
  const files = {
    pop: "./public/sounds/plop.ogg",
    error: "./public/sounds/error.wav",
    draw: "./public/sounds/draw.wav",
    playCard: "./public/sounds/play-card.wav",
  };
  const state = window.__kanjiLearnAudio || (window.__kanjiLearnAudio = {
    context: null,
    buffers: Object.create(null),
    loading: Object.create(null),
  });
  let settled = false;
  const done = () => {
    if (settled) return;
    settled = true;
    window.setTimeout(onDone, 0);
  };
  const fallback = window.setTimeout(done, timeoutMs);
  const finish = () => {
    window.clearTimeout(fallback);
    done();
  };
  const getContext = () => {
    try {
      const AudioContext = window.AudioContext || window.webkitAudioContext;
      if (!AudioContext) return null;
      if (!state.context) state.context = new AudioContext();
      if (state.context.state === "suspended") state.context.resume().catch(() => {});
      return state.context;
    } catch (_) {
      return null;
    }
  };
  const playBuffer = buffer => {
    if (settled) return;
    const context = getContext();
    if (!context || !buffer) {
      finish();
      return;
    }
    try {
      const source = context.createBufferSource();
      const gain = context.createGain();
      gain.gain.value = volume;
      source.buffer = buffer;
      source.connect(gain);
      gain.connect(context.destination);
      source.onended = finish;
      source.start(0);
    } catch (_) {
      finish();
    }
  };
  const loadBuffer = () => {
    const src = files[name];
    if (!src) return Promise.reject(new Error("Unknown sound"));
    if (state.buffers[name]) return Promise.resolve(state.buffers[name]);
    if (state.loading[name]) return state.loading[name];
    const context = getContext();
    if (!context || !window.fetch) return Promise.reject(new Error("Web Audio unavailable"));
    state.loading[name] = fetch(src)
      .then(response => {
        if (!response.ok) throw new Error("Sound fetch failed");
        return response.arrayBuffer();
      })
      .then(bytes => context.decodeAudioData(bytes))
      .then(buffer => {
        state.buffers[name] = buffer;
        return buffer;
      })
      .catch(error => {
        delete state.loading[name];
        throw error;
      });
    return state.loading[name];
  };
  loadBuffer().then(playBuffer, finish);
}`)
