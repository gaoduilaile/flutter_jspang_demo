import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'day01/widget_card1.dart';
import 'day01/widget_container.dart';
import 'day01/widget_image.dart';
import 'day01/widget_listview1.dart';
import 'day01/widget_listview2.dart';
import 'day01/widget_listview3.dart';
import 'day01/widget_text.dart';
import 'day03/animate.dart';
import 'day01/widget_card2.dart';
import 'day02/bottom_navigation_widget.dart';
import 'day02/bottom_navigation_widget2.dart';
import 'day01/widget_column.dart';
import 'day01/widget_positioned.dart';
import 'day01/widget_row.dart';
import 'day01/widget_stack.dart';
import 'day04/tab_bar_view.dart';
import 'day05/search_bar_demo.dart';
import 'day11/counter_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: MyHome());
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textstyle = new TextStyle(fontSize: 18, color: Colors.black);

    return Scaffold(
      appBar: AppBar(
          title: new Text(
        "控件布局",
      )),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
          childAspectRatio: 0.7,
        ),
        children: <Widget>[
          new RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new MyAppText()),
              );
            },
            child: new Text(
              "text ",
              style: textstyle,
            ),
          ),
          new RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new MyAppImage()),
              );
            },
            child: new Text(
              "image ",
              style: textstyle,
            ),
          ),
          new RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new MyAppContainer()),
              );
            },
            child: new Text(
              "container ",
              style: textstyle,
            ),
          ),
          new RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new MyAppList1()),
              );
            },
            child: new Text(
              "listView1 ",
              style: textstyle,
            ),
          ),
          new RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new MyAppList2()),
              );
            },
            child: new Text(
              "listView2 ",
              style: textstyle,
            ),
          ),
          new RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new MyAppList3()),
              );
            },
            child: new Text(
              "listView3 ",
              style: textstyle,
            ),
          ),
          new RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new MyAppColumn()),
              );
            },
            child: new Text(
              "column ",
              style: textstyle,
            ),
          ),
          new RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new MyAppRow()),
              );
            },
            child: new Text(
              "row ",
              style: textstyle,
            ),
          ),
          new RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new MyAppStack()),
              );
            },
            child: new Text(
              "stack ",
              style: textstyle,
            ),
          ),
          new RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new MyAppPositioned()),
              );
            },
            child: new Text(
              "Positioned ",
              style: textstyle,
            ),
          ),
          new RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new MyWidgetCard1()),
              );
            },
            child: new Text(
              "Card1 ",
              style: textstyle,
            ),
          ),
          new RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new MyWidgetCard2()),
              );
            },
            child: new Text(
              "Card2 ",
              style: textstyle,
            ),
          ),
          new RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new BottomNavigationWidget()),
              );
            },
            child: new Text(
              "BottomNavigation1",
              style: textstyle,
            ),
          ),
          new RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new BottomNavigationWidget2()),
              );
            },
            child: new Text(
              "BottomNavigation2",
              style: textstyle,
            ),
          ),
          new RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new MyCountHomePage()),
              );
            },
            child: new Text(
              "CountApp",
              style: textstyle,
            ),
          ),


          new RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new MyAppAnimation()),
              );
            },
            child: new Text(
              "MyAppAnimation",
              style: textstyle,
            ),
          ),


          new RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new MyAppTabBarView()),
              );
            },
            child: new Text(
              "MyAppTabBarView",
              style: textstyle,
            ),
          ),



          new RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new SearchBarDemo()),
              );
            },
            child: new Text(
              "SearchBarDemo",
              style: textstyle,
            ),
          ),

        ],
      ),
    );
  }
}
