import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Con Column ROw',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container (
             padding: EdgeInsets.only(top: 40),
              alignment: Alignment.center,
              height: 120,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.purple, Colors.pink])
              ),
              child: Column( 
                children: [
                  Text('PELAJARAN IT', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                ]
              )
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 110,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRCIJZAS3RFKkO9K8eMFdD2yQHQudwqpFvWIQ&usqp=CAU', height: 60,),
                            Text('Android', style: TextStyle(fontSize: 14))
                          ],
                        ),
                      ),
                      Container(
                        height: 110,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRwRGnw0WxiaP_pOjrhvhPP8Qvymv6Gzb6EPQ&usqp=CAU', height: 60,),
                            Text('React JS', style: TextStyle(fontSize: 14))
                          ],
                        ),
                      ),
                      Container(
                        height: 110,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSSYXDgtUuX0KXITEzysyAq-gwLKRNalIEdUg&usqp=CAU', height: 60,),
                            Text('Bootstrap', style: TextStyle(fontSize: 14))
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 110,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQjfSx-We6pJo5R1Nax7gnNThbuF2pzOUg-EQ&usqp=CAU', height: 60,),
                            Text('Flutter', style: TextStyle(fontSize: 14))
                          ],
                        ),
                      ),
                      Container(
                        height: 110,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSs5h6IUv2BeDb-muNzHqMqXaMAixs3J8pyNA&usqp=CAU', height: 70,),
                            Text('Laravel', style: TextStyle(fontSize: 14))
                          ],
                        ),
                      ),
                      Container(
                        height: 110,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcoBpFh8JJfCjCxq6dyIJOjCEpSpe26TJybQ&usqp=CAU', height: 70,),
                            Text('Database', style: TextStyle(fontSize: 14))
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 110,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRusp48zqcxXcgwOLeqT5Mpho30XYHd8txr3g&usqp=CAU', height: 70,),
                            Text('Phyton', style: TextStyle(fontSize: 14))
                          ],
                        ),
                      ),
                      SizedBox(height: 110, width: 100,),
                      SizedBox(height: 110, width: 100,),
                    ],
                  ),
                ],
              ),
            )
          ]
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Account')
            ),    
          ]),
      ),
    );
  }
}