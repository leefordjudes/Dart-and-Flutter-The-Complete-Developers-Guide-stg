import 'dart:io';

class Person {
  String? firstName; // nullable
  late String lastName; // required

  printName() {
    if (firstName != null) {
      stdout.write('${firstName} ');
    }
    stdout.write('${lastName}');
    print('');
  }
}

class Account {
  late String acName;
  late String acType;
  late String dispName;

  Account(name, type, this.dispName) {
    acName = name;
    acType = type;
  }

  printAccount() {
    print('${acName} ${acType} ${dispName}');
  }

  @override
  String toString() {
    return '{acNam: ${acName}, acType: ${acType}, gstType: ${dispName}}';
  }
}

void main() {
  // var p1 = new Person();
  // p1.firstName = 'Stephen';
  // p1.lastName = 'Grider';
  // p1.printName();

  // var p2 = new Person();

  // p2.lastName = 'Grider';
  // p2.printName();

  var ac1 = new Account('name', 'type', 'dispname');
  ac1.printAccount();
  print('ac string: ${ac1.toString()}');
}
