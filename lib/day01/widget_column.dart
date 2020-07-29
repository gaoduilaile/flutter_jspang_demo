import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyAppColumn());
}

/**
 * cneter 剧中布局
 * column 垂直方向布局
 * expanded 填充剩余父类布局空间
 * mainAxisAlignment 主轴对齐
 * crossAxisAlignment 副轴对齐
 *
 */
class MyAppColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: new Scaffold(
          appBar: AppBar(
            title: new Text("垂直方向布局"),
          ),
          body: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Text("blue button"),
                new Expanded(
                  child: new Text("orange button this is a button"),
                ),
                new Text("green button"),

              ],
            ),
          )),
    );
  }
}
