import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
    return app;
  }
}
