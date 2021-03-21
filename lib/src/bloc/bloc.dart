import 'dart:async';

import 'package:login_bloc/src/bloc/validators.dart';

class Bloc extends Object with Validators {
  final _email = StreamController<String>();
  final _password = StreamController<String>();

  //Add data to stream
  Stream<String> get email => _email.stream;
  Stream<String> get password => _password.stream;

  //Change data
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;
}