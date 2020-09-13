import 'package:flutter/material.dart';

final name = [
  "Arrizal",
  "Dulziz",
  "Ravy",
  "Awwal",
  "Abah tua",
  "Jawir",
];

final number = [
  "+62 0895602247455",
  "+62 0895062457455",
  "+62 0895603211255",
  "+62 0895345357455",
  "+62 0898764247455",
  "+62 0895676247455",
];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Contact',
        home: MyContacts(),
        // initialRoute: '/',
        // routes: {
        //   '/contact': (context) => ContactPage()
        // },
    );
  }
}

class MyContacts extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[900],
        title: Text('Contact'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                labelText: "Search..",
                suffixIcon: GestureDetector(
                  onTap: () {
                    // Do something
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0)
                )
              ),
              keyboardType: TextInputType.numberWithOptions(),
            ),
            ListView.builder(
              itemCount: name.length,
              itemBuilder:(context,index){
                return ListTile(
                  title: Text(name[index]),
                  subtitle: Text(number[index]),
                  leading: CircleAvatar(
                      backgroundColor: Colors.lightBlue,
                      backgroundImage: NetworkImage(
                          'https://cdn.iconscout.com/icon/free/png-512/avatar-372-456324.png')),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: (){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => ContactPage(name:name[index], number:number[index])),
                    );
                    // Navigator.pushNamed(context, '/contact');
                  },
                );
              },
            ),
          ],
        )
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.contact_phone),
      //       title: Text(''),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.dialpad),
      //       title: Text(''),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.call),
      //       title: Text(''),
      //     ),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.format_list_bulleted),
        backgroundColor: Colors.green[300],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat
    );
  }
}

class ContactPage extends StatelessWidget {
  final String name;
  final String number;
  
  ContactPage({Key key, @required this.name, this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
        body: Center(
            child: Container(
              margin: EdgeInsets.only(top: 50),
              child: Column(
                children: <Widget>[
                  Image.network('https://cdn.iconscout.com/icon/free/png-512/avatar-372-456324.png', height: 150),
                  Text(name),
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(name , style: TextStyle(fontSize: 30)),
                        SizedBox(height: 10),
                        Text(number, style: TextStyle(fontSize: 30)),
                      ],
                    ),
                  ),
                ],
              ),
            )
        )
    );
  }
}