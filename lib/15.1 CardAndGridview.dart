import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secondapp/14%20LiquidSwipeInLiquidAnimation.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.count(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                height: 200,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 200,
                width: 100,
                color: Colors.yellow,
              ),
              Container(
                height: 200,
                width: 100,
                color: Colors.green,
              ),
              Container(
                height: 200,
                width: 100,
                color: Colors.brown,
                ),
              Container(
                height: 200,
                width: 100,
                color: Colors.deepPurpleAccent,
              ),
              Container(
                height: 200,
                width: 100,
                color: Colors.deepPurple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
