import 'package:flutter/material.dart';
import './src/app.dart';

void main() {
  var app = MaterialApp(
      home: Scaffold(
    floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print("ssup");
        }),
    appBar: AppBar(
      title: App(),
    ),
  ));

  runApp(app);
}
