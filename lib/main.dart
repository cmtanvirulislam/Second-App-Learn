import 'package:flutter/material.dart';
import 'package:secondapp/17%20Pageview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime _dateTime;
  TimeOfDay _timeOfDay;
  getDate() async {
    DateTime date = await showDatePicker(
        context: context,
        initialDate: DateTime(DateTime.now().year),
        firstDate: DateTime(DateTime.now().year-20),
        lastDate: DateTime(DateTime.now().year+10));
    setState(() {
      _dateTime=date;
    });
  }
  getTime() async {
    TimeOfDay time= await showTimePicker(context: context, initialTime: TimeOfDay.now());
    setState(() {
      _timeOfDay=time;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _dateTime==null?Text("Choose Date"):Text("Date: ${_dateTime.year},${_dateTime.month},${_dateTime.day}",style: TextStyle(fontSize: 50),),
            _timeOfDay==null?Text("Choose Time"):Text("Time: ${_timeOfDay.hour}-${_timeOfDay.minute}",style: TextStyle(fontSize: 50),),
            RaisedButton(onPressed: () {
              getDate();
            }),
            RaisedButton(onPressed: () {
              getTime();
            }),
          ],
        ),
      ),
    ));
  }
}
