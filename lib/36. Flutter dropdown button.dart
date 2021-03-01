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
  var selected = "Choose";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(selected, style: TextStyle(fontSize: 60),),
            DropdownButton(
                iconSize: 80,
                items: [
                  DropdownMenuItem(value: "tanvir", child: Text("Tanvir")),
                  DropdownMenuItem(value: "sadia", child: Text("Sadia")),
                ], onChanged: (val) {
              setState(() {
                selected = val;
              });
            })
          ],
        ),
      ),
    );
  }
}
