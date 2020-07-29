import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyAppContainer());
}

class MyAppContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "widget_container",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Container(
            child: Text(
              "container",
              style: TextStyle(fontSize: 40, color: Colors.black),
            ),
            alignment: Alignment.topLeft,
//            alignment: Alignment.bottomCenter,
//            alignment: Alignment.bottomLeft,
//            alignment: Alignment.bottomRight,
//            alignment: Alignment.centerLeft,
//            alignment: Alignment.centerRight,
//            alignment: Alignment.topRight,

            width: 500.0,
            height: 400.0,
//            color: Colors.lightBlue,//decoration 和 color 冲突
//            padding: const EdgeInsets.all(10.0),
//            padding: const EdgeInsets.only(top: 10,left: 20),
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.lightBlue, Colors.greenAccent, Colors.purple],
                ),
                border: Border.all(width: 3, color: Colors.red)),
          ),
        ),
      ),
    );
  }
}
