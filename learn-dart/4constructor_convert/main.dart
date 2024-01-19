import 'dart:convert';

void main() {
  var rawJson = '{"id":1, "url":"http://pic.jpg"}';
  var parsedJson = json.decode(rawJson);
  print(parsedJson);
  print(
      "\nFrom ParsedJson:\n id: ${parsedJson['id']},\n url: ${parsedJson['url']}");

  var imgMdl1 = new ImageModel(10, 'http://pic1.jpg');
  print("\nFrom imgMdl1\n id: ${imgMdl1.id},\n url: ${imgMdl1.url}");

  var imgMdl2 = new ImageModel(parsedJson['id'], parsedJson['url']);
  print("\nFrom imgMdl2\n id: ${imgMdl2.id},\n url: ${imgMdl2.url}");

  var imgMdl3 = new ImageModel.fromJson1(parsedJson);
  print("\nFrom imgMdl3\n id: ${imgMdl3.id},\n url: ${imgMdl3.url}");

  var imgMdl4 = new ImageModel.fromJson2(parsedJson);
  print("\nFrom imgMdl4\n id: ${imgMdl4.id},\n url: ${imgMdl4.url}");
}

class ImageModel {
  late int id;
  late String url;

  /*
  // Only one unnamed constructor allowed
  // Unnamed Constructor
  ImageModel() {
    id = 1;
    url = 'http://pic.jpg';
  }
  */

  // Unnamed Constructor
  // Generative constructor with initializing formal parameters:
  ImageModel(this.id, this.url);

  // Named Constructor
  ImageModel.fromJson1(parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
  }

  // Named constructor
  ImageModel.fromJson2(parsedJson)
      : id = parsedJson['id'],
        url = parsedJson['url'];
}
