import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
      home: Scaffold(
    floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print("ssup");
        }),
    appBar: AppBar(
      title: Text("FlutterPix"),
    ),
  ));

  runApp(app);
}
