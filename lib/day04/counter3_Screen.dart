import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCountHomePage3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyCountHomePage3> with AutomaticKeepAliveClientMixin{
  int count = 0;
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "$count",
              style: Theme.of(context).textTheme.headline3,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        tooltip: "Increment",
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
