import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:secondapp/a.dart';
import 'package:secondapp/b.dart';
import 'package:secondapp/c.dart';
import 'package:secondapp/d.dart';
import 'package:secondapp/e.dart';



void main(){
  runApp(MaterialApp(home: BottomNavBar()));
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var _page = 0;
  final pages = [A(), B(), C(), D(), E()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.redAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index){
          setState(() {
            _page = index;
          });
        },
        items: [
          Icon(Icons.ac_unit),
          Icon(Icons.accessible),
          Icon(Icons.access_alarms),
          Icon(Icons.tab_rounded),
          Icon(Icons.offline_bolt),
        ],
      ),
      body: pages[_page],
    );
  }
}

