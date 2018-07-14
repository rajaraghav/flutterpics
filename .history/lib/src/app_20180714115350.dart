import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' show get;

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class ImageModel {
  var id;
  var url;
  var title;

  ImageModel(this.id, this.url, this.title) {}
  ImageModel.fromJson(jsonObj) {
    this.id = jsonObj['id'];
    this.url = jsonObj['url'];
    this.title = jsonObj['title'];
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
