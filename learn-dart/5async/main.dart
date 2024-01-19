import 'dart:async';
/*
main() {
  print('About to fetch data...');
  // get('http://pic.jpg').then((result) {
  //   print(result);
  // });
  // get('http://pic.jpg').then((result) => print(result));
  var result = await get('http://pic.jpg');
}
*/

main() async {
  print('About to fetch data...');
  var result = await get('http://pic.jpg');
  print(result);
}

Future<String> get(String url) {
  return new Future.delayed(new Duration(seconds: 3), () {
    return 'data: $url';
  });
}
