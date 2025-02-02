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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBbzFpiyyAHRPiPXFoyjzaKxM8yFPRLx4k',
    appId: '1:1090061877291:web:6c9eecb18108529cba2a6e',
    messagingSenderId: '1090061877291',
    projectId: 'chat-app-ba1e0',
    authDomain: 'chat-app-ba1e0.firebaseapp.com',
    storageBucket: 'chat-app-ba1e0.appspot.com',
    measurementId: 'G-WTC9PHLJTH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDpBNZF5MAhlf-CSV26K9_IZTOSo9EftO8',
    appId: '1:1090061877291:android:d11f62ed08e0b87dba2a6e',
    messagingSenderId: '1090061877291',
    projectId: 'chat-app-ba1e0',
    storageBucket: 'chat-app-ba1e0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCORG1kr4ZjKoDDUYTazD3Nbj2bmPrCmxo',
    appId: '1:1090061877291:ios:09e9cc6eaae3ea7cba2a6e',
    messagingSenderId: '1090061877291',
    projectId: 'chat-app-ba1e0',
    storageBucket: 'chat-app-ba1e0.appspot.com',
    iosBundleId: 'com.example.chatappBloc',
  );
}
