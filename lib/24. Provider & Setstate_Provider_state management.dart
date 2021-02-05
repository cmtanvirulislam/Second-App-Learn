import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageTest1(),
    );
  }
}
class HomePageTest1 extends StatefulWidget {
  @override
  _HomePageTest1State createState() => _HomePageTest1State();
}

class _HomePageTest1State extends State<HomePageTest1> {
  int value= 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(value.toString(), style: TextStyle(fontSize: 100),)
          ],
        ),
      ),
    );
  }
}

