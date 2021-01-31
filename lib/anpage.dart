import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class anpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
          child: Hero(
            tag: "go",
            child: Icon(
              Icons.access_alarm,
              size: 250,
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }
}
