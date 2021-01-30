import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:secondapp/page1.dart';
import 'package:secondapp/page2.dart';
import 'package:secondapp/page3.dart';
import 'package:secondapp/page4.dart';
import 'package:secondapp/page5.dart';

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
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          scrollDirection: Axis.vertical,
          controller: conpage,
          children: <Widget>[
            page1(),
            page2(),
            page3(),
            page4(),
            page5(),
          ],
        ),
      ),
    );
  }
}
