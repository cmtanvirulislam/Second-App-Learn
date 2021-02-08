import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:secondapp/data.dart';

void main() => runApp(
    ChangeNotifierProvider(builder: (context) => Data(), child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageTest1(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:secondapp/data.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Data(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final providerdata = Provider.of<Data>(context);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                providerdata.value.toString(),
                style: TextStyle(fontSize: 100),
              ),
              RaisedButton(
                onPressed: () {
                  providerdata.Increment();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

