import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Pendaftaran",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  TextEditingController controllernama = new TextEditingController();
  TextEditingController controllerumur = new TextEditingController();

  void kirimData(){
    AlertDialog alertDialog = AlertDialog(
      content: Container(
        height: 200.0,
        child: Column(
          children: [
            Text("Nama Lengkap : ${controllernama.text}"),
            Text("Umur : ${controllerumur.text}"),
            RaisedButton(
              child: Text("OK"),
              onPressed: ()=>Navigator.pop(context),
            )
          ],
        ),
      ),
    );
    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.green[300],
                  Colors.orange[400]
                ]
              )
            ),
          ),
          title: Text("Rental Sepeda", style: TextStyle(fontSize: 25),),
          actions: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            )
          ],
        ),
      body: Container(
        margin: EdgeInsets.all(30.0),
        child: Column(
          children: [
            Center(
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRFnvacQ6J2Mv5tqI4xWXPHQtzs33C7fkNMCw&usqp=CAU", height: 100,)
            ),
            Text("Login Rental", style: TextStyle(fontSize: 40.0),),
            SizedBox(height: 50.0,),
            TextField(
              controller: controllernama,
              decoration: InputDecoration(
                hintText: "Nama",
                labelText: "Nama",
                icon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                )
              ),
              keyboardType: TextInputType.numberWithOptions(),
            ),
            SizedBox(height: 20,),
            TextField(
              // obscureText: true,
              controller: controllerumur,
              decoration: InputDecoration(
                hintText: "Umur",
                labelText: "Umur",
                // icon: Icon(Icons.lock_outline),
                suffixIcon: GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.visibility)
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0)
                )
              ),
              keyboardType: TextInputType.numberWithOptions(),
            ),
            RaisedButton(
              child: Text(
                "Kirim",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                kirimData();
              }
            ),
            FlatButton(
              onPressed: () {}, 
              child: Text("Forgot Password")
            )
          ],
        )
      ),
    );
  }
}