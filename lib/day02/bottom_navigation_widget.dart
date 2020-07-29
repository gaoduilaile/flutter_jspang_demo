import 'package:flutter/material.dart';
import 'airplay_screen.dart';
import 'email_screen.dart';
import 'home_screen.dart';
import 'pages_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottomNavigationWidgetSate();
}

class BottomNavigationWidgetSate extends State<BottomNavigationWidget> {
  final Color _bottomNavigationColor = Colors.lightBlue;
  List<Widget> list = [];
  int currentNavigationIndex = 0;

  @override
  void initState() {
    list
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PagesScreen())
      ..add(AirplayScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: list[currentNavigationIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentNavigationIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _bottomNavigationColor,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _bottomNavigationColor,
            ),
            title: Text(
              "Email",
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
              color: _bottomNavigationColor,
            ),
            title: Text(
              "Pages",
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,
              color: _bottomNavigationColor,
            ),
            title: Text(
              "Airplay",
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
        ],
        onTap: (int index) {
          setState(() {
            currentNavigationIndex = index;
          });
        },
      ),
    ));
  }
}

