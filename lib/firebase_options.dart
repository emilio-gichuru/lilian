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
    apiKey: 'AIzaSyC2qw1e_CZ-vinL0NbO2YUmCu9JO90bd9I',
    appId: '1:270769326739:web:7c16e1ed032ae5d2525b66',
    messagingSenderId: '270769326739',
    projectId: 'maps-333402',
    authDomain: 'maps-333402.firebaseapp.com',
    databaseURL: 'https://maps-333402-default-rtdb.firebaseio.com',
    storageBucket: 'maps-333402.appspot.com',
    measurementId: 'G-84P0120NDT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBCbwjojqS_yK3zCH2wmHeQealD2qN-6EY',
    appId: '1:270769326739:android:d4245136a852fbc0525b66',
    messagingSenderId: '270769326739',
    projectId: 'maps-333402',
    databaseURL: 'https://maps-333402-default-rtdb.firebaseio.com',
    storageBucket: 'maps-333402.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDKsY3Ac5_kf8k1MayXgLAEFNCcpXo8paI',
    appId: '1:270769326739:ios:4f323e65ad1eaf6f525b66',
    messagingSenderId: '270769326739',
    projectId: 'maps-333402',
    databaseURL: 'https://maps-333402-default-rtdb.firebaseio.com',
    storageBucket: 'maps-333402.appspot.com',
    androidClientId: '270769326739-7miudipqkr90ov359alarin69nqv3b50.apps.googleusercontent.com',
    iosBundleId: 'com.example.lilianTest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDKsY3Ac5_kf8k1MayXgLAEFNCcpXo8paI',
    appId: '1:270769326739:ios:9e897813b3273d22525b66',
    messagingSenderId: '270769326739',
    projectId: 'maps-333402',
    databaseURL: 'https://maps-333402-default-rtdb.firebaseio.com',
    storageBucket: 'maps-333402.appspot.com',
    androidClientId: '270769326739-7miudipqkr90ov359alarin69nqv3b50.apps.googleusercontent.com',
    iosBundleId: 'com.example.lilianTest.RunnerTests',
  );
}