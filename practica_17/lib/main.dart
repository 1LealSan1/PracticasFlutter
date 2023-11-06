// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:practica_17/src/listview_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica 17',
      home: ListViewPage(),
    );
  }
}
