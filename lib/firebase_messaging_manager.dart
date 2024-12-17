import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseMessagingManager {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initializeFirebaseMessaging() async {
    await Firebase.initializeApp();
    _firebaseMessaging.requestPermission();
    String? token = await _firebaseMessaging.getToken();
    print("FirebaseMessaging token: $token");
  }
}
