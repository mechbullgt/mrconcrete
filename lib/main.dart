import 'package:flutter/material.dart';
import 'package:mrconcrete/concretegrid.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 final ConcreteGridView concreteGridView = new ConcreteGridView();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Mr Concrete"),
        ),
        body: concreteGridView.build(),
      )
    );
  }
}