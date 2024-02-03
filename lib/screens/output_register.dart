import 'package:flutter/material.dart';

class OutputRegister extends StatelessWidget {
  final String nama, email, password;
  OutputRegister(
    {Key? key,
    required this.nama,
    required this.email,
    required this.password})
    : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Container(
        child: Column(
          children: [
            Text("nama : $nama"),
            Text("Jenis Kelamin : $email"),
             Text("Password : $password"),
          ],
        ),
      );
    }
}