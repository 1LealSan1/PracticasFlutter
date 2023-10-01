import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _currentIndex = 0;
  final tabs = [
    const Center(
      child: Text(
        'Mapa',
        style: TextStyle(color: Colors.black26, fontSize: 50),
      ),
    ),
    const Center(
      child: Text(
        'E-Mail',
        style: TextStyle(color: Colors.brown, fontSize: 50),
      ),
    ),
    const Center(
      child: Text(
        'Alarma',
        style: TextStyle(color: Colors.indigo, fontSize: 50),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pracica 7"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[300],
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey[250],
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Mapa'),
          BottomNavigationBarItem(icon: Icon(Icons.email), label: 'Email'),
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'Alarm'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
