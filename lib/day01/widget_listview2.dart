import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyAppList2());

class MyAppList2 extends StatelessWidget {
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
        body: Center(
          child: Container(
              child: MyList(
                  items: new List<String>.generate(
                      100, (index) => "Item $index"))),
        ),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  final List<String> items;

  MyList({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("${items[index]}"),
        );
      },
    );
  }
}
