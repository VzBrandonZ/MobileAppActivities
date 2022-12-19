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
    apiKey: 'AIzaSyAxTSU2Pjx4NbaWtJ55RSgOd_ixf1rM-TI',
    appId: '1:621616652028:web:f7b9149110437faba2c179',
    messagingSenderId: '621616652028',
    projectId: 'fir-flutter-mero',
    authDomain: 'fir-flutter-mero.firebaseapp.com',
    storageBucket: 'fir-flutter-mero.appspot.com',
    measurementId: 'G-4BCLQVKYQH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB4wIP-3mlX-LPCmXC69HFLRA0Imtl1m-0',
    appId: '1:621616652028:android:6a9ee514180d22afa2c179',
    messagingSenderId: '621616652028',
    projectId: 'fir-flutter-mero',
    storageBucket: 'fir-flutter-mero.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD8Ns4Tlrv5GKL1EHSNDln5dna7iHpaHeM',
    appId: '1:621616652028:ios:13f2620586e8b500a2c179',
    messagingSenderId: '621616652028',
    projectId: 'fir-flutter-mero',
    storageBucket: 'fir-flutter-mero.appspot.com',
    iosClientId: '621616652028-1biu1cv3apvmugfi2g5l0cq8slsrr2a4.apps.googleusercontent.com',
    iosBundleId: 'com.example.gtkFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD8Ns4Tlrv5GKL1EHSNDln5dna7iHpaHeM',
    appId: '1:621616652028:ios:13f2620586e8b500a2c179',
    messagingSenderId: '621616652028',
    projectId: 'fir-flutter-mero',
    storageBucket: 'fir-flutter-mero.appspot.com',
    iosClientId: '621616652028-1biu1cv3apvmugfi2g5l0cq8slsrr2a4.apps.googleusercontent.com',
    iosBundleId: 'com.example.gtkFlutter',
  );
}
