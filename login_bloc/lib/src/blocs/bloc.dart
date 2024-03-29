import 'dart:async';
import 'validators.dart';
import 'package:rxdart/rxdart.dart';

// class Bloc with Validators {
class Bloc extends Object with Validators {
  // final _email = StreamController<String>(); // single subscriber
  // final _password = StreamController<String>(); // single subscriber
  // final _email = StreamController<String>.broadcast(); // multiple subscriber
  // final _password = StreamController<String>.broadcast(); // multiple subscriber
  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();

  // Add data to stream
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);
  Stream<bool> get submitValid =>
      Rx.combineLatest2(email, password, (e, p) => true);
  // Change data
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  submit() {
    final validEmail = _email.value;
    final validPassword = _password.value;

    print('Entered email: $validEmail');
    print('Entered password: $validPassword');
  }

  dispose() {
    _email.close();
    _password.close();
  }
}

// final bloc = Bloc();
