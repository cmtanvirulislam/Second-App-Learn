import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        child: RaisedButton(onPressed: (){
          showDialog(context: context,
              builder: (context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.all(Radius.circular(20))
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Container(
                        height: 250,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                              new Text("Alert Dialog", style: TextStyle(
                                  fontFamily: "Segoe UI",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25,
                                  color: Colors.black
                              ),),
                              SizedBox(
                                height: 10,
                              ),
                              new Text("Almost 6 years of experience in IT job with a Bachelor’s of Science in Computer Science and Engineering. I am certified as an Oracle Autonomous Database Cloud 2019 Certified Specialist, Oracle Cloud Infrastructure 2019 Certified Cloud Operations Associate, Oracle Database 11g Administrator Certified Professional. I am a quick learner, dedicated to providing quality work and looking to increase my skills and knowledge in the IT field.", style: TextStyle(
                                  fontFamily: "Segoe UI",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 11,
                                  color: Colors.black
                              ),)
                            ],
                          ),
                        ),
                      ),
                      Positioned(top: -60, child: CircleAvatar(
                        radius: 50,
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            child: Image.asset("pictures/sadia.JPG")),
                      ))
                    ],
                  ),
                );
              });
        },),
      ),
    );
  }
}
