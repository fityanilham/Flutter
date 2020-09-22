// import 'dart:async';

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     title: "Pendaftaran",
//     home: MyApp(),
//   ));
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {

//   final formKey = GlobalKey<FormState>();
//   RegExp numvalid = RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$');
//   RegExp mailvalid = RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()11[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  
//   TextEditingController nama = new TextEditingController();

//   TextEditingController telpon = new TextEditingController();
//   get number => TextEditingController();
//   List areas = ['201', '202', '203' , '204' , '205'];
//   String area;

//   TextEditingController alamat = new TextEditingController();
//   TextEditingController kota = new TextEditingController();
//   List negaras = ["Indonesai", "Jepang", "Malaysia"];
//   String negara = "";
//   TextEditingController zip = new TextEditingController();

//   TextEditingController email = new TextEditingController();

//   TextEditingController day = new TextEditingController();

//   void kirimData() {

//     AlertDialog alertDialog = AlertDialog(
//       content: Container(
//         height: 500.0,
//         child: Column(
//           children: [
//             Text("Nama Lengkap : ${nama.text}"),
//             Text("Telpon : ${telpon.text}"),
//             Text("Alamat : ${alamat.text}"),
//             Text("Kota : ${kota.text}"),
//             Text("Zip : ${zip.text}"),
//             Text("Email : ${email.text}"),
//             Text("Birthday : ${day.text}"),
//             Text("Negara : ${negara}"),
//             Text("Area : ${area}"),
//             SizedBox(height: 55,),
//             RaisedButton(
//               child: Text("OK"),
//               onPressed: ()=>Navigator.pop(context),
//             )
//           ],
//         ),
//       ),
//     );
//     showDialog(context: context, child: alertDialog);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         key: formKey,
//         children: [
//           Container(
//             margin: EdgeInsets.all(30.0),
//             child: Column(
//               children: [
//                 SizedBox(height: 30,),
//                 Text("Form Pendaftran", style: TextStyle(fontSize: 40.0),),
//                 SizedBox(height: 30.0,),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Nama",
//                     labelText: "Nama",
//                     icon: Icon(Icons.person),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(30.0),
//                     )
//                   ),
//                   controller: nama,
//                   validator: (String value) {
//                     if (value.isEmpty) {
//                       return 'Nama Lengkap Harus Diisi';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 20,),
//                 Row(
//                   children: [
//                     Container(
//                       width: 250,
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           hintText: "Telpon",
//                           labelText: "Telpon",
//                           icon: Icon(Icons.call),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30.0)
//                           )
//                         ),
//                         keyboardType: TextInputType.numberWithOptions(),
//                         controller: telpon,
//                         validator: (String value){
//                           if(value.isEmpty || value == null){
//                             return 'Masukkan Angka';
//                           } else if(!(numvalid.hasMatch(value))) {
//                             return 'Harus Angka';
//                           }
//                           return null;
//                         },
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(left: 10),
//                       // width: 160,
//                       child: DropdownButton(
//                         hint: Text("Area"),
//                         value: area,
//                         items: areas.map((e) {
//                           return DropdownMenuItem(
//                             child: Text(e),
//                             value: e,
//                           );
//                         }).toList(),
//                         onChanged: (e) {
//                           setState(() {
//                             area = e;
//                           });
//                         }
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20,),
//                 TextField(
//                   controller: alamat,
//                   decoration: InputDecoration(
//                     hintText: "Alamat",
//                     labelText: "Alamat",
//                     icon: Icon(Icons.add_location),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(30.0)
//                     )
//                   ),
//                 ),
//                 SizedBox(height: 10,),
//                 Padding(padding: EdgeInsets.only(right: 50)),
//                 Container(
//                   margin: EdgeInsets.only(left: 40),
//                   child: TextField(
//                   controller: kota,
//                     decoration: InputDecoration(
//                       hintText: "kota",
//                       labelText: "kota",
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30.0)
//                       )
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10,),
//                 Row(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(left: 45),
//                       child: DropdownButton(
//                         hint: Text("Negara"),
//                         value: negara,
//                         items: negaras.map((e) {
//                           return DropdownMenuItem(
//                             child: Text(e),
//                             value: e,
//                           );
//                         }).toList(),
//                         onChanged: (e) {
//                           setState(() {
//                             negara = e;
//                           });
//                         }
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(left: 80),
//                       width: 160,
//                       child: TextField(
//                         controller: zip,
//                         decoration: InputDecoration(
//                           hintText: "Zip",
//                           labelText: "Zip",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30.0)
//                           )
//                         ),
//                         keyboardType: TextInputType.numberWithOptions(),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20,),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Email",
//                     labelText: "Email",
//                     icon: Icon(Icons.email),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(30.0),
//                     )
//                   ),
//                   controller: email,
//                   validator: (String value){
//                     if(value.isEmpty){
//                       return 'Masukkan Email';
//                     } else if(!(mailvalid.hasMatch(value))){
//                       return 'Masukkan Email dengan Benar!';
//                     }
//                     return null;
//                   },
//                   keyboardType: TextInputType.emailAddress,
//                 ),
//                 SizedBox(height: 20,),
//                 TextField(
//                   controller: day,
//                   decoration: InputDecoration(
//                     hintText: "Birthday",
//                     labelText: "Birthday",
//                     icon: Icon(Icons.email),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(30.0),
//                     )
//                   ),
//                   keyboardType: TextInputType.datetime,
//                 ),
//                 SizedBox(height: 50,),
//                 RaisedButton(
//                   child: Text(
//                     "Kirim",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   color: Colors.blue,
//                   onPressed: () {
//                     if (formKey.currentState.validate()) {}
//                     return false;
//                     kirimData();
//                   }
//                 ),
//               ],
//             )
//           ),
//         ],
//       )
//     );
//   }
// }






import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        title: "Form Pendaftaran",
        home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _formKey = GlobalKey<FormState>();
  RegExp numvalid = RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$');
  RegExp mailvalid = RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()11[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

  TextEditingController name = TextEditingController();

  get number => TextEditingController();
  List areas = ['62', '63', '64' , '65'];
  String area;

  TextEditingController address = TextEditingController();
  TextEditingController city = TextEditingController();

  List states = ['Jakarta', 'Bandung', 'Bogor', 'Bekasi'];
  String state;
  TextEditingController zip = TextEditingController();

  TextEditingController mail = TextEditingController();
  TextEditingController birthday = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Form Pendaftaran"),
      // ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(top: 5),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text("Form Pendaftratan", style: TextStyle(fontSize: 40),),
                Row(
                  children: <Widget>[
                    Icon(Icons.person),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Name"
                          ),
                          controller: name,
                          validator: (String value){
                            if(value.isEmpty){
                              return 'Masukkan Nama';
                            }
                            return null;
                          },
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.call),
                    Expanded(
                      child: Container(
                        width: 50,
                        margin: EdgeInsets.only(left: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Number"
                          ),
                          controller: number,
                          validator: (String value){
                            if(value.isEmpty || value == null){
                              return 'Masukkan Angka';
                            } else if(!(numvalid.hasMatch(value))) {
                              return 'Harus Angka';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 50,
                        margin: EdgeInsets.only(left: 20),
                        child: DropdownButton(
                          hint: Text("Area"),
                            value: area,
                            items: areas.map((value) {
                              return DropdownMenuItem(
                                  child: Text(value),
                                  value: value
                              );
                            }).toList(),
                            onChanged: (value) {
                            setState(() {
                              area = value;
                            });
                            }
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                //address
                Row(
                  children: <Widget>[
                    Icon(Icons.location_on),
                    Expanded(
                      child: Container(
                        width: 50,
                        margin: EdgeInsets.only(left: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Address"
                          ),
                          controller: address,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                //city
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        width: 50,
                        margin: EdgeInsets.only(left: 43),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "City"
                          ),
                          controller: city,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ),
                  ],
                ),
                //state and zip
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        width: 50,
                        margin: EdgeInsets.only(left: 43, top: 20),
                        child: DropdownButton(
                            hint: Text("State"),
                            value: state,
                            items: states.map((value) {
                              return DropdownMenuItem(
                                  child: Text(value),
                                  value: value
                              );
                            }).toList(),
                            onChanged: (value){
                              setState(() {
                                state = value;
                              });
                            })
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 50,
                        margin: EdgeInsets.only(left: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Zip"
                          ),
                          controller: zip,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: <Widget>[
                    Icon(Icons.mail),
                    Expanded(
                      child: Container(
                        width: 50,
                        margin: EdgeInsets.only(left: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Email"
                          ),
                          controller: mail,
                          validator: (String value){
                            if(value.isEmpty){
                              return 'Masukkan Email';
                            } else if(!(mailvalid.hasMatch(value))){
                              return 'Masukkan Email dengan Benar!';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: <Widget>[
                    Icon(Icons.cake),
                    Expanded(
                      child: Container(
                        width: 50,
                        margin: EdgeInsets.only(left: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Birthday",
                              suffixIcon: Icon(Icons.date_range)
                          ),
                          controller: birthday,
                          keyboardType: TextInputType.datetime,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                RaisedButton(
                  child: Text(
                    "Kirim",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    if (_formKey.currentState.validate()) {}
                    return false;
                  },
                ),

              ],
            ),
          ),
        ),
      )
    );
  }
}
