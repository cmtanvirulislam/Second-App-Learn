import 'package:flutter/material.dart';
import 'package:secondapp/17%20Pageview.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Dismissible(
          key: ValueKey("abc"),
          secondaryBackground: Container(
            color: Colors.deepOrange,
            child: Icon(Icons.delete, size: 60,),
          ),
          background: Container(
            color: Colors.blue,
            child: Icon(Icons.delete, size: 60,),
          ),
          child: ListTile(
              title: Text("Do you Love someone?"),
              subtitle: Text("If you love someone then focus your career more"),
              trailing: Icon(Icons.mail)
          ),
        ),
      ),
    );
  }
}
