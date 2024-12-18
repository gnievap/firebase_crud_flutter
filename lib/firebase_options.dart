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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyA-ynFU3-QIwxE6-mX0c66M3YE4THQa_ag',
    appId: '1:805735389927:web:86389ba13cf327c8e3a042',
    messagingSenderId: '805735389927',
    projectId: 'nfl-teams-68de5',
    authDomain: 'nfl-teams-68de5.firebaseapp.com',
    storageBucket: 'nfl-teams-68de5.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCHViLwMi_UWWY62PqeSZPFf1TVyPr3PN0',
    appId: '1:805735389927:android:e51499a515a5ac06e3a042',
    messagingSenderId: '805735389927',
    projectId: 'nfl-teams-68de5',
    storageBucket: 'nfl-teams-68de5.firebasestorage.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA-ynFU3-QIwxE6-mX0c66M3YE4THQa_ag',
    appId: '1:805735389927:web:1c33d50e5e46aa48e3a042',
    messagingSenderId: '805735389927',
    projectId: 'nfl-teams-68de5',
    authDomain: 'nfl-teams-68de5.firebaseapp.com',
    storageBucket: 'nfl-teams-68de5.firebasestorage.app',
  );
}
