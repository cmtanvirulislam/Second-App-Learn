import 'dart:math';

import 'package:flutter/material.dart';
import 'package:secondapp/17%20Pageview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Transform.scale(
          scale: 1.5,
        child: Container(
        height: 200,
          width: 200,
          color: Colors.pink,
        ),
      ),
      ),
    ));
  }
}
