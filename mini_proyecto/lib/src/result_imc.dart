import 'package:flutter/material.dart';
import 'package:mini_proyecto/src/abc_imc.dart';

class DatosPage extends StatelessWidget {
  final Data data;
  DatosPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Indice de masa corporal'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Resultado:'),
              Text('IMC: ${data.peso / (data.estatura * data.estatura)}'),
              Text('Peso: ${data.peso}'),
              Text('Estatura: ${data.estatura}'),
            ],
          ),
        ));
  }
}
