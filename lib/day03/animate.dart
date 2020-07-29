import 'package:flutter/material.dart';
import 'first_page.dart';

void main() {
  runApp(MyAppAnimation());
}

class MyAppAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "animation",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}
