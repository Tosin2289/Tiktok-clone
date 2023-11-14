// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBt80AySAryv8HLDctWszBcuXwvTVvrFaw',
    appId: '1:1031970889846:web:7d46be54a7e44b6931bf57',
    messagingSenderId: '1031970889846',
    projectId: 'tiktok-clone-e6d94',
    authDomain: 'tiktok-clone-e6d94.firebaseapp.com',
    storageBucket: 'tiktok-clone-e6d94.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDQgz7TxBuL1MxpB12-kRFzT3jz6E2Vudg',
    appId: '1:1031970889846:android:ebc37f9e1597e7c631bf57',
    messagingSenderId: '1031970889846',
    projectId: 'tiktok-clone-e6d94',
    storageBucket: 'tiktok-clone-e6d94.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBuLuuOBY85bTjx7KvsTLNEzECbFB_wF8w',
    appId: '1:1031970889846:ios:0f0f887c2a0a74d931bf57',
    messagingSenderId: '1031970889846',
    projectId: 'tiktok-clone-e6d94',
    storageBucket: 'tiktok-clone-e6d94.appspot.com',
    iosBundleId: 'com.example.tiktokClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBuLuuOBY85bTjx7KvsTLNEzECbFB_wF8w',
    appId: '1:1031970889846:ios:0f0f887c2a0a74d931bf57',
    messagingSenderId: '1031970889846',
    projectId: 'tiktok-clone-e6d94',
    storageBucket: 'tiktok-clone-e6d94.appspot.com',
    iosBundleId: 'com.example.tiktokClone',
  );
}
