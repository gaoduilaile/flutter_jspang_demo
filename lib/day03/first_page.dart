import 'package:flutter/material.dart';
import 'package:flutterjspangdemo/day03/custom_route.dart';
import 'second_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("this is first page"),
        backgroundColor: Colors.blue,
        elevation: 1.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 50,
          ),
          onPressed: () {
//            Navigator.of(context)
//                .push(MaterialPageRoute(builder: (BuildContext context) {
//              return SecondPage();
//            }));
            Navigator.of(context).push(CustomRoute(SecondPage()));
          },
        ),
      ),
    );
  }
}
