import 'package:flutter/material.dart';
import 'package:fllutter_app/pages/call.dart';
import 'package:fllutter_app/pages/fav.dart';

void main(){
  runApp(new MaterialApp(
    home: MyDrawer(),
    routes: <String, WidgetBuilder>{
      Call.routeName: (BuildContext context) => new Call(),
      Fav.routeName: (BuildContext context) => new Fav(),
    },
  ));
}

class MyDrawer extends StatefulWidget{
  @override
  _MyDrawerState createState() => new _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer>{

  Drawer _getDrawer(BuildContext context) {

    var header = new DrawerHeader(child: new Text("Header"));
    var info = new AboutListTile(
      child: new Text("Informacion"),
      applicationIcon: new Icon(Icons.face),
      applicationVersion: "1",
      applicationName: "Pruebas",
      icon: new Icon(Icons.info),
    );

    ListTile _getItem(Icon icono, String descripcion, String ruta) {
      return new ListTile(
        leading: icono,
        title: new Text(descripcion),
        onTap: () {
          setState(() {
            Navigator.of(context).pushNamed(ruta);
          });
        },
      );
    }

    ListView listView = new ListView(
      children: <Widget>[
        header,
        _getItem(new Icon(Icons.call), "Llamar", "/call"),
        _getItem(new Icon(Icons.favorite), "Fav", "/fav"),
        info
      ],
    );

    return new Drawer(
      child: listView
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Menu Izquierda"),),
      drawer: new Drawer(child: _getDrawer(context)),  //menu izquierda
    );
  }
}
