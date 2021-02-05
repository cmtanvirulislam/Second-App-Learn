import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:secondapp/data.dart';


void main() => runApp(ChangeNotifierProvider(
      builder: (context) => Data(),
      child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
    final providerdata= Provider.of<Data>(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text(providerdata.value.toString(), style: TextStyle(fontSize: 100),),
            RaisedButton(
                onPressed: (){
                  providerdata.Increment();
                },
            )
          ],
        ),
      ),
    );
  }
}

