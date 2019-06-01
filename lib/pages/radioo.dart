import 'package:flutter/material.dart';

class Radioo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        children: <Widget>[
          new Icon(
            Icons.radio,
            size: 100,
            color: Colors.green,
          ),
          new Text("Primer tab")
        ],
      ),
    );
  }
}