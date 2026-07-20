const CACHE_NAME = "kanji-learn-v118";
const APP_SHELL = [
  "./",
  "./index.html",
  "./out.js",
  "./out.css",
  "./manifest.webmanifest",
  "./public/icons/cristian-logo.webp",
  "./public/sounds/plop.ogg",
  "./public/sounds/draw.wav",
  "./public/sounds/error.wav",
  "./public/sounds/play-card.wav",
  "./public/icons/icon.svg"
];

self.addEventListener("install", event => {
  event.waitUntil(caches.open(CACHE_NAME).then(cache => cache.addAll(APP_SHELL)));
  self.skipWaiting();
});

self.addEventListener("activate", event => {
  event.waitUntil(
    caches.keys().then(keys =>
      Promise.all(keys.filter(key => key !== CACHE_NAME).map(key => caches.delete(key)))
    ).then(() => self.clients.claim())
  );
});

self.addEventListener("fetch", event => {
  if (event.request.method !== "GET") return;
  const url = new URL(event.request.url);
  const networkFirst =
    event.request.mode === "navigate" ||
    url.pathname.endsWith("/index.html") ||
    url.pathname.endsWith("/out.js") ||
    url.pathname.endsWith("/out.css");

  if (networkFirst) {
    event.respondWith(
      fetch(event.request).catch(() => caches.match(event.request).then(cached => cached || caches.match("./index.html")))
    );
    return;
  }

  event.respondWith(
    caches.match(event.request).then(cached => {
      if (cached) return cached;
      return fetch(event.request);
    }).catch(() => caches.match("./index.html"))
  );
});
