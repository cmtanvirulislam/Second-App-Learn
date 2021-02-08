import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'dart:io';
import 'dart:async';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:image_picker/image_picker.dart';

void main() {
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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File ImageCollect;
  Future CameraImage() async{
    var image= await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      ImageCollect= image;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.blue,
            child: ImageCollect==null? Center(child: Text("No Image Selected")):Image.file(ImageCollect),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(onPressed: (){
                CameraImage();
              }, child: Icon(Icons.camera),),
              SizedBox(width: 20,),
              FloatingActionButton(onPressed: (){}, child: Icon(Icons.photo_library),),
            ],
          )
        ],
      ),
    );
  }
}

