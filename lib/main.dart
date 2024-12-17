import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_firestore_manager.dart'; // Importamos el nuevo manager para Firestore

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseFirestoreManager _firestoreManager = FirebaseFirestoreManager(); // Usamos el manager de Firestore
  String _temperature = '';
  String _humidity = '';

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    String? temperature = await _firestoreManager.getTemperature(); // Cambiamos a String? para manejar posibles valores nulos
    String? humidity = await _firestoreManager.getHumidity(); // Cambiamos a String? para manejar posibles valores nulos
    setState(() {
      _temperature = temperature ?? 'N/A'; // Usamos 'N/A' si el valor es nulo
      _humidity = humidity ?? 'N/A'; // Usamos 'N/A' si el valor es nulo
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase Firestore"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Temperature: $_temperature °C",
            style: const TextStyle(fontSize: 20, color: Colors.green),
          ),
          const SizedBox(height: 20),
          Text(
            "Humidity: $_humidity %",
            style: const TextStyle(fontSize: 20, color: Colors.green),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => _firestoreManager.setData("1"),
            child: const Text("Turn On"),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => _firestoreManager.setData("0"),
            child: const Text("Turn Off"),
          ),
        ],
      ),
    );
  }
}
