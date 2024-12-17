import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationManager {
  PushNotificationManager._();

  factory PushNotificationManager() =>PushNotificationManager._();
  final FirebaseMessaging _firebaseMessaging =FirebaseMessaging.instance;
  bool _initialized = false;

  Future<void> init()async {
    await Firebase.initializeApp();
    if (!_initialized){
      _firebaseMessaging.requestPermission();
      String? token = await _firebaseMessaging.getToken();
      print("FirebaseMessaging token: $token");
      _initialized= true;

    }
  }
}