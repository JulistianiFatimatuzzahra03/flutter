import 'package:belajar_flutter/main.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20), 
      alignment: Alignment.center,
      // transform: Matrix4.rotationZ(0.1),
      decoration: BoxDecoration(
        // color: Colors.blueGrey,
       gradient: RadialGradient(
        colors: [Colors.black87, Colors.deepPurpleAccent, Colors.orange],
      ),
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.black, width: 3)
      ),
      child: Container(
      height: 900,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20), 
      alignment: Alignment.center,
      // transform: Matrix4.rotationZ(0.1),
      decoration: BoxDecoration(
        // color: Colors.blueGrey,
       gradient: RadialGradient(
        colors: [Color.fromARGB(255, 0, 0, 0), Color.fromARGB(255, 77, 234, 255), Color.fromARGB(255, 0, 255, 85)],
      ),
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.black, width: 3)
      ),
       child: Container(
      height: 900,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20), 
      alignment: Alignment.center,
      // transform: Matrix4.rotationZ(0.1),
      decoration: BoxDecoration(
        // color: Colors.blueGrey,
       gradient: RadialGradient(
        colors: [Colors.black87, Color.fromARGB(255, 202, 255, 77), Color.fromARGB(166, 123, 255, 0)],
      ),
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.black, width: 3)
      ),
      child: Container(
      height: 900,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20), 
      alignment: Alignment.center,
      // transform: Matrix4.rotationZ(0.1),
      decoration: BoxDecoration(
        // color: Colors.blueGrey,
       gradient: RadialGradient(
        colors: [Colors.black87, Color.fromARGB(255, 233, 250, 192), Color.fromARGB(166, 194, 255, 136)],
      ),
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.black, width: 3)
      ),
      child: BelajarHelloWorld(),
      )
      ),
      ),
    );
  }
}