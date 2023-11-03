import 'package:flutter/material.dart';
import 'package:practica_15/src/slivers_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practica 15',
      home: SliversPage(),
    );
  }
}
