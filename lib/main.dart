import 'package:flutter/material.dart';
import 'package:mrconcrete/screens/gradem10.dart';
import 'package:mrconcrete/screens/gradem15.dart';
import 'package:mrconcrete/screens/gradem20.dart';
import 'package:mrconcrete/screens/gradem25.dart';
import 'package:mrconcrete/screens/gradem30.dart';
import 'package:mrconcrete/screens/gradem35.dart';
import 'package:mrconcrete/screens/gradem40.dart';
import 'package:mrconcrete/screens/gradem5.dart';
import 'package:mrconcrete/screens/gradem50.dart';
import 'package:mrconcrete/screens/gradem8.dart';
import 'package:mrconcrete/screens/home.dart';

import 'screens/gradem60.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: <String,WidgetBuilder>{
        Gradem5.routeName:(BuildContext context)=> Gradem5(),
        Gradem8.routeName:(BuildContext context)=> Gradem8(),
        Gradem10.routeName:(BuildContext context)=> Gradem10(),
        Gradem15.routeName:(BuildContext context)=> Gradem15(),
        Gradem20.routeName:(BuildContext context)=> Gradem20(),
        Gradem25.routeName:(BuildContext context)=> Gradem25(),
        Gradem30.routeName:(BuildContext context)=> Gradem30(),
        Gradem35.routeName:(BuildContext context)=> Gradem35(),
        Gradem40.routeName:(BuildContext context)=> Gradem40(),
        Gradem50.routeName:(BuildContext context)=> Gradem50(),
        Gradem50.routeName:(BuildContext context)=> Gradem50(),
        Gradem60.routeName:(BuildContext context)=> Gradem60(),
      },
    );
  }
}