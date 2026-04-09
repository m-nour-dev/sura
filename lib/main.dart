import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(const SuraApp());
}

class SuraApp extends StatelessWidget {
  const SuraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'سُرَى',
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: Text(
            'سُرَى',
            style: TextStyle(fontSize: 32),
          ),
        ),
      ),
    );
  }
}