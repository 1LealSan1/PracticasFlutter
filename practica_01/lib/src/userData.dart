// ignore: file_names
import 'package:flutter/material.dart';
import 'package:practica_01/src/myAlertDialog.dart';

class DatosUsuarios extends StatefulWidget {
  const DatosUsuarios({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DatosUsuariosState createState() => _DatosUsuariosState();
}

class _DatosUsuariosState extends State<DatosUsuarios> {
  // ignore: prefer_typing_uninitialized_variables
  var _name;
  // ignore: prefer_typing_uninitialized_variables
  var _phone;

  final nameCtrl = TextEditingController();
  final phoneCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practica 01'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/images/chems.png'),
          const SizedBox(height: 10.0),
          TextField(
            controller: nameCtrl,
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(5),
                hintText: 'Ingresa tu nombre'),
          ),
          const SizedBox(height: 10.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.amber, onPrimary: Colors.black),
            child: const Text('Enviar'),
            onPressed: () {
              _name = nameCtrl.text;
              _phone = phoneCtrl.text;

              setState(() {
                showAlertDialog(
                    context,
                    'El usuario $_name, tiene un telefono $_phone',
                    'Mi APP :)',
                    'OK',
                    ':(');
              });
            },
          )
        ],
      ),
    );
  }
}
