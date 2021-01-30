import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
                flex: 7,
                child: Container(color: Colors.deepPurple,)),
            Expanded(
                flex: 1,
                child: Container(color: Colors.red,)),
            Expanded(
                flex: 1,
                child: Container(color: Colors.cyanAccent,)),
            Expanded(
                flex: 1,
                child: Container(color: Colors.purple,)),
          ],
        ),
      ),
    );
  }
}
