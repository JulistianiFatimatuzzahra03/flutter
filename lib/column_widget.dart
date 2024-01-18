import 'package:flutter/material.dart';

class ColummnWidget extends StatelessWidget {
  const ColummnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Color.fromARGB(255, 54, 244, 165),
              child: FlutterLogo(
                size: 60,
              )
            ),
            Container(
              color: Colors.red,
              child: FlutterLogo(
                size: 60,
              ),
            ),
              Container(
              color: Colors.red,
              child: FlutterLogo(
                size: 60,
              ),
            ), 
          ],
        ),
      ],
        );
  }
  
}
