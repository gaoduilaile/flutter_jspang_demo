import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyAppRow());
}

class MyAppRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: AppBar(
          title: new Text("水平方向布局"),
        ),
        body: new Row(
          children: <Widget>[


            RaisedButton(
              color: Colors.lightBlue,
              child: new Text("blue button"),
              onPressed: () {},
            ),
            new Expanded(
                child: RaisedButton(
              color: Colors.orange,
              child: new Text("orange button"),
              onPressed: () {},
            )),
            RaisedButton(
              color: Colors.greenAccent,
              child: new Text("green button"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
