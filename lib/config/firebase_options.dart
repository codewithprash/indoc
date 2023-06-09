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
    apiKey: 'AIzaSyCig0_TbMaOxXy4tODNWW7ATqcb2FJKSd8',
    appId: '1:540430499005:web:13e3cfca31e60f29f74bd4',
    messagingSenderId: '540430499005',
    projectId: 'indoc420-98293',
    authDomain: 'indoc420-98293.firebaseapp.com',
    databaseURL: 'https://indoc420-98293-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'indoc420-98293.appspot.com',
    measurementId: 'G-T9NXCKJH6C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD1RF3H-FyjIv5IkibQUYFZ-8QDD0KVl7Q',
    appId: '1:540430499005:android:898bb87f7c284d32f74bd4',
    messagingSenderId: '540430499005',
    projectId: 'indoc420-98293',
    databaseURL: 'https://indoc420-98293-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'indoc420-98293.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA_SK9nuUDmwD4k8kb_f4zDfrIOh7U_sV8',
    appId: '1:540430499005:ios:31325b41761fa850f74bd4',
    messagingSenderId: '540430499005',
    projectId: 'indoc420-98293',
    databaseURL: 'https://indoc420-98293-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'indoc420-98293.appspot.com',
    iosClientId: '540430499005-e90bcciq65k7mtr7qi2senofr1mi96ls.apps.googleusercontent.com',
    iosBundleId: 'com.example.indoc',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA_SK9nuUDmwD4k8kb_f4zDfrIOh7U_sV8',
    appId: '1:540430499005:ios:31325b41761fa850f74bd4',
    messagingSenderId: '540430499005',
    projectId: 'indoc420-98293',
    databaseURL: 'https://indoc420-98293-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'indoc420-98293.appspot.com',
    iosClientId: '540430499005-e90bcciq65k7mtr7qi2senofr1mi96ls.apps.googleusercontent.com',
    iosBundleId: 'com.example.indoc',
  );
}
