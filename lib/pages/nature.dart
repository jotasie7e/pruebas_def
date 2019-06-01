import 'package:flutter/material.dart';

class Nature extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        children: <Widget>[
          new Icon(
            Icons.nature,
            size: 100,
            color: Colors.green,
          ),
          new Text("Segundo tab")
        ],
      ),
    );
  }
}