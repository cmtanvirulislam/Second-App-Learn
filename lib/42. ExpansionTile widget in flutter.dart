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
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            ExpansionTile(
              title: Text("Sadia"),
              subtitle: Text("She is my Love"),
              leading: Icon(Icons.threed_rotation),
              trailing: Icon(Icons.arrow_downward),
              children: <Widget>[
                Container(
                  height: 200,
                  color: Colors.purple,
                )
              ],
            ),
            ExpansionTile(
              title: Text("Sadia"),
              subtitle: Text("She is my Love"),
              leading: Icon(Icons.threed_rotation),
              trailing: Icon(Icons.arrow_downward),
              children: <Widget>[
                Container(
                  height: 200,
                  color: Colors.purple,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
