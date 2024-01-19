import 'dart:async';

void main() {
  final bloc = new Bloc();

  // bloc.emailController.stream.listen((value) {
  //   print(value);
  // });

  bloc.email.listen((value) {
    print(value);
  });

  // bloc.emailController.sink.add('My New Email');
  bloc.changeEmail('My New Email');
}

class Bloc {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  // Add data to stream
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;
  // Retrieve data from stream
  Stream<String> get email => _emailController.stream;
  Stream<String> get password => _passwordController.stream;
}
