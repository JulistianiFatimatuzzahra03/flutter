import 'package:flutter/material.dart';

class ListView4 extends StatelessWidget {

  final List<String> img = <String>['assets/img/marvel.jpg', 'assets/img/ma', 'assets/img/bp2.jpg'];
  
  Widget build(BuildContext context) {
  return Container(
    color: Color.fromARGB(255, 37, 36, 36),
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(10),
    height: 150,
    width: double.infinity,
    child: ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: img.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 100,
          color: Color.fromARGB(255, 202, 17, 26),
          child: Center(child: Image.asset('${img[index]}', height: 150, width: 100,)),
        );
      }
    ),
  );
}
}