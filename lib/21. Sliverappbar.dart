import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 150,
              backgroundColor: Colors.teal,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Tanviraas Collects"),
              ),
            ),
            SliverList(delegate: SliverChildListDelegate(<Widget>[
              addDetails("Love Sadia", "I love her"),
              addDetails("Miss Sadia", "I Miss her"),
              addDetails("Kiss Sadia", "I Kiss her"),
              addDetails("Fuck Sadia", "I Fuck her"),
              addDetails("Carry Sadia", "I Carry her"),
              addDetails("Laugh Sadia", "I Laugh her"),
              addDetails("Hug Sadia", "I Hug her"),
              addDetails("Need Sadia", "I Need her"),
              addDetails("Wait Sadia", "I Wait for her"),
            ]))
          ],
        ),
      ),
    );
  }
}

Widget addDetails(
String name,
String details,
)
{
 return ListTile(
  title: Text(name),
  subtitle: Text(details),
  leading: CircleAvatar(
    child: Text(name[0]),
    ),
  );
}