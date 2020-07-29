import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidgetCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: new Text("杭州市余杭区1",
                style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black)),
            subtitle: new Text("高琼1：1122323213"),
            leading: new Icon(
              Icons.account_box,
              color: Colors.lightBlue,
            ),
          ),
          Divider(),
          ListTile(
            title: new Text("杭州市余杭区2",
                style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black)),
            subtitle: new Text("高琼2：1122323213"),
            leading: new Icon(
              Icons.account_box,
              color: Colors.lightBlue,
            ),
          ),
          Divider(),
          ListTile(
            title: new Text("杭州市余杭区3",
                style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black)),
            subtitle: new Text("高琼3：1122323213"),
            leading: new Icon(
              Icons.account_box,
              color: Colors.lightBlue,
            ),
          ),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: new Text("card and list"),
      ),
      body: new Center(
        child: card,
      ),
    );
  }
}
