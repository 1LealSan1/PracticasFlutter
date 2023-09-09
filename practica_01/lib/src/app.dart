import 'package:flutter/material.dart';
import 'package:practica_01/src/userData.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Practica 1',
      home: Center(
        child: DatosUsuarios(),
      ),
    );
  }
}
