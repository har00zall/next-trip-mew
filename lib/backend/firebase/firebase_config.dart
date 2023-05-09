import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCHyLaMwQZiqohXq9tZ4DHqr-oG3Z9wCRg",
            authDomain: "next-trip-a22d1.firebaseapp.com",
            projectId: "next-trip-a22d1",
            storageBucket: "next-trip-a22d1.appspot.com",
            messagingSenderId: "121477432287",
            appId: "1:121477432287:web:1c36dcd178641cfa05ba6a",
            measurementId: "G-MEFVMJW1X5"));
  } else {
    await Firebase.initializeApp();
  }
}
