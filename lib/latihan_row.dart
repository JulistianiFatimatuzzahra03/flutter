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
                "https://cdn.pixabay.com/photo/2017/02/23/13/05/avatar-2092113_960_720.png",
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