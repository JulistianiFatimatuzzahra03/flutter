import 'package:flutter/material.dart';

class OutputLogin extends StatelessWidget {
  final String email, password;
  OutputLogin(
    {Key? key,
    required this.email,
    required this.password,})
    : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Container(
        child: Column(
          children: [
            Text("email : $email"),
            Text("Password : $password"),
          ],
        ),
      );
    }
}