import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Tooltip(message: "Container",
              child: Container(
                height: 200,
                color: Colors.deepOrange,
              ),
            ),

            IconButton(
              icon: Icon(Icons.dashboard),
              onPressed: (){},tooltip: 'Dashboard',
            )
          ],
        ),
      ),
    );
  }
}
