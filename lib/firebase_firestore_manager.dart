import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseFirestoreManager {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String?> getTemperature() async {
    DocumentSnapshot snapshot = await _firestore.collection('test').doc('temperatura').get();
    dynamic data = snapshot.data();
    return data != null ? data['value'].toString() : null;
  }

  Future<String?> getHumidity() async {
    DocumentSnapshot snapshot = await _firestore.collection('test').doc('humedad').get();
    dynamic data = snapshot.data();
    return data != null ? data['value'].toString() : null;
  }

  Future<void> setData(String data) async {
    await _firestore.collection('test').doc('relay').set({'value': data});
  }
}
