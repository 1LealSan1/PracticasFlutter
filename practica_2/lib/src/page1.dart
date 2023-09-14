import 'package:flutter/material.dart';

class Page1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title:  const Text('Practica 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child:  const Text('Pagina 2'),
              style: ElevatedButton.styleFrom(
              primary: Colors.amber, onPrimary: Colors.white),
              onPressed: (){
                Navigator.pushNamed(context, '/Page2');
            }),
            ElevatedButton(
              child:  const Text('Pagina 3'),
              style: ElevatedButton.styleFrom(
              primary: Colors.blueGrey, onPrimary: Colors.white),
              onPressed: (){
                Navigator.pushNamed(context, '/Page3');
            })
          ],
        ),
      ),
    );
  }
}