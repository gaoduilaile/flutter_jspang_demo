import 'package:flutter/material.dart';

import 'counter1_Screen.dart';
import 'counter2_Screen.dart';
import 'counter3_Screen.dart';

void main() {
  runApp(MyAppTabBarView());
}

class MyAppTabBarView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppTabBarViewState();
}

class MyAppTabBarViewState extends State<MyAppTabBarView>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "animation",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("tab bar tabview"),
          bottom: TabBar(
            controller: tabController,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.directions_car),
              ),
              Tab(
                icon: Icon(Icons.directions_transit),
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: <Widget>[
            MyCountHomePage1(),
            MyCountHomePage2(),
            MyCountHomePage3(),
          ],
        ),
      ),
    );
  }
}
