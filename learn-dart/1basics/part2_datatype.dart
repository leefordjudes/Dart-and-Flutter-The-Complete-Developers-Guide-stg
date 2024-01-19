void main() {
  String name = 'Stephen';
  int age = 50;
  int longitude = -74;
  double height = 154.54;
  var fName = firstName();
  var dynamic1_string = 'Hi';
  var dynamic2_double = -0.54;
  var dynamic3_int = 50;
  var dynamic4_int = -50;

  print('String fName: $fName');
  print('String fName: ${fName}');
  print('fName length: ${fName.length}');
}

String firstName() {
  return 'Stephen';
}
