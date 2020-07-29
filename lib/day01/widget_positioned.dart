import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyAppPositioned());
}

class MyAppPositioned extends StatelessWidget {
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
        new Positioned(
          top: 10,
          left: 10,
          child: new Text("this is a text"),
        ),
        new Positioned(
          bottom: 20,
          right: 20,
          child: new Text("this is a text"),
        )
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
