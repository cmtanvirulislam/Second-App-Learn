import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController conpage= PageController(
    initialPage: 0,
  )
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          controller: conpage,
          children: <Widget>[
            page1,
            page2,
            page3,
          ],
        ),
      ),
    );
  }
}
