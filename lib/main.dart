import 'package:flutter/material.dart';
// import 'rowcolumn.dart';
// import 'column_widget.dart';
// import 'listview1_widget.dart';
// import 'listview2_widget.dart';
// import 'listview3_widget.dart';
import 'listview4_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// this 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Belajar Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fzahra"),
          backgroundColor: Color.fromARGB(255, 7, 255, 81),
          centerTitle: true,
        ),
        body: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          child: ListView4(),
        ),
        
      ),
    );
  }
  }

class BelajarHelloWorld extends StatelessWidget {
  const BelajarHelloWorld({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextWidget();
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "kls 12" ,
      style: TextStyle(
        fontSize: 24, 
      fontWeight: FontWeight.bold ,
      color: Colors.green[400],
      ),
      ),
      );
  }
}