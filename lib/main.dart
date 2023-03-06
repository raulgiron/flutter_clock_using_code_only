import 'package:flutter/material.dart';
import 'package:clock_class/clock.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.grey.withOpacity(0.2),
          child: const Center(
            child: Reloj(),
          ),
        ),
      ),
    );
  }
}
