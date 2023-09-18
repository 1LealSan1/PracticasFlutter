import 'package:flutter/material.dart';
import 'package:practica_04/src/home_page.dart';
import 'package:practica_04/src/splash_screen.dart';

void main()  => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Practica 04', home: SplashScreen());
  }
}
