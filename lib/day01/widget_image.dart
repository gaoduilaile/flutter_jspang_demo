import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyAppImage());
}

class MyAppImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "widget_image",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "widget_image",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        body: Center(
          child: Container(
            child: Image.network(
              "https://bkimg.cdn.bcebos.com/pic/342ac65c103853436b7a74589f13b07eca808816",
              fit: BoxFit.fill,
//              fit: BoxFit.contain,
//            fit: BoxFit.fitWidth,
//            fit: BoxFit.fitHeight,
//            fit: BoxFit.scaleDown,
              color: Colors.greenAccent,
              colorBlendMode: BlendMode.darken,
//            colorBlendMode: BlendMode.modulate,

              repeat: ImageRepeat.repeatY,
            ),
            width: 500,
            height: 300,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}
