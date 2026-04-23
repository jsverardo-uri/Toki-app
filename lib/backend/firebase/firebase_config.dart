import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAEdhn3j_7153mB5iBoC0VRDKbm9vHKEbk",
            authDomain: "toki-2mqirk.firebaseapp.com",
            projectId: "toki-2mqirk",
            storageBucket: "toki-2mqirk.firebasestorage.app",
            messagingSenderId: "909592406587",
            appId: "1:909592406587:web:8083639f0d5e62d58fca1e"));
  } else {
    await Firebase.initializeApp();
  }
}
