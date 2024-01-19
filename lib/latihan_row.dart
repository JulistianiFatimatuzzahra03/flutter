import 'package:flutter/material.dart';

class LatihanRow extends StatelessWidget {
  
  @override
  Widget build(BuildContext) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Color.fromARGB(255, 96, 139, 109), Colors.black26]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 150,
            width: 500,
            color: Color.fromARGB(255, 12, 17, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Container(
                  child: Text("Home"),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [FlutterLogo(size: 200,), FlutterLogo(size: 200,)],
          ),
          Container(
            // height: 100,
            // width: 250,
            // color: Colors.grey,
          ),
          Container(
            height: 100,
            width: 250,
            color: Color.fromARGB(255, 56, 197, 131),
            child: Row(
              children: [
                  Image.network(
                "https://cdn.pixabay.com/photo/2017/02/23/13/05/avatar-2092113_960_720.png",
                fit: BoxFit.cover,
               )
              ],
            ),
          ),
          Container(
            height: 100,
            width: 250,
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Image.network(
                "data:image/jpeg;base64,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",
                fit: BoxFit.cover,                      
               ),
                Container(
                  color: Color.fromARGB(255, 42, 224, 72),
                  child: Text("Fatimatuzzahra"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}