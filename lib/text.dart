import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apk Test',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("apa ya"),
        ),
        body: Center(
          child: Text("Coba-Coba APk pertama",
                     style: TextStyle(fontSize: 24, color: Colors.blueGrey),),
        ),
      ),
    );
  }
}

  