import 'package:flutter/material.dart';
import 'package:mrconcrete/screens/gradem20.dart';
import 'package:mrconcrete/screens/gradem10.dart';
import 'package:mrconcrete/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: <String,WidgetBuilder>{
        Gradem20.routeName:(BuildContext context)=> Gradem20(),
        Gradem10.routeName:(BuildContext context)=> Gradem10(),
      },
    );
  }
}