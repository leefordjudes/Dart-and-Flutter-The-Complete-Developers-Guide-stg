class ImageModel {
  late int id;
  late String url;
  late String title;

  ImageModel(this.id, this.url, this.title);

  ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }

  @override
  String toString() {
    return '{id: $id, url: $url, title: $title}';
  }
}
