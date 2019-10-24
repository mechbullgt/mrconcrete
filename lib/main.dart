import 'package:flutter/material.dart';
import 'package:mrconcrete/cement-works-home.dart';
import 'package:mrconcrete/screens/concrete/concretehome.dart';
import 'package:mrconcrete/screens/concrete/gradem10.dart';
import 'package:mrconcrete/screens/concrete/gradem15.dart';
import 'package:mrconcrete/screens/concrete/gradem20.dart';
import 'package:mrconcrete/screens/concrete/gradem25.dart';
import 'package:mrconcrete/screens/concrete/gradem30.dart';
import 'package:mrconcrete/screens/concrete/gradem35.dart';
import 'package:mrconcrete/screens/concrete/gradem40.dart';
import 'package:mrconcrete/screens/concrete/gradem5.dart';
import 'package:mrconcrete/screens/concrete/gradem50.dart';
import 'package:mrconcrete/screens/concrete/gradem55.dart';
import 'package:mrconcrete/screens/concrete/gradem60.dart';
import 'package:mrconcrete/screens/concrete/gradem8.dart';
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
        MortarHome.routeName:(BuildContext context)=>MortarHome(),
        Gradem5.routeName:(BuildContext context)=>Gradem5(),
        Gradem8.routeName:(BuildContext context)=> Gradem8(),
        Gradem10.routeName:(BuildContext context)=> Gradem10(),
        Gradem15.routeName:(BuildContext context)=> Gradem15(),
        Gradem20.routeName:(BuildContext context)=> Gradem20(),
        Gradem25.routeName:(BuildContext context)=> Gradem25(),
        Gradem30.routeName:(BuildContext context)=> Gradem30(),
        Gradem35.routeName:(BuildContext context)=> Gradem35(),
        Gradem40.routeName:(BuildContext context)=> Gradem40(),
        Gradem50.routeName:(BuildContext context)=> Gradem50(),
        Gradem55.routeName:(BuildContext context)=> Gradem55(),
        Gradem60.routeName:(BuildContext context)=> Gradem60(),
      },
    );
  }
}