import 'package:flutter/material.dart';
import 'package:fllutter_app/pages/radioo.dart';
import 'package:fllutter_app/pages/nature.dart';
import 'package:fllutter_app/pages/gamepad.dart';


void main(){
  runApp(new MaterialApp(
    home: MyTabs(),
  ));
}

class MyTabs extends StatefulWidget{
  @override
  _MyTabsState createState() => new _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My Tabs"),
        backgroundColor: Colors.lightBlue,
        bottom: new TabBar(
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.radio)),
            new Tab(icon: new Icon(Icons.nature)),
            new Tab(icon: new Icon(Icons.gamepad))
          ],
          controller: controller,
        ),
      ),
      body: new TabBarView(
        children: <Widget>[
          new Radioo(),
          new Nature(),
          new Gamepad()
        ],
        controller: controller
      )
    );
  }
}