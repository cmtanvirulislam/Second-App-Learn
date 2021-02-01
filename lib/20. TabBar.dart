import 'package:flutter/material.dart';
import 'package:secondapp/15%20CardAndGridview.dart';
import 'package:secondapp/three.dart';
import 'package:secondapp/two.dart';

import 'four.dart';
import 'one.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.camera),),
                Tab(icon: Icon(Icons.radio),),
                Tab(icon: Icon(Icons.alarm),),
                Tab(icon: Icon(Icons.mail),),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              one(),
              two(),
              three(),
              four()
            ],
          ),
        ),
      ),
    );
  }
}
