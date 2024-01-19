import 'package:belajar_flutter/main.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext) {
    return Center(
      child: Container(
      color: Colors.green,
      width: 250,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.home,
              size: 28,
            ),Text("Home")
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.call,
              size: 28,
            ),Text("Call")
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.share,
              size: 28,
            ),Text("Share")
          ],
        ),
        ],
      ),
      ),
    );
  }

}