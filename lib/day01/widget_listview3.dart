import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyAppList3());

class MyAppList3 extends StatelessWidget {
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
//        body: GridView.count(
//          padding: const EdgeInsets.all(20),
//          crossAxisSpacing: 10,
//          crossAxisCount: 3,
//          children: <Widget>[
//            Container(
//              color: Colors.lightBlue,
//              child: Text("喜欢看书1"),
//            ),
//            Container(
//              color: Colors.lightBlue,
//              child: Text("喜欢看书2"),
//            ),
//            Container(
//              color: Colors.lightBlue,
//              child: Text("喜欢看书3"),
//            ),
//            Container(
//              color: Colors.lightBlue,
//              child: Text("喜欢看书4"),
//            ),
//            Container(
//              color: Colors.lightBlue,
//              child: Text("喜欢看书5"),
//            ),
//            Container(
//              color: Colors.lightBlue,
//              child: Text("喜欢看书6"),
//            ),
//            Container(
//              color: Colors.lightBlue,
//              child: Text("喜欢看书7"),
//            ),
//            Container(
//              color: Colors.lightBlue,
//              child: Text("喜欢看书1"),
//            ),
//          ],
//        ),

        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 5.0,
            childAspectRatio: 0.7,
          ),
          children: <Widget>[
            Image.network(
                "http://img5.mtime.cn/mt/2020/07/18/195707.38118894_100X140X4.jpg"),
            Image.network(
                "http://img5.mtime.cn/mt/2020/07/18/195707.38118894_100X140X4.jpg"),
            Image.network(
                "http://img5.mtime.cn/mt/2020/07/18/195707.38118894_100X140X4.jpg"),
            Image.network(
                "http://img5.mtime.cn/mt/2020/07/18/195707.38118894_100X140X4.jpg"),
            Image.network(
                "http://img5.mtime.cn/mt/2020/07/18/195707.38118894_100X140X4.jpg"),
            Image.network(
                "http://img5.mtime.cn/mt/2020/07/18/195707.38118894_100X140X4.jpg"),
            Image.network(
                "http://img5.mtime.cn/mt/2020/07/18/195707.38118894_100X140X4.jpg"),
            Image.network(
                "http://img5.mtime.cn/mt/2020/07/18/195707.38118894_100X140X4.jpg"),
          ],
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
