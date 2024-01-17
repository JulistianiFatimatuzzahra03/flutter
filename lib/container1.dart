import 'package:belajar_flutter/main.dart';
import 'package:flutter/material.dart';

class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(30),
      alignment: Alignment.center,
      // transform: Matrix4.rotationZ(0.1),
      decoration: BoxDecoration(
        // color: Colors.blueGrey,
       gradient: RadialGradient(
        colors: [Colors.black87, Colors.deepPurpleAccent, Color.fromARGB(255, 0, 255, 55)],
      ),
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.black, width: 3)
      ),
      child: BelajarHelloWorld(),
    );
  }
}