import 'package:flutter/material.dart';

void main() {
  runApp(const DawamProApp());
}

class DawamProApp extends StatelessWidget {
  const DawamProApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DAWAM PRO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('دوام برو - DAWAM PRO'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'مرحباً بك في تطبيق دوام برو',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
