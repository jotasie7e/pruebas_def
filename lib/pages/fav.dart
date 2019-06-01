import 'package:flutter/material.dart';

class Fav extends StatelessWidget{

  static const String routeName = "/fav";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Info")
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center, //centrar el hijo
            children: <Widget>[
              new Icon(
                Icons.favorite,
                size: 120,
                color: Colors.amber,
              ),
              new Text(
                "Number 3",
                style: new TextStyle(fontSize: 20),
              )
            ]
          )
        )
      )
    );
  }
}