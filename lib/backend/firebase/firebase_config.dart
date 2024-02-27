import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBe8lOd9sLArGWsKu2L8tACqxhpgCwBOTA",
            authDomain: "slamsquad2.firebaseapp.com",
            projectId: "slamsquad2",
            storageBucket: "slamsquad2.appspot.com",
            messagingSenderId: "1033759098941",
            appId: "1:1033759098941:web:db5e65ef179d652a380254",
            measurementId: "G-LYRWH3TC50"));
  } else {
    await Firebase.initializeApp();
  }
}
