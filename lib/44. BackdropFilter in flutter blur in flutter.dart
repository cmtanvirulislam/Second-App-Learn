import 'dart:ui';

import 'package:flutter/material.dart';

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
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                height: 200,
                width: 300,
                color: Colors.purple,
              ),
              BackdropFilter(filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),child: Container(
                color: Colors.white.withOpacity(0.3),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
