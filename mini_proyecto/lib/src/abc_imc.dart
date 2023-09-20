import 'package:flutter/material.dart';
import 'package:mini_proyecto/src/result_imc.dart';
import 'package:mini_proyecto/src/slash_screen.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final ctrlpeso = new TextEditingController();
  final ctrlest = new TextEditingController();
  final data = Data(peso: 0, estatura: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[200],
        title: const Text('Mini Proyecto IMC'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(children: [
                TextField(
                  controller: ctrlest,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Ingresa la estatura',
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: ctrlpeso,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Ingresa el peso',
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange[200], onPrimary: Colors.white),
                    child: const Text('Calcular IMC'),
                    onPressed: () {
                      setState(() {
                        data.peso = double.parse(ctrlpeso.text);
                        data.estatura = double.parse(ctrlest.text);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SplashScreen(data: data)));
                      });
                    }),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class Data {
  double peso;
  double estatura;
  Data({required this.peso, required this.estatura});
}
