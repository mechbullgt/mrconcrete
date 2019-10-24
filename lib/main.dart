import 'package:flutter/material.dart';
import 'package:mrconcrete/cement-works-home.dart';
import 'package:mrconcrete/screens/concrete/concretehome.dart';
import 'package:mrconcrete/screens/mortar/mortarhome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CementWorksHome(),
      routes: <String,WidgetBuilder>{
        ConcreteHome.routeName:(BuildContext context)=> ConcreteHome(),
        MortarHome.routeName:(BuildContext context)=>MortarHome()
      },
    );
  }
}