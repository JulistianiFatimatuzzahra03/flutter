import 'package:flutter/material.dart';

import '../helper/size_helper.dart';

class DetailFloraScreen extends StatelessWidget{
  final String nama;
  final String asal;
  final String image;
  final String desc;
  
  DetailFloraScreen(
    {required this.nama, required this.asal, required this.image, required this.desc}
  );

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text("Detail"),
      backgroundColor: Colors.blueGrey.shade900,
    ),
    body: SafeArea(
      child: Container(
        height: double.infinity,
        width:  double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("../assets/img/belakang.png"),
            fit: BoxFit.cover, 
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 32,
            ),
            Center(
              child: Text(
                "$nama - $asal",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              height: displayHeight(context) * 0.25,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    width: displayWidth(context) * 0.95,
                    height: 360,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 236, 166, 86),
                          Color.fromARGB(66, 124, 67, 67),
                          Color.fromARGB(255, 224, 232, 240)
                        ],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "${desc}",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'DancingScript',
                        fontSize: 14,
                      ),
                    ),
                    
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

}