import 'package:flutter/material.dart';
import 'dart:convert';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int c = 0;
  fetchImage() {}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var app = MaterialApp(
        home: Scaffold(
      body: Text('$c'),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: fetchImage),
      appBar: AppBar(
        title: Text('ssup'),
      ),
    ));
    return app;
  }
}
