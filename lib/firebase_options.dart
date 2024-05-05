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
    apiKey: 'AIzaSyBluqAoy9WV5nrxZ98n1Gm-QIL_n0sQ21M',
    appId: '1:176706709644:web:a9abf94d6b4170003fb3a9',
    messagingSenderId: '176706709644',
    projectId: 'real-estate-app-dc1a3',
    authDomain: 'real-estate-app-dc1a3.firebaseapp.com',
    storageBucket: 'real-estate-app-dc1a3.appspot.com',
    measurementId: 'G-S4C8EB2W6N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDalSded84nt3x8RUuI-sT4x2E_hQeOABA',
    appId: '1:176706709644:android:d2db2c74bf3680033fb3a9',
    messagingSenderId: '176706709644',
    projectId: 'real-estate-app-dc1a3',
    storageBucket: 'real-estate-app-dc1a3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBnnMEpR-kVPnS7Qm1DqYx8oxlwfaDfPqQ',
    appId: '1:176706709644:ios:7a89461071b03c253fb3a9',
    messagingSenderId: '176706709644',
    projectId: 'real-estate-app-dc1a3',
    storageBucket: 'real-estate-app-dc1a3.appspot.com',
    iosBundleId: 'com.example.majekRealEstateProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBnnMEpR-kVPnS7Qm1DqYx8oxlwfaDfPqQ',
    appId: '1:176706709644:ios:7a89461071b03c253fb3a9',
    messagingSenderId: '176706709644',
    projectId: 'real-estate-app-dc1a3',
    storageBucket: 'real-estate-app-dc1a3.appspot.com',
    iosBundleId: 'com.example.majekRealEstateProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBluqAoy9WV5nrxZ98n1Gm-QIL_n0sQ21M',
    appId: '1:176706709644:web:34a3c752ca67b82f3fb3a9',
    messagingSenderId: '176706709644',
    projectId: 'real-estate-app-dc1a3',
    authDomain: 'real-estate-app-dc1a3.firebaseapp.com',
    storageBucket: 'real-estate-app-dc1a3.appspot.com',
    measurementId: 'G-9L5SBTFYD7',
  );

}