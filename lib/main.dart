import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final TextStyle textStyle = new TextStyle(
        color: Colors.black, fontSize: 15.0
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("StatelessWidget"),
      ),
      body: new Container(
        child: Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,       //Hace que ocupe el ancho de la pantalla
            children: <Widget>[
              new MyCard(                   //Clase creada
                title: new Text("Me gusta", style: textStyle),
                icon: new Icon(Icons.favorite, size: 40.0, color: Colors.red),
              ),
              new MyCard(
                title: new Text("Trabajar", style: textStyle),
                icon: new Icon(Icons.build, size: 40.0, color: Colors.grey),
              ),
              new MyCard(
                title: new Text("En mi mente", style: textStyle),
                icon: new Icon(Icons.mood, size: 40.0, color: Colors.amber),
              ),
              new MyCard(
                title: new Text("Cada día", style: textStyle),
                icon: new Icon(Icons.timeline, size: 40.0, color: Colors.green),
              )
            ],
          ),
        )
      ),
    );

  }
}


class MyCard extends StatelessWidget{

  final Widget icon;
  final Widget title;

  MyCard({this.icon, this.title});  // Crear metodo para recibir parametros

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: new Card(
        child: new Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[this.title, this.icon],   //Colocando parametros
          ),
        )
      )
    );
  }
}