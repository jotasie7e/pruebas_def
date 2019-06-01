import 'package:flutter/material.dart';

class Gamepad extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        children: <Widget>[
          new Icon(
            Icons.gamepad,
            size: 100,
            color: Colors.green,
          ),
          new Text("Tercer tab")
        ],
      ),
    );
  }
}