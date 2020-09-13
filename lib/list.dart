import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List View Dan List Tile',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("List View"),
        ),
        body: ListView(
          children: <Widget>[
            Container (
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.map),
                title: Text('Map'),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.photo_album),
                title: Text('Album'),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone'),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.photo_album),
                title: Text('Album'),
              ),
            ),Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.accessible_forward),
                title: Text('Album'),
              ),
            ),Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.account_balance_wallet),
                title: Text('Album'),
              ),
            ),Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.add_box),
                title: Text('Album'),
              ),
            ),Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.add_circle_outline),
                title: Text('Album'),
              ),
            ),Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.airline_seat_flat),
                title: Text('Album'),
              ),
            ),Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.airline_seat_legroom_extra),
                title: Text('Album'),
              ),
            ),Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.airline_seat_recline_normal),
                title: Text('Album'),
              ),
            ),Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.airplay),
                title: Text('Album'),
              ),
            ),Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.alarm_add),
                title: Text('Album'),
              ),
            ),Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.album),
                title: Text('Album'),
              ),
            ),Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.alternate_email),
                title: Text('Album'),
              ),
            ),Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.archive),
                title: Text('Album'),
              ),
            ),Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.arrow_back_ios),
                title: Text('Album'),
              ),
            ),Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.arrow_downward),
                title: Text('Album'),
              ),
            ),Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.arrow_drop_up),
                title: Text('Album'),
              ),
            ),Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.arrow_right),
                title: Text('Album'),
              ),
            ),Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.aspect_ratio),
                title: Text('Album'),
              ),
            ),Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.assignment_ind),
                title: Text('Album'),
              ),
            ),Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.assignment_returned),
                title: Text('Album'),
              ),
            ),Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.atm),
                title: Text('Album'),
              ),
            ),Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.audiotrack),
                title: Text('Album'),
              ),
            ),Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.av_timer),
                title: Text('Album'),
              ),
            ),Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ListTile(
                leading: Icon(Icons.battery_alert),
                title: Text('Album'),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.accessible),
              title: Text('dadadada')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.accessible_forward),
              title: Text('sasasasa')
            ), 
          ]
        ),
      ),
    );
  }
}

  