// import 'package:belajar_flutter/coba_widget.dart';
// import 'package:belajar_flutter/latihan_row.dart';
import 'dart:js';

import 'package:belajar_flutter/grid_builder.dart';
import 'package:belajar_flutter/grid_count.dart';
import 'package:belajar_flutter/gridview.dart';
import 'package:belajar_flutter/latihan1_widget.dart';
import 'package:belajar_flutter/listview1_widget.dart';
import 'package:belajar_flutter/screens/flora_screen.dart';
import 'package:belajar_flutter/screens/form_screen.dart';
import 'package:belajar_flutter/screens/list_flora.dart';
import 'package:belajar_flutter/screens/login.dart';
import 'package:belajar_flutter/screens/output_screen.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'rowcolumn.dart';
// import 'column_widget.dart';
// import 'listview1_widget.dart';
// import 'listview2_widget.dart';
// import 'listview3_widget.dart';
// import 'listview4_widget.dart';
// import 'coba_widget.dart';
// import 'gridview.dart';
// import 'grid_count.dart';
// import 'grid_builder.dart';
// import 'latihan_row.dart';
// import 'latihan1_widget.dart';
import 'navigator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ini Project Flutter Pertamaku",
      home: CheckAuth(),
    );
  }
}

class CheckAuth extends StatefulWidget {
  CheckAuth({super.key});
  @override
  _CheckAuthState createState() => _CheckAuthState();
}

class _CheckAuthState extends State<CheckAuth> {
  bool isAuth = false;

  @override
  void initState() {
    super.initState();
    _checkIfLoggedIn();
  }

  void _checkIfLoggedIn() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    if (token != null) {
      if (mounted) {
        setState(() {
          isAuth = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (isAuth) {
      child = BottomNavigationMenu();
    } else {
      child = LoginScreen();
    }

    return Scaffold(
      body: child,
    );
  }
}

class BottomNavigationMenu extends StatefulWidget {
  const BottomNavigationMenu({super.key});

  @override
  State<BottomNavigationMenu> createState() => _BottomNavigationMenuState();
}

class _BottomNavigationMenuState extends State<BottomNavigationMenu> {
  @override
  int _selectedTab = 0;

  List _pages = [
    cobainGrid(),
    BelajarForm(),
    LatihanForm(),
    LoginScreen()
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_stream), label: "Wisata"),
          BottomNavigationBarItem(
              icon: Icon(Icons.payment), label: "Beli Tiket"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: "Profil"),
        ],
      ),
    );
  }
}