import 'package:flutter/material.dart';
import 'package:practica_06/src/tabs_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Practica 06',
      debugShowCheckedModeBanner: false,
      home: TabsPage(),
    );
  }
}
