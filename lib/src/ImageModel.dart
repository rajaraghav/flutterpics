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
