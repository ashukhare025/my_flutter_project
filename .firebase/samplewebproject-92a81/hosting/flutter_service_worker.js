'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "1eead6bc2423077e7629090cd7bbabac",
"assets/AssetManifest.bin.json": "5ea709960ffbfa4d3b45696abbd29cd3",
"assets/AssetManifest.json": "371317a09e7147e2138a4011de848f20",
"assets/assets/Blinkit/Blinkit%2520Onboarding%2520Screen.png": "cb6105836e207dbf7bd21850c126eafc",
"assets/assets/Blinkit/cart.png": "248782bfb43711fea8f47b37e82ea01d",
"assets/assets/Blinkit/category%25201.png": "6a333c8ec8409844bfaf2318d9505458",
"assets/assets/Blinkit/document.png": "687d4a101351d43dca9c379e3e70080f",
"assets/assets/Blinkit/home%25201.png": "37ca6cb1e571abe7cd6930ba8c1d3cbd",
"assets/assets/Blinkit/image%252010.png": "f2c415787dc394c5bbb7157fb6e4ab15",
"assets/assets/Blinkit/image%252021.png": "571484cc9a1279f8ce1827d242e5b970",
"assets/assets/Blinkit/image%252022.png": "b9165b2bbf005d6346435086cc83c0ce",
"assets/assets/Blinkit/image%252023.png": "13bf7f0bb03892c2cfcaab204e864f62",
"assets/assets/Blinkit/image%252024.png": "5a98d0f8f464e89b83cfc346db4d2b0d",
"assets/assets/Blinkit/image%252025.png": "e7082a85f9a1bbaa02975848848570e1",
"assets/assets/Blinkit/image%252031.png": "8a3176e1e35e86d04e5a6a059197c1f6",
"assets/assets/Blinkit/image%252032.png": "34e6b35377fc9b363bf4189dd4c6837a",
"assets/assets/Blinkit/image%252033.png": "ffc305ebcf283d49b23c298ea44e22f9",
"assets/assets/Blinkit/image%252034.png": "80694201cd85b3a143c4a0abd91ccbce",
"assets/assets/Blinkit/image%252035.png": "e574fad60c68b548009c058a0e60f4f4",
"assets/assets/Blinkit/image%252036.png": "e2655da2ea76f972a5a6a956a8d7f53a",
"assets/assets/Blinkit/image%252037.png": "ed2b5c1622ed06232bb118665c7c34d6",
"assets/assets/Blinkit/image%252038.png": "6a843f4745e3688d24a6d67789c002b4",
"assets/assets/Blinkit/image%252039.png": "627e7a6d13d1a4d9af5681e26a47d98e",
"assets/assets/Blinkit/image%252040.png": "53fd4aef7b79e492c458f36ccc8b7590",
"assets/assets/Blinkit/image%252041.png": "d2152580152d4911102366aea43f737a",
"assets/assets/Blinkit/image%252042.png": "88d9091f373cd6432b3e2496829b3449",
"assets/assets/Blinkit/image%252043.png": "9af05aab9cd0b55e5e42ba6c54233450",
"assets/assets/Blinkit/image%252044%2520(1).png": "ebccb1d804d0af213cbba7b2d3a976b6",
"assets/assets/Blinkit/image%252045%2520(1).png": "38ce2a073cf190408bd559120d8b3be8",
"assets/assets/Blinkit/image%252050%2520(1).png": "2cf53ec3b152ed9c8c2c7c1516fefc4d",
"assets/assets/Blinkit/image%252050.png": "0737990c9d79da737371f9f523cdde34",
"assets/assets/Blinkit/image%252051.png": "01cbbb9c781076984fc666ea6fa8e9c5",
"assets/assets/Blinkit/image%252052.png": "b86eb3ddc77c04e74796c5d8c9db2146",
"assets/assets/Blinkit/image%252053.png": "da1cb20c35c946fbc4bf694a3339b54f",
"assets/assets/Blinkit/image%252054.png": "a55604cd6980821d8c2e0625fa3b9cd3",
"assets/assets/Blinkit/image%252055.png": "35ad24ca3b6a71f08bbe956d80022681",
"assets/assets/Blinkit/image%252057.png": "b45444ce7c0d4cf6d8fc9f77f573e1c7",
"assets/assets/Blinkit/image%252060.png": "93a046c676d7db84b2065c1df24cd952",
"assets/assets/Blinkit/image%252061.png": "93a046c676d7db84b2065c1df24cd952",
"assets/assets/Blinkit/image%252063.png": "31c0eeae79c5ea12fd3fe0387691dc78",
"assets/assets/Blinkit/image%25209.png": "258a1d1595b14e0cec5851a091c6b206",
"assets/assets/Blinkit/mic%25201.png": "7c94fc8598372efb4c938c3fa4bb3878",
"assets/assets/Blinkit/milk.png": "4bea177068b8a5b33ee1d7707c293eb8",
"assets/assets/Blinkit/potato.png": "0debf7ec68aa5bdad921d06967e7a04f",
"assets/assets/Blinkit/printer%25201.png": "9fc7a10fbf677a7929bd46dff8d31f1a",
"assets/assets/Blinkit/search.png": "8d8cdce35b39cdf60941b40c97711627",
"assets/assets/Blinkit/shopping-bag%25201.png": "5edc468c5f8111985f59fcdc193742b5",
"assets/assets/Blinkit/splash.png": "ee05c9540b97a5a5aa657ce1eb03949a",
"assets/assets/Blinkit/star.png": "03edb3564f8087f9e0a9bbd9fb304bd9",
"assets/assets/Blinkit/timer%25204.png": "91f69bce64c2c71ecd3cf251b4406637",
"assets/assets/Blinkit/tomato.png": "48fd38c14b93a8e93e2b60ed4af657d4",
"assets/assets/Blinkit/user.png": "69f5788d8d59be2d6747ad23bae09608",
"assets/assets/DJ/cherry.jpg": "f16db66321f0ee723ee96b86dab69234",
"assets/assets/DJ/gamer.png": "f0a4107263d0518dabb7e90b410920e3",
"assets/assets/DJ/girl.png": "a47910c1b8360de3f77a5f7aa8d7bb54",
"assets/assets/DJ/group%25201000003288.png": "1380bbe797ce1b8af0ddcc6ca367ce60",
"assets/assets/DJ/group%252018.png": "a7f562bfab38d5d3244c7fcfa92e1094",
"assets/assets/DJ/group.png": "939237587200e97e83cde11db5307b8c",
"assets/assets/DJ/Shillong.png": "464890b4be31cf1f2a90125c70cd84f3",
"assets/assets/DJ/song-tour.png": "57183908b740f94a1982a26557b69c73",
"assets/assets/DJ/stranger.jpg": "38b8db5f4b9a454464a598370ef9809d",
"assets/assets/DJ/takecare.jpg": "6bf9a8f13c620e0f7ea2050d3d4fe0b6",
"assets/assets/DJ/upload-image-svgrepo-com%25201.png": "9db81cd674b2048a3b96d52ca960bcf4",
"assets/assets/DJ/_7b481d43-e709-49ac-97a6-6b936187f2f5-removebg-preview%25201.png": "6d5e0e64c47fa18758ac93710db2ad69",
"assets/assets/Ecomm/addidas.png": "aeb890dca45984e41ee2cd4711dc083e",
"assets/assets/Ecomm/cartoon.jpg": "e8c76d30f22e592fc8bed86ade16ec68",
"assets/assets/Ecomm/convers.png": "2b9ef47902cf30627c8a25348a87adb9",
"assets/assets/Ecomm/Group%2520108.png": "013516636a205ba1cb9ad6adbaef24ba",
"assets/assets/Ecomm/Group%2520285.png": "d15ffa5aa671cc4ce498d89f3f95bea1",
"assets/assets/Ecomm/Group%2520286.png": "ec28f7752333b5e198233ee029c132ce",
"assets/assets/Ecomm/Group12.png": "b9b6fd6622db5ed86b13c498be017bdf",
"assets/assets/Ecomm/nike-ah8050110-air_max_270-1-e_prev_ui%25201.png": "b1e43b699a70d67940d5b2e32660e981",
"assets/assets/Ecomm/nike-zoom-winflo-3-831561-001-mens-running-shoes-11550187236tiyyje6l87_prev_ui%25201.png": "8d09a5edede9e57110edd264fa65a1c3",
"assets/assets/Ecomm/nike.png": "bb7ecc900fdc6a00da7feb3156941e0a",
"assets/assets/Ecomm/pngaaa%25202.png": "cee3097bab979a86aa77c7a1dd918d67",
"assets/assets/Ecomm/pngaaa.png": "07bb67174217ee653f11652d78a07bfb",
"assets/assets/Ecomm/PngItem_5550642%2520(2)%25201.png": "56e9b77383643ff35c55d37acd9ad873",
"assets/assets/Ecomm/puma.png": "775201553fb3b4558c03900d9b77696d",
"assets/assets/Ecomm/Splash.jpg": "cc1aaea776edbbfd0b436d2f35fd93c3",
"assets/assets/Ecomm/under.png": "aa20848836333375ffcb4aece94ba9b4",
"assets/assets/Ecomm/usa.png": "e2fd4f21fdb9fdfa9ca9292bc0ad7b59",
"assets/assets/fonts/Poppins/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/fonts/Poppins/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/assets/fonts/Poppins/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/fonts/Poppins/Poppins-SemiBold.ttf": "6f1520d107205975713ba09df778f93f",
"assets/assets/image/product1.png": "ed3bfec311d3d8da59aa680eb0d32f38",
"assets/assets/image/product2.png": "be2ceb976bb55a4dc3ed14b68e12e0f1",
"assets/assets/image/product3.png": "84bde9a547fbc815de407320033a86db",
"assets/assets/image/product4.png": "88bca1f6a10ca2c80627a1b357b817e8",
"assets/assets/image/product5.png": "74f64e9c3e79a0ef278466ac82402fd9",
"assets/assets/image/product6.png": "768a98eac2ee3c8c00ea69fd97d3b166",
"assets/assets/image/shape1.png": "f94d3d20b25ddfdac846084a3eb36cbd",
"assets/assets/image/shape10.png": "4fcc0a10f8212f823d39a287d0871251",
"assets/assets/image/shape11.png": "fc5100e677fc445c0a13bf5ad937a550",
"assets/assets/image/shape2.png": "2ca63ad80984d30b570d11a72b84daba",
"assets/assets/image/shape3.png": "aba7153e843daf30b4aaa99cd5d2548d",
"assets/assets/image/shape4.png": "581d15901f387e9517a1f8c9bb7acb94",
"assets/assets/image/shape5.png": "3a76a85a066e39de20dcee550b61d0a1",
"assets/assets/image/shape6.png": "371b5ac145fb9e5dfad078c8994dc554",
"assets/assets/image/shape7.png": "85b358bee3a85d71828cccb6a5764894",
"assets/assets/image/shape8.png": "575150b6c11a5e1a69bde7da6442e39f",
"assets/assets/image/shape9.png": "a138b22f1ddb6ddd67f0b103a151637f",
"assets/assets/image/unnamed.jpg": "394f4c23d206d5445ea7d7ac46dc3474",
"assets/assets/images/boarding.png": "4024ed43febb64e17cd56c030baec5ac",
"assets/assets/images/flutter.jpg": "df39360435eb5878f7eaab743b22d2f0",
"assets/assets/images/google.png": "39af8419287f8ee6036c01e88ad848f2",
"assets/assets/images/happy-face%25201.png": "856d18afd0bcfdd7a0af7b6932912c5a",
"assets/assets/images/logo.png": "dce57dd6f0a6f7d1af94df17f4bca454",
"assets/assets/images/mode_comment_black_24dp%25201.png": "81b3d430813efd4f86a315883d68a7a8",
"assets/assets/images/photo-camera%25201.png": "781e327427e026c858c0ffa1d380d1eb",
"assets/assets/images/Search.png": "720712dcf47c80842691b1a9a9d7b922",
"assets/assets/images/text.jpg": "84f0072d3a3bcf2493088132fc74ce5a",
"assets/assets/images/user.png": "c6b2b30d0e4d56dffe9733b55f4684dd",
"assets/assets/images/what.png": "b4c889f55b5055c24f30268c7f51c08f",
"assets/assets/images/whatsapp%25201.png": "5110d40cbf99af160b82250b39128521",
"assets/assets/Insta/heart.png": "c90cb1723be47220e66c88b8e3b1b99b",
"assets/assets/Insta/home.png": "6628895cc92ee19066152d18d08c64ce",
"assets/assets/Insta/Icon.png": "52867ed05ffa362b1dff23f257fd3e89",
"assets/assets/Insta/Instagram.png": "2c45bea90ea276e87a24feeaa3d8302a",
"assets/assets/Insta/logo.png": "127cd1a6d5e8f4b61ad9e89cd0e17783",
"assets/assets/Insta/Oval.png": "004a5387c132faa0f894efca87089169",
"assets/assets/Insta/plus.png": "7bcd1070dd7b831f4b68112d54f6acc0",
"assets/assets/Insta/search.png": "da2f5a04f1bf3e1c928d90b2143acfd6",
"assets/assets/logo/bakery.png": "e1addba4b5476eef1bc1331249eb6f9c",
"assets/assets/logo/coupons.png": "a88ee425ae1c44134c2645ca52f655c3",
"assets/assets/logo/harvest.png": "1b177a0a3ba45278789575ce05a0bf6e",
"assets/assets/logo/juice.png": "ec264ad9bed8bce09004727448d7be6a",
"assets/assets/logo/settings.png": "cc30a6a57d64c10ca828f7a6ade7fdd5",
"assets/assets/logo/vegetable.png": "c8322e148f131af036f2449c0ff77bb8",
"assets/assets/onboarding/screen1.jpg": "693fa6d76c5db9a5f72d015eb2d907fa",
"assets/assets/onboarding/screen2.jpg": "6017d2431504d24f841b2945f5ec8cfd",
"assets/assets/onboarding/screen3.jpg": "9e96552fa577fce23a1ccb0caf15a7a9",
"assets/assets/tikawoo/1%2520Splash.png": "73c9b396810a8d53a94bb5e9b66a89a8",
"assets/assets/tikawoo/bal.jpg": "10a9c8eef2e619b5933e451ff68d645e",
"assets/assets/tikawoo/bike.png": "0b971d485d6366fc172ca3ace6955a04",
"assets/assets/tikawoo/box.jpg": "3caf9eff3e48d16dba4a497fb2c83696",
"assets/assets/tikawoo/cloth1.png": "de517883458b46d5793ac4abc43cba39",
"assets/assets/tikawoo/Czech.png": "53cec70e56bc59d7f4908ba974e6ad28",
"assets/assets/tikawoo/Frame.png": "ab726b9b9a7c63e00fd5d79af4945992",
"assets/assets/tikawoo/garman.webp": "2bc9e53fca7216d1440916f2b2f8ce45",
"assets/assets/tikawoo/greek.webp": "f63dbe206d9135ca726c40e57153ec11",
"assets/assets/tikawoo/Group.png": "75a5fb8224c8888817dc6f141226af27",
"assets/assets/tikawoo/Group48095954.png": "6b2465ae1d8ac4603b7487c579e99530",
"assets/assets/tikawoo/Group48095955.png": "0ac9eb1d53d7d272f7cb27946948e1d2",
"assets/assets/tikawoo/guide.png": "8e5239d85daf81f514dcc2061df1d5d9",
"assets/assets/tikawoo/image%252012.png": "4b6f94dd125b4444d59c5b9fa7179eb3",
"assets/assets/tikawoo/image%252016.png": "774e33d10a17e10c2c52fd7d012705b4",
"assets/assets/tikawoo/indian.png": "1cb4bfd93be14dc4e8d31ec15b63410a",
"assets/assets/tikawoo/otp.png": "b57697e4e5be60049a8cade96ec236ac",
"assets/assets/tikawoo/paint.png": "53637693ea5824643f77a68cc88e7a71",
"assets/assets/tikawoo/Privacy%2520policy.png": "fd974003b022d954ce98a628194c7b42",
"assets/assets/tikawoo/Rectangle.png": "d09a7a2114773279b6faee059cd7389d",
"assets/assets/tikawoo/sucess.png": "8299622f8dde7db7b856e6ea4d68ed65",
"assets/assets/tikawoo/usa.png": "e2fd4f21fdb9fdfa9ca9292bc0ad7b59",
"assets/assets/videos/video1.mp4": "c6f4531a32f3a29b00fb6ad024ba607a",
"assets/FontManifest.json": "cf9086857b0b0d2ea4d4339ecf021414",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/NOTICES": "559811e5c598640109fd7e77a47abd76",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "b93248a553f9e8bc17f1065929d5934b",
"assets/packages/flutter_map/lib/assets/flutter_map_logo.png": "208d63cc917af9713fc9572bd5c09362",
"assets/packages/font_awesome_flutter/lib/fonts/Font%2520Awesome%25207%2520Brands-Regular-400.otf": "440da663f17184f21f007a3a2bf60f69",
"assets/packages/font_awesome_flutter/lib/fonts/Font%2520Awesome%25207%2520Free-Regular-400.otf": "df86a1976d76bd04cf3fcaf5add2dd0f",
"assets/packages/font_awesome_flutter/lib/fonts/Font%2520Awesome%25207%2520Free-Solid-900.otf": "e151d7a6f42f17e9ea335c91d07b3739",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"flutter_bootstrap.js": "085fc90b9666606f72d772ec39c80359",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "7fd46119ae6b43c7a6b674a803523875",
"/": "7fd46119ae6b43c7a6b674a803523875",
"main.dart.js": "6c6c20e18d11ada22ad91d7c2f73f004",
"manifest.json": "a4e1fdf91839a81429acf888d76923cd",
"version.json": "c3828460a27854e43c604f2b234d6834"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
