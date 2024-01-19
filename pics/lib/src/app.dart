import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';
import 'models/image_model.dart';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    counter++;
    var url = Uri.https('jsonplaceholder.typicode.com', 'photos/$counter');
    var response = await get(url);
    var imageModel = ImageModel.fromJson(json.decode(response.body));
    setState(() {
      images.add(imageModel);
    });
    // get('https://jsonplaceholder.typicode.com/photos/$counter' as Uri);
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lets see some images'),
          backgroundColor: Colors.blue,
        ),
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 148, 88, 239),
          tooltip: 'Increment',
          onPressed: fetchImage,
          shape: const CircleBorder(),
          child: const Icon(Icons.add, color: Colors.white, size: 28),
        ),
      ),
    );
  }
}
