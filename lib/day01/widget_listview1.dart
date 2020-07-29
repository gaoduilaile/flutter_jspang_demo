import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyAppList1());

class MyAppList1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "JSPang DEMO",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Widget ListView",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
//        body:ListView(
//          children: <Widget>[
//
//            ListTile(
//              title:Text("列标题1"),
//              leading: Icon(Icons.perm_camera_mic),
//            ),
//
//            ListTile(
//              title:Text("列标题2"),
//              leading: Icon(Icons.call),
//            ),
//
//            ListTile(
//              title:Text("列标题3"),
//              leading: Icon(Icons.timer),
//            ),
//
//          ],
//        ),
        body: Center(
          child: Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 180,
                  color: Colors.lightBlue,
                ),
                Container(
                  width: 180,
                  color: Colors.lightGreenAccent,
                ),
                Container(
                  width: 180,
                  color: Colors.purple,
                ),
                Container(
                  width: 180,
                  color: Colors.pink,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
