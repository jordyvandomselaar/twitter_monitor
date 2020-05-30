import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Twitter Monitor"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Welcome to Twitter Monitor!"),
            Text("Please login to get started."),
            RaisedButton(child: Text("Login"), onPressed: () {

            },)
          ],
        ),
      ),
    );
  }
}