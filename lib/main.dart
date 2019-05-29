import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: MyButtom(),
  ));
}

class MyButtom extends StatefulWidget{
  @override
  _MyButtomState createState() => new _MyButtomState();
}

class _MyButtomState extends State<MyButtom>{
  String text = "Nick";
  List<String> vector = ["Juan", "Sebastian", "JotaSiete"];
  int cont = 0;

  void onPressButton() {
    setState(() {   //Actualiza y renderiza el widget de nuevo
      cont++;
      if(cont == 3) {
        cont = 0;
        text = vector[cont];
      }
      else{
        text = vector[cont];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: new Text("Stateful Widget"),
      ),
      body: new Container(
        child: Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(text, style: new TextStyle(fontSize: 30.0)),  //Variable text que vamos variando en el metodo onPress
              new Padding(padding: new EdgeInsets.all(5.0)),
              new RaisedButton(        //Boton
                child: new Text("Cambio", style: new TextStyle(color: Colors.white, fontSize: 15.0)),
                color: Colors.amber[600],
                onPressed: onPressButton,
              )
            ]
          )
        )
      ),
    );
  }
}