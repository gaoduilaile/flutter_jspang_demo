import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterjspangdemo/day02/email_screen.dart';
import 'package:flutterjspangdemo/day02/home_screen.dart';
import 'package:flutterjspangdemo/day02/pages_screen.dart';


class BottomNavigationWidget2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottomNavigationWidgetSate();
}

class BottomNavigationWidgetSate extends State<BottomNavigationWidget2> {
  final Color _bottomNavigationColor = Colors.lightBlue;
  List<Widget> list = [];
  int currentNavigationIndex = 0;

  @override
  void initState() {
    list..add(HomeScreen())..add(EmailScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BottomNavigationWidget2",
      home: Scaffold(
        body: list[currentNavigationIndex],
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return PagesScreen();
            }));
          },
          tooltip: "添加",
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.lightBlue,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    currentNavigationIndex = 0;
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.email),
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    currentNavigationIndex = 1;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
