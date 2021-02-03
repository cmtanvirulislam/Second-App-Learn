import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Chowdhury Mohammad Tanvir Ul Islam",
          style: TextStyle(
            fontFamily: 'Segoe UI',
            fontSize: 20.0,
            color: const Color(0xFF040404),
          ),
        ),
      ),
    );
  }
}
