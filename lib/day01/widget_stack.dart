import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyAppStack());
}

class MyAppStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        CircleAvatar(
          backgroundImage:
              NetworkImage("http://blogimages.jspang.com/blogtouxiang1.jpg"),
          radius: 100,
        ),
        Container(
          decoration: BoxDecoration(color: Colors.lightBlue),
          padding: const EdgeInsets.all(5.0),
          child: new Text(
            "this is a text",
          ),
        ),

      ],
    );

    return MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: AppBar(
          title: new Text("stack widget"),
        ),
        body: stack,
      ),
    );
  }
}
