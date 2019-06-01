import 'package:flutter/material.dart';

class Call extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child :new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center, //centrar el hijo
            children: <Widget>[
              new Icon(
                Icons.call,
                size: 120,
                color: Colors.amber,
              ),
              new Text(
                "Number one",
                style: new TextStyle(fontSize: 20),
              )
            ]
          )
        )
      )
    );
  }
}