import 'package:flutter/cupertino.dart';
import 'package:login_bloc/src/bloc/bloc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();
  Provider({Key key, Widget child})
      : super(
          key: key,
          child: child,
        );
  /*@override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    throw UnimplementedError();
  }*/
  bool updateShouldNotify(_) => true;

  static Bloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<Provider>().bloc);
  }
}
