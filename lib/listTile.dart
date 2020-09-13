import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sending"),
          leading: Icon(Icons.list),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 25.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  size: 25.0,
                ),
              ),
            )
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.pink,
                  Colors.purple
                ]
              )
            ),
          )
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text("Awwal"),
              subtitle: Text("123324532"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRUkIq9DjIgYbGgIenjkjA-tkr3mN1_bBnsEw&usqp=CAU"),
              ),
              trailing: IconButton(
                icon: Icon(Icons.more_vert), 
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => KikiPage()),
                  );
                }
              ),
              onTap: () {
                print("Awwal's Page");
              },
            ),
            ListTile(
              title: Text("Rafi"),
              subtitle: Text("123324532"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRaek5xjdMHJvD6vEPkI0SoKMUn5DHPr0XDBg&usqp=CAU"),
              ),
              trailing: IconButton(
                icon: Icon(Icons.more_vert), 
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => KikiPage()),
                  );
                }
              ),
              onTap: () {
                print("Rafi's Page");
              },
            ),
            ListTile(
              title: Text("Aziz"),
              subtitle: Text("123324532"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSPjh7eDCUnckA4KPlEsR_HbdJM9oQe57B4GA&usqp=CAU"),
              ),
              trailing: IconButton(
                icon: Icon(Icons.more_vert), 
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => KikiPage()),
                  );
                }
              ),
              onTap: () {
                print("Aziz's Page");
              },
            ),
            ListTile(
              title: Text("Kiki"),
              subtitle: Text("123324532"),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSPiByyElB7nUqPK9x4gGRo842YLBTcD0rhMQ&usqp=CAU"),
                ),
              trailing: IconButton(
                icon: Icon(Icons.more_vert), 
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => KikiPage()),
                  );
                }
              ),
              onTap: () {
                print("Kiki's Page");
              },
            ),
          ],
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.chat),
        //       title: Text('Chat'),
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.history),
        //       title: Text('Camera'),
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.settings),
        //       title: Text('Settings'),
        //     ),  
        //   ]
        // ),
        floatingActionButton: FloatingActionButton(onPressed: null)
      )
    );
  }
}

class KikiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail')
      ),
      body: Container(
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
    );
  }
}