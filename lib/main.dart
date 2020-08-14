import 'package:flutter/material.dart';
import 'package:suministroshoreb/Login.dart';
import 'package:suministroshoreb/BotomMenu.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Login()
    );
  }
}

