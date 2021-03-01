import 'dart:math';

import 'package:flutter/material.dart';
import 'package:secondapp/17%20Pageview.dart';

void main(){
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
  var _value = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("I Love Sadia", style: TextStyle(fontSize: _value),),
          SizedBox( height: 50,),
          Slider(
              min: 10,
              max: 50,
              value: _value, onChanged: (value) {
            setState(() {
              _value =value;
              print (_value);
            });
          })
        ],
      ),
    );
  }
}
