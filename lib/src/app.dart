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
  var c = 1;
  ImageModel model;
  void fetchImage() async {
    var newImageID = c + 1;
    var response =
        await get('https://jsonplaceholder.typicode.com/photos/$newImageID');
    setState(() {
      c++;
      model = new ImageModel.fromJson(json.decode(response.body));
    });
  }

  void initFetch() async {
    var response = await get('https://jsonplaceholder.typicode.com/photos/$c');
    setState(() {
      model = new ImageModel.fromJson(json.decode(response.body));
    });
  }

  @override
  Widget build(BuildContext context) {
    initFetch();
    var app = MaterialApp(
        home: Scaffold(
      body: model,
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: fetchImage),
      appBar: AppBar(
        title: Text('ssup'),
      ),
    ));
    return app;
  }
}
