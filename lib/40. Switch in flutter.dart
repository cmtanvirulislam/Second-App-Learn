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
  bool _value=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _value==false?Colors.deepOrange:Colors.blue,
      body: Center(
        child: Switch( value: _value, onChanged: (val) {
          setState(() {
            _value=val;
            print(_value);
          });
        },),
      ),
    );
  }
}
