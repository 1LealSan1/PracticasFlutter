import 'package:flutter/material.dart';

class Page3 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title:  Text('Practica 3'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop();
            }, child:  Text('Atras'))
          ],
          ),
      ),
    );
  }
}