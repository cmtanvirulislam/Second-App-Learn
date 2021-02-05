import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageTest1(),
    );
  }
}
class HomePageTest1 extends StatefulWidget {
  @override
  _HomePageTest1State createState() => _HomePageTest1State();
}

class _HomePageTest1State extends State<HomePageTest1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

      ),
    );
  }
}

