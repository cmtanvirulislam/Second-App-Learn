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
  bool _value= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_value==false? "Tanvir":"Sadia",style: TextStyle(fontSize: 60),),
            Checkbox(value: _value, onChanged: (bool val){
              setState(() {
                _value=val;
                print(_value);
              });
            })
          ],
        ),
      ),
    );
  }
}
