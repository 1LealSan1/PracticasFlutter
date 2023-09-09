import 'package:flutter/material.dart';

void main() {
  runApp( const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int contador = 0;

  void _incrementCounter() {
    setState(() {
      contador++;
    });
  }

  void _removeCounter() {
    setState(() {
      contador--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Número de clics:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '$contador',
              style: const TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
      floatingActionButton:
      Padding(
        padding: const EdgeInsets.all(2.0), // Padding alrededor de los textos
        child: Column(  
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
        FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Incrementar',
          child: const Icon(Icons.add),
        ),        
        const SizedBox(height: 20),
        FloatingActionButton(
          onPressed: _removeCounter,
          tooltip: 'Incrementar',
          child:  const Icon(Icons.remove, color: (Colors.red)),
        ),
        ]    
       ))
    );
  }
}