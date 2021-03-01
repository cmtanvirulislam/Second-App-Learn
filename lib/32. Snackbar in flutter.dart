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
        child: Builder(
          builder: (BuildContext con) {
            return RaisedButton(
              onPressed: () {
                Scaffold.of(con).showSnackBar(SnackBar(
                  content: Text("I am Tanvir. I like to work hard"),
                  duration: Duration(seconds: 10),
                  action: SnackBarAction(label: "ok", onPressed: () {}),
                ));
              },
              child: Text("Click"),
            );
          },
        ),
      ),
    );
  }
}
