import 'package:flutter/material.dart';

class ImageModel extends StatelessWidget {
  var id;
  var url;
  var title;

  ImageModel(this.id, this.url, this.title) {}
  ImageModel.fromJson(jsonObj) {
    this.id = jsonObj['id'];
    this.url = jsonObj['url'];
    this.title = jsonObj['title'];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var picView = new MaterialApp(
      home: Image.network(this.url),
    );
    return picView;
  }
}
