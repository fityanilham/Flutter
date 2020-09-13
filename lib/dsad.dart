import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: FloatingAction(),
  debugShowCheckedModeBanner: false,
));

class FloatingAction extends StatefulWidget {
  @override
  _FloatingActionState createState() => _FloatingActionState();
}

class _FloatingActionState extends State<FloatingAction> with SingleTickerProviderStateMixin {

  bool isOpened = false;
  AnimationController _animationController;
  Animation<Color> _buttonColor;
  Animation<double> _animationIcon;
  Animation<double> _translateButton;
  Curve _curve = Curves.easeOut;
  double _fabHeight = 56.0;
  
  Widget buttonAdd() {
    return Container(
      child: FloatingActionButton(
        onPressed: () {
          print("Button add Click");
        },
        tooltip: "Add",
        child: Icon(Icons.add),
      ),
    );
  }
  
  Widget buttonEdit() {
    return Container(
      child: FloatingActionButton(
        onPressed: () {
          print("Button Edit Click");
        },
        tooltip: "Edit",
        child: Icon(Icons.edit),
      ),
    );
  }
  
  Widget buttonDelete() {
    return Container(
      child: FloatingActionButton(
        onPressed: () {
          print("Button Delete Click");
        },
        tooltip: "Delete",
        child: Icon(Icons.delete),
      ),
    );
  }
  
  Widget buttonToggle() {
    return Container(
      child: FloatingActionButton(
        backgroundColor: _buttonColor.value,
        onPressed: animate,
        tooltip: "Toggle",
        child: AnimatedIcon(icon: AnimatedIcons.menu_close, progress: _animationIcon,),
      ),
    );
  }
  
  void animate() {
    if(!isOpened)
      _animationController.forward();
    else
      _animationController.reverse();
    isOpened = !isOpened;
  }
  @override
  void initState() {
    _animationController =
    AnimationController(vsync: this, duration: Duration(milliseconds: 500))
      ..addListener(() {
      setState(() {});
    });

    _animationIcon = Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);

    _buttonColor = ColorTween(begin: Colors.blue, end: Colors.red). animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.00, 1.00, curve: Curves.linear)
      )
    );

    _translateButton = Tween<double>(begin: _fabHeight, end: -14.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.0, 0.75, curve: _curve)
      )
    );
    super.initState();
  }
  
  @override
  void dispose() {
    _animationController.dispose();
    
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Floating Action Button"),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Transform(
            transform: Matrix4.translationValues(0.0, _translateButton.value*3.0, 0.0),
            child: buttonAdd(),
          ),
          Transform(
            transform: Matrix4.translationValues(0.0, _translateButton.value*2.0, 0.0),
            child: buttonEdit(),
          ),
          Transform(
            transform: Matrix4.translationValues(0.0, _translateButton.value, 0.0),
            child: buttonDelete(),
          ),
          buttonToggle()
        ],
      ),
    );
  }
}