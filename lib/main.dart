import 'package:flutter/material.dart';
import 'package:fllutter_app/pages/call.dart';
import 'package:fllutter_app/pages/usb.dart';
import 'package:fllutter_app/pages/fav.dart';

void main(){
  runApp(new MaterialApp(
   home: MyWidgetNavigation(),
  ));
}

class MyWidgetNavigation extends StatefulWidget{
  _MyWidgetNavigationState createState() => new _MyWidgetNavigationState();
}

class _MyWidgetNavigationState extends State<MyWidgetNavigation> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
  void initState(){
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Navigation"),
        backgroundColor: Colors.deepPurple,
      ),
      bottomNavigationBar: new Material(  //barra abajo
        child: new TabBar(
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.call)),
            new Tab(icon: new Icon(Icons.usb)),
            new Tab(icon: new Icon(Icons.favorite_border))
          ],
          controller: controller,
        ),
        color: Colors.deepPurple,
      ),
      body: new TabBarView(
        children: <Widget>[
          new Call(),
          new Usb(),
          new Fav()
        ],
        controller: controller,
      )
    );
  }
}

