import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCj7fRYnftUzEgOrIQCtJgcmsr6tVx4Q14",
            authDomain: "fastpay-36d61.firebaseapp.com",
            projectId: "fastpay-36d61",
            storageBucket: "fastpay-36d61.appspot.com",
            messagingSenderId: "420929980688",
            appId: "1:420929980688:web:8875fc1ebe66f651dcfd95"));
  } else {
    await Firebase.initializeApp();
  }
}
