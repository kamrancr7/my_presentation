'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "e45ab629ba1fe993c98f18803a36e07f",
"assets/assets/app_diagram.png": "1c45fc4d9b6eb48bbd371cc2b3917a46",
"assets/assets/bg.jpg": "0326db15d27e00ce601af6bc6ead9774",
"assets/assets/corodova_logo.png": "216157ed3259375c83aee871efa7fbed",
"assets/assets/dart_logo.png": "c979b430b2da155059ebc0a22b0a26ac",
"assets/assets/flow_diagram.png": "aaad087c4c759c2cec7726af713ea5eb",
"assets/assets/flutter_flow.png": "7909d335302270548b9376bb033a5dac",
"assets/assets/heart.png": "6e9d2165cba7124d3ffac4271f8f0bc3",
"assets/assets/ionic_logo.png": "90aa8d48235d66825a4fdc95a177f9e2",
"assets/assets/logo.png": "b094f065be41dd28e268b179dc478832",
"assets/assets/logo2.png": "ad6e9f3dd15fdd95f8bf828b8bc0af42",
"assets/assets/phonegap_logo.png": "3e751a4422146d2a89f01b6197ce16e5",
"assets/assets/react_native_flow.png": "0c721046f24111506c5f7e705510c0d2",
"assets/assets/react_native_logo.png": "62788af59cda2a8770c316b2413c2c52",
"assets/assets/stack_logo.png": "e689a87d1172e11b259b5bf06b6fdaaf",
"assets/assets/stack_loved.png": "523f089fb71eb4ebd96cd410d0ca9ad6",
"assets/assets/web_view.png": "22cb28512ff8e1d3d170b98c4fef03e4",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/LICENSE": "e38b6149d37182835f55b21884204252",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "0fc18e65ab217b35d4557c32868133bc",
"/": "0fc18e65ab217b35d4557c32868133bc",
"main.dart.js": "3f36d60124316fcacaddbe350b2a0371",
"manifest.json": "9cf474ab59619ce352fbaf3e76040e1b"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
