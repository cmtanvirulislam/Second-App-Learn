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
  bool _value=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Center(
          child: AnimatedCrossFade(firstChild: Container(
            height: 200,
            color: Colors.deepOrange,
            child: Center(child: RaisedButton (onPressed: () {
              setState(() {
                _value=false;
              });
            })),
          ),
              secondChild: Center(child: Text("Tanvir Love Sadia",style: TextStyle(fontSize: 50),)),
              crossFadeState: _value?CrossFadeState.showFirst:CrossFadeState.showSecond,
              duration: Duration(seconds: 1)),
        )],
      ),
    );
  }
}
