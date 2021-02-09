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
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: (){
            showDialog(context: context,
                builder: (context){
                  return AlertDialog(
                    title: Text("Alert"),
                    content: Text("This is a simple Alert Dialog"),
                    actions: <Widget>[
                      RaisedButton(onPressed: (){Navigator.pop(context);}, child: Text("Ok"),)
                    ],
                  );
                });
          }, child: Text("Click"),
        ),
      ),
    );
  }
}
