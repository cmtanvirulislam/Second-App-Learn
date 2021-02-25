import 'package:flutter/material.dart';
class A extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Text("Never feel upset",style: TextStyle(fontSize: 30),),
      ),
    );
  }
}