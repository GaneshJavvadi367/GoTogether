import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCTju_pl8kObxu4PBhQO3Pvy-VO8o-BORc",
            authDomain: "rapidoclone-ti1h26.firebaseapp.com",
            projectId: "rapidoclone-ti1h26",
            storageBucket: "rapidoclone-ti1h26.firebasestorage.app",
            messagingSenderId: "777638747993",
            appId: "1:777638747993:web:2b526177b999c6b4de3648"));
  } else {
    await Firebase.initializeApp();
  }
}
