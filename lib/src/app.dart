import 'package:flutter/material.dart';
import 'package:login_bloc/src/bloc/provider.dart';
import 'package:login_bloc/src/screens/login_screen.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Login Bloc',
        /*theme: ThemeData(
        primarySwatch: Colors.blue,
      ),*/
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
