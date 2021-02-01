import 'package:flutter/material.dart';
import 'package:secondapp/four.dart';
import 'package:secondapp/three.dart';
import 'package:secondapp/two.dart';

import 'five.dart';
import 'one.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex=0;
  final pages= [
    one(),
    two(),
    three(),
    four(),
    five()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: currentIndex,
      items: [
      BottomNavigationBarItem(
        backgroundColor: Colors.redAccent,
          icon: Icon((Icons.message)),
          // ignore: deprecated_member_use
          title: Text("Massage")
          ),
      BottomNavigationBarItem(
          icon: Icon((Icons.call)),
          // ignore: deprecated_member_use
          title: Text("Call")
      ),
      BottomNavigationBarItem(
          icon: Icon((Icons.radio)),
          // ignore: deprecated_member_use
          title: Text("Radio")
      ),
      BottomNavigationBarItem(
          icon: Icon((Icons.mail)),
          // ignore: deprecated_member_use
          title: Text("E-mail")
      ),
      BottomNavigationBarItem(
          icon: Icon((Icons.camera)),
          // ignore: deprecated_member_use
          title: Text("Camera")
      ),
       ],
      onTap: (index){
        setState(() {
          currentIndex=index;
        });
      },

    ),
      body: pages[currentIndex]
    );
  }
}
