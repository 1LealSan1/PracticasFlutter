import 'package:flutter/material.dart';
import 'package:mini_proyecto/src/slash_screen.dart';
import 'package:mini_proyecto/src/abc_imc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final data = Data(peso: 0, estatura: 0);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Mini Proyecto', home: SplashScreen(data: data));
  }
}
