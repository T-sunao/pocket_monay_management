// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyD3EV_8BBgHoBQxbgwDVKSp1xL6uvt-rbY',
    appId: '1:443936303508:web:356312ed73695cd42c0781',
    messagingSenderId: '443936303508',
    projectId: 'pocket-money-management-c1fa9',
    authDomain: 'pocket-money-management-c1fa9.firebaseapp.com',
    storageBucket: 'pocket-money-management-c1fa9.firebasestorage.app',
    measurementId: 'G-8BWHJSVBRQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD8uftL2N_Bu_nwVztu-41PGqAMe8PLf-M',
    appId: '1:443936303508:android:d2f27f147dd206b92c0781',
    messagingSenderId: '443936303508',
    projectId: 'pocket-money-management-c1fa9',
    storageBucket: 'pocket-money-management-c1fa9.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDxaXM70luqqy-3x62785T7c-J6iYpL3XQ',
    appId: '1:443936303508:ios:3ca8e284a3ae05512c0781',
    messagingSenderId: '443936303508',
    projectId: 'pocket-money-management-c1fa9',
    storageBucket: 'pocket-money-management-c1fa9.firebasestorage.app',
    iosBundleId: 'com.example.pocketMonayManagement',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDxaXM70luqqy-3x62785T7c-J6iYpL3XQ',
    appId: '1:443936303508:ios:3ca8e284a3ae05512c0781',
    messagingSenderId: '443936303508',
    projectId: 'pocket-money-management-c1fa9',
    storageBucket: 'pocket-money-management-c1fa9.firebasestorage.app',
    iosBundleId: 'com.example.pocketMonayManagement',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD3EV_8BBgHoBQxbgwDVKSp1xL6uvt-rbY',
    appId: '1:443936303508:web:00ee5c28a1859d7e2c0781',
    messagingSenderId: '443936303508',
    projectId: 'pocket-money-management-c1fa9',
    authDomain: 'pocket-money-management-c1fa9.firebaseapp.com',
    storageBucket: 'pocket-money-management-c1fa9.firebasestorage.app',
    measurementId: 'G-KT3YX7F0CQ',
  );
}
