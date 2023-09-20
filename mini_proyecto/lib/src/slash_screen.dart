import 'package:flutter/material.dart';
import 'package:mini_proyecto/src/abc_imc.dart';
import 'package:mini_proyecto/src/result_imc.dart';

class SplashScreen extends StatefulWidget {
  final Data data;
  SplashScreen({required this.data});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    if (widget.data.peso == 0 && widget.data.estatura == 0) {
      Future.delayed(
          const Duration(milliseconds: 3000),
          () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Homepage())));
    } else {
      Future.delayed(
          const Duration(milliseconds: 1000),
          () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => DatosPage(data: widget.data))));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png'),
            const SizedBox(height: 50),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
