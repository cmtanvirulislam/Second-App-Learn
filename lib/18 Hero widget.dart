import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secondapp/anpage.dart';
void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 100,
          child: GestureDetector(
            child: Hero(
              tag: "go",
              child: Icon(
                Icons.access_alarm,
                size: 80,
                color: Colors.cyan,
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => anpage()));
            },
          ),
        ),
      ),
    );
  }
}


