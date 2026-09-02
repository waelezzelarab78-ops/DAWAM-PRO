import 'package:flutter/material.dart';

void main() {
  runApp(const DawamProApp());
}

class DawamProApp extends StatelessWidget {
  const DawamProApp({super.key});

  @override
  Widget build(BuildContext nullContext) {
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
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_circle_outline,
              size: 80,
              color: Colors.green,
            ),
            const SizedBox(height: 20),
            const Text(
              'مرحباً بك في تطبيق دوام برو',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'التطبيق يعمل بنجاح الآن!',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('تم الضغط على الزر بنجاح!')),
                );
              },
              child: const Text('ابدأ استخدام التطبيق'),
            ),
          ],
        ),
      ),
    );
  }
}
