import 'package:belajar_flutter/main.dart';
import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Belajar Row & Column",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Belajar Row  & Column"),
        ),
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 300,
                width: 300,
                color: Colors.black26,
                child: FlutterLogo(),
                margin  : EdgeInsets.all(10),
                decoration: BoxDecoration()
              ),
              Container(
                height: 300,
                width: 300,
                color: Colors.redAccent,
                child: FlutterLogo(),
                margin: EdgeInsets.all(10),
              ),
              
                ],
              )
            
          ),
        ),
       
    );
  }
}
