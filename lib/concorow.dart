import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Con Column Row',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column (
                children: <Widget>[
                  Text('Selamat Datang Di', style: TextStyle(fontSize: 15),),
                  Text('Aplikasi Mobile', style: TextStyle(fontSize: 15),),
                  Text('SMK MADINATULQURAN', style: TextStyle(fontWeight: FontWeight.bold),),
                ]
              ),
            ]
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: Row (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('28 Agustus 2020'),
                Text('5 Muharram 1442'),
              ]
            )
          ),
        ),
        body: Column(
          children: <Widget> [
            SizedBox(height: 100),
            Center(
              child: Row (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 100.0,
                    height: 100.0,
                    child: Column (
                      children: <Widget> [
                        Center (
                          child: Image.network('https://i.pinimg.com/originals/ec/39/7d/ec397d54e28da126827f37d4c2856511.jpg', height: 70),
                        ),
                        Text('Gambar 1')
                      ]
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.green,width: 5.0)
                    ),
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    child: Column (
                      children: <Widget> [
                        Center (
                          child: Image.network('https://i.pinimg.com/originals/ec/39/7d/ec397d54e28da126827f37d4c2856511.jpg', height: 70),
                        ),
                        Text('Gambar 2')
                      ]
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.green,width: 5.0)
                    ),
                  ),
                ]
              ),
            ),
            SizedBox(height: 50),
            Row (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 100.0,
                    height: 100.0,
                    child: Column (
                      children: <Widget> [
                        Center (
                          child: Image.network('https://i.pinimg.com/originals/ec/39/7d/ec397d54e28da126827f37d4c2856511.jpg', height: 70),
                        ),
                        Text('Gambar 3')
                      ]
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.green,width: 5.0)
                    ),
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    child: Column (
                      children: <Widget> [
                        Center (
                          child: Image.network('https://i.pinimg.com/originals/ec/39/7d/ec397d54e28da126827f37d4c2856511.jpg', height: 70),
                        ),
                        Text('Gambar 4')
                      ]
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.green,width: 5.0)
                    ),
                  ),
                ]
              )
          ]
        ),
      ),
    );
  }
}