import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' show get;
import './ImageModel.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int c = 0;
  void fetchImage() async {
    c++;
    var response = await get('https://jsonplaceholder.typicode.com/photos/1');
  }

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
