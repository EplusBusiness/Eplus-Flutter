'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "b58bbf60faa1513f4592373bab40f0d2",
"index.html": "73e430a75b078acee378d140b76eb6de",
"/": "73e430a75b078acee378d140b76eb6de",
"main.dart.js": "43d9791b7f5c81d2a872eb5d53b84229",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"favicon.png": "14b29e1b747dc71edb7181b6f906a245",
"icons/Icon-192.png": "078bb8598aac2da146dd64d52f8b72b4",
"icons/Icon-maskable-192.png": "078bb8598aac2da146dd64d52f8b72b4",
"icons/Icon-maskable-512.png": "6e533e23314a69d258a1a965ddc261c2",
"icons/Icon-512.png": "6e533e23314a69d258a1a965ddc261c2",
"manifest.json": "be92ad46f8719b5327312dc8e34e4e99",
"assets/AssetManifest.json": "b776e7901c631f646ef408e9198da83f",
"assets/NOTICES": "d043b881cd175405709fdbfe87c47ca6",
"assets/FontManifest.json": "1ed29433992f7eceb45cafcc0e71fe2d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/fluttertoast/assets/toastify.js": "56e2c9cedd97f10e7e5f1cebd85d53e3",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/lib/src/edit_item/edit_items_state.dart": "39baf1351d73241ebfb5c378d8be14d3",
"assets/lib/src/edit_item/edit_items_screen.dart": "37e9ee3e1071f89c96dd980ef55344ef",
"assets/lib/src/edit_item/edit_items_state.freezed.dart": "e5c0a19a90aeec4a039c209ece78b31e",
"assets/lib/src/edit_item/edit_items_state.g.dart": "5f9eac28c5c9ce86f29bfcd21cb76ede",
"assets/fonts/Montserrat-Medium.ttf": "b3ba703c591edd4aad57f8f4561a287b",
"assets/fonts/Sacramento-Regular.ttf": "0c8e69ac621ffbdfdb997bef9b5aa312",
"assets/fonts/Montserrat-Regular.ttf": "3fe868a1a9930b59d94d2c1d79461e3c",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/assets/times_new_roman.ttf": "fcb8965acd0e90c50138958a2a7e0421",
"assets/assets/font-times-new-roman.ttf": "8ed460da03267d2817c1fe1b8e5272a6",
"assets/assets/SVN_Times_New_Roman_Bold.ttf": "f165475b0d51ad68272df1abd234523a",
"assets/assets/icons/ic_trash.png": "eb84b0fe6f16ebc93582e1e175f0bfe6",
"assets/assets/icons/ic_bookmark.png": "1a1352ea73696df5b8e66dfe4bde5124",
"assets/assets/icons/ic_clear_textfield.png": "8fae56e1e1b475f317da260f1dc26fd4",
"assets/assets/icons/ic_password.png": "ea30fc6cb9dee13f94dcfccd6091e340",
"assets/assets/icons/technical_logo.png": "6a796c4246ca845f274661daf29fa0ea",
"assets/assets/icons/ic_export_csv.png": "08367e83750304f0261d3b1389ea4a2d",
"assets/assets/icons/ic_unit.png": "069b1731a9332b4e0fa7ef0c5190b123",
"assets/assets/icons/ic_import_pdf.png": "ea89209e195bff3715a5c71d82449f74",
"assets/assets/icons/ic_user.png": "1f6153012d5ee56eaa24a0ca8444cf08",
"assets/assets/icons/ic_barcode.png": "63783f18cc308794f2afcdb773bb3bdf",
"assets/assets/icons/ic_location.png": "e479603440e00b06f01ac6b69370a0c6",
"assets/assets/icons/ic_print.png": "d836cc58fae6d314126fbc0cf83db96d",
"assets/assets/icons/ic_company.png": "82a2f31254ee3b08d7ea200cd740355e",
"assets/assets/icons/ic_avatar.png": "a131b65d9d7390e594abd141d8390a44",
"assets/assets/icons/ic_folder.png": "151a333d299556713d358a73805adfbd",
"assets/assets/icons/ic_plus.png": "182314ec69de288db126ac1eca5103f5",
"assets/assets/icons/ic_delete.png": "935bad5df28d17d4ac3e7a1dda336da3",
"assets/assets/icons/ic_add_folder.png": "b0fb458ac036474f80f134341328ac22",
"assets/assets/icons/ic_video.png": "f90d3fe2610fad9335a29bae626ae6e3",
"assets/assets/icons/ic_empty_folder.png": "934cc52e49762056d9c634e501e899c1",
"assets/assets/icons/ic_storage.png": "8c800a7e056dd2766e2d35890b5de08f",
"assets/assets/icons/ic_filter.png": "2909c6744f4f6aea7e22e1f6c78bf3d4",
"assets/assets/icons/ic_share.png": "3fc3b11b3b4fdb84e38be4613f98f404",
"assets/assets/icons/ic_play_video.png": "3c5cf89f98faf3bc6512f9c248572de1",
"assets/assets/icons/ic_background_pdf.png": "c78ec0ed01e8ee32d5691e9866863f0e",
"assets/assets/icons/ic_document.png": "946cafe3942bb0a412a791950cacefab",
"assets/assets/icons/ic_logout.png": "6f71e7030c80c3b12e4e144f2694188d",
"assets/assets/icons/intel_logo.png": "e2df67ed7d736f833ebb9d08fd8e69bd",
"assets/assets/icons/ic_pdf.png": "b4ff2b46d03a463eb65d024b3bd58501",
"assets/assets/icons/ic_next.png": "91eb222c1195e1046b9c87def1893019",
"assets/assets/icons/logo.png": "91c53b4947ace8a2531bfc3561328b79",
"assets/assets/icons/ic_settings.png": "ea7ee56225814cf711dc393269a64481",
"assets/assets/icons/ic_back.png": "de23e5921ea0e0c09e6be8535aaaecf1",
"assets/assets/icons/LOGO_EPLUS_03.png": "78c2ab62688ffeacc96f2ee46a72e85b",
"assets/assets/icons/ic_add_image.png": "12063746dcb20202ec6021d7e27abbd7",
"assets/assets/icons/ic_default_image.png": "dece8340c9e7f5239eafe5bf3edc0ab7",
"assets/assets/icons/ic_menu.png": "4ac14c839746666879388e9583eed048",
"assets/assets/icons/ic_call.png": "10d7368665d8a208e84313067ecba66b",
"assets/assets/icons/ic_name_item.png": "68cf05a79e5fdec427532b0b4dd7ae30",
"assets/assets/icons/ic_add_video.png": "de177b8064007247638f65579970e8be",
"assets/assets/icons/ic_user_yellow.png": "74bfd4f24db8381b8ee95c52c2a99ca1",
"assets/assets/icons/ic_passport.png": "72b551abc4d4aadad368cc1a64fff155",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
