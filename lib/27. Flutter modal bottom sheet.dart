import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(onPressed: () {
          showModalBottomSheet(context: context, builder: (context){
            return Container(
              height: 250,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text("One"),
                    subtitle: Text("This is One"),
                    trailing: Icon(Icons.access_alarm),
                  ),
                  ListTile(
                    title: Text("Two"),
                    subtitle: Text("This is Two"),
                    trailing: Icon(Icons.access_alarm),
                  ),
                  ListTile(
                    title: Text("Three"),
                    subtitle: Text("This is Three"),
                    trailing: Icon(Icons.access_alarm),
                  ),
                ],
              ),
            );
          });
        }, child: Text("Click Me"),),
      ),
    );
  }
}

