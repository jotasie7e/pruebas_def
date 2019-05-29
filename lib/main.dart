import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: MyTextField(),
  ));
}

class MyTextField extends StatefulWidget{
  @override
  _MyTextFieldState createState() => new _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField>{
  String text = "";

  final TextEditingController controller = new TextEditingController();

  void onSubmitted(String value){
    print(value);
    setState((){
      text = text + "\n" + value;
      controller.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Text Field",),
        backgroundColor: Colors.red,
      ),
      body: new Container(
        padding: const EdgeInsets.all(10.0),
        child: new Center(
          child: new Column(            
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(hintText: "Ingrese numero"),
                onSubmitted: (String value){onSubmitted(value);},
                controller: controller,
              ),
              new Text(text)
            ],
          ),
        ),
      ),
    );
  }
}
