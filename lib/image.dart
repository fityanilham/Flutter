import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apk Test',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("apa ya"),
        ),
        body: Column(
          children: <Widget> [
            Center(
              child: Image.network('https://i.pinimg.com/originals/ec/39/7d/ec397d54e28da126827f37d4c2856511.jpg',),
            ),
            Text("Gambar Date Masamune", style: TextStyle(color: Colors.white),),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.network('https://lh3.googleusercontent.com/ex1163BP1BK8lSJrkH2bdqcbNOQ2RnVLP7hPF62hWaUDaQEAyRkXeatHLm1P3-9cxeIu', height: 70),
                Icon(Icons.comment, color: Colors.white),
              ]
            )
          ]
        )
      ),
    );
  }
}