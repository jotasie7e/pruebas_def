import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: MyDialog(),
  ));
}

class MyDialog extends StatefulWidget{
  @override
  _MyDialog createState() => new _MyDialog();
}

enum DialogAction{  //declaracion de variables tipo action
  yes,
  no
}

class _MyDialog extends State<MyDialog>{

  String _inputValue = "";

  void _alertResult(DialogAction action){  //Entrada de variable tipo dialogaction, para trabajar con ella
    print("Ha seleccionado: $action");
  }

  void _showAlert(String value){
    AlertDialog dialog = new AlertDialog(
      content: new Text(value),   //texto a mostrar
      actions: <Widget>[
        new FlatButton(onPressed: (){_alertResult(DialogAction.yes);}, child: new Text("Si")), //opciones, enviar dialog action correspondiente
        new FlatButton(onPressed: (){_alertResult(DialogAction.no);}, child: new Text("No"))
      ],
    );

    showDialog(context: context, child: dialog);
  }

  void _onChange(String value){
    setState((){
      _inputValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Alert Dialog"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(
                  hintText: "Ingrese texto"
                ),
                onChanged: (String value) {_onChange(value);}
              ),
              new RaisedButton(
                child: new Text("Show Alert"),
                onPressed: () {_showAlert(_inputValue);}
              )
            ],
          ),
        ),
      ),
    );
  }
}
