import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyChAR-frPdOe1SaaDwO_qldPl0ilD_lO9Q",
            authDomain: "infinite-scroll-test-367b1.firebaseapp.com",
            projectId: "infinite-scroll-test-367b1",
            storageBucket: "infinite-scroll-test-367b1.appspot.com",
            messagingSenderId: "285660813309",
            appId: "1:285660813309:web:c700d18e88a50831e9eb94"));
  } else {
    await Firebase.initializeApp();
  }
}
