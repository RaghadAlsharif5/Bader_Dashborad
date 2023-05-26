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
    apiKey: 'AIzaSyC2LxmQAWks858G3xqsTPRDHxgLKe3yjSk',
    appId: '1:605990300251:web:f554b2f84b25ad620f2d7e',
    messagingSenderId: '605990300251',
    projectId: 'badir-app',
    authDomain: 'badir-app.firebaseapp.com',
    storageBucket: 'badir-app.appspot.com',
    measurementId: 'G-NDZVN1K4S6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCUgujdtlUNut-JMZretoA9yPzx2Nl_b78',
    appId: '1:605990300251:android:628cc565aaf6b5db0f2d7e',
    messagingSenderId: '605990300251',
    projectId: 'badir-app',
    storageBucket: 'badir-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDpDpUcDWL5TgkNZtqCOAC3Gh15AnfvAEU',
    appId: '1:605990300251:ios:6b6f09e6383c9d900f2d7e',
    messagingSenderId: '605990300251',
    projectId: 'badir-app',
    storageBucket: 'badir-app.appspot.com',
    iosClientId: '605990300251-9ro78frkuobvqu698u1igicneadgbgel.apps.googleusercontent.com',
    iosBundleId: 'com.example.badirApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDpDpUcDWL5TgkNZtqCOAC3Gh15AnfvAEU',
    appId: '1:605990300251:ios:6b6f09e6383c9d900f2d7e',
    messagingSenderId: '605990300251',
    projectId: 'badir-app',
    storageBucket: 'badir-app.appspot.com',
    iosClientId: '605990300251-9ro78frkuobvqu698u1igicneadgbgel.apps.googleusercontent.com',
    iosBundleId: 'com.example.badirApp',
  );
}