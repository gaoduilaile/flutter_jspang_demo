import 'package:flutter/material.dart';

void main() {
  runApp(MyAppText());
}

class MyAppText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "text widget",
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            "welcome to flutter",
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[


            RaisedButton(
              child: Text("返回"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),

            Text(
              "我是jspang 具有可变状态的窗口部件，也就是你在使用应用的时候就可以随时变化，比如我们常见的进度条，随着进度不断变化。",
              textAlign: TextAlign.left,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20.0,
                color: Color.fromARGB(255, 255, 125, 125),
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
              ),
            ),

            Text(
              "我是jspang 具有可变状态的窗口部件，也就是你在使用应用的时候就可以随时变化，比如我们常见的进度条，随着进度不断变化。",
              textAlign: TextAlign.left,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20.0,
                color: Color.fromARGB(255, 255, 125, 125),
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dotted,
              ),
            ),
            Text(
              "我是jspang 具有可变状态的窗口部件，也就是你在使用应用的时候就可以随时变化，比如我们常见的进度条，随着进度不断变化。",
              style: TextStyle(fontSize: 20.0, color: Colors.blue),
              textAlign: TextAlign.left,
            ),
            Text(
              "我是jspang ",
              style: TextStyle(fontSize: 20.0, color: Colors.blue),
              textAlign: TextAlign.right,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "我是jspang ",
              style: TextStyle(fontSize: 20.0, color: Colors.blue),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "我是jspang ",
              style: TextStyle(fontSize: 20.0, color: Colors.blue),
              textAlign: TextAlign.left,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "我是jspang ",
                  style: TextStyle(fontSize: 20.0, color: Colors.blue),
                  textAlign: TextAlign.left,
                  maxLines: 2,
                ),
                Text(
                  "我是jspang2 ",
                  style: TextStyle(fontSize: 20.0, color: Colors.blue),
                  textAlign: TextAlign.right,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "我是jspang ",
                  style: TextStyle(fontSize: 20.0, color: Colors.blue),
                  textAlign: TextAlign.left,
                  maxLines: 2,
                ),
                Text(
                  "我是jspang2 ",
                  style: TextStyle(fontSize: 20.0, color: Colors.blue),
                  textAlign: TextAlign.right,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
