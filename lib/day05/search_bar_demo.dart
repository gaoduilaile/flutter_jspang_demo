import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterjspangdemo/day05/search_bar_delegate.dart';

class SearchBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 1.0,
        title: Text("SearchBarDemo"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: SearchBarDelegate());
            },
          ),
          IconButton(
            icon: Icon(Icons.access_alarm),
            onPressed: () {},
          ),
          PopupMenuButton(
            icon: Icon(Icons.dehaze),
            itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
              _selectView(Icons.message, "发起群聊", "A"),
              _selectView(Icons.group_add, "添加服务", "B"),
              _selectView(Icons.cast_connected, "扫一扫码", "C"),
            ],
            onSelected: (id) {

              showDialogFunc(context, id);
            },
          ),
        ],
      ),
    );
  }

// 返回每个隐藏的菜单项
  _selectView(IconData icon, String text, String id) {
    return PopupMenuItem<String>(
        value: id,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(icon, color: Colors.blue),
            Text(text),
          ],
        ));
  }

  void showDialogFunc(BuildContext context, id) async {
    showDialog(
      context: context,
      child: new AlertDialog(
        content: new Text(
          id,
          style: new TextStyle(fontSize: 20),
        ),
        actions: <Widget>[
          RaisedButton(
            child: Text("确定"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );

    await Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pop();
    });
  }
}
