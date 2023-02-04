import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAs4tqYnNsNagokfF7Nrwvl0gu7_SkWMg0",
            authDomain: "growy-b043a.firebaseapp.com",
            projectId: "growy-b043a",
            storageBucket: "growy-b043a.appspot.com",
            messagingSenderId: "676034790841",
            appId: "1:676034790841:web:52fb406bea2d9974126268",
            measurementId: "G-VJKXNHCS0D"));
  } else {
    await Firebase.initializeApp();
  }
}
