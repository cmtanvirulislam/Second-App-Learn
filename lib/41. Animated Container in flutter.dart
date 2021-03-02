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
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 4),
          height: _value==false?150:350,
          width: _value==false?150:300,
          color: Colors.blue,
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          _value=!_value;
        });
      }),
    );
  }
}
