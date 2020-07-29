import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text("this is second page"),
        elevation: 1.0,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 50,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
