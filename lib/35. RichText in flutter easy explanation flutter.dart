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
    return Scaffold(
      body: Center(
        child: RichText(
          text: TextSpan(
              text: "I want to give a Pharmacy Shop",
              style: TextStyle(fontSize: 20,color: Colors.green,fontStyle: FontStyle.italic),
              children: [
                TextSpan(
                    text: "Subscribe",
                    style: TextStyle(fontSize: 30, color: Colors.red))
              ]),
        ),
      ),
    );
  }
}
