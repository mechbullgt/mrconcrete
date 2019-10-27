import 'package:flutter/material.dart';
import 'package:mrconcrete/common/commonCalls.dart';

class ConcreteHome extends StatefulWidget {
  static const String routeName = "/chome";

  @override
  _ConcreteHomeState createState() => new _ConcreteHomeState();
}

class _ConcreteHomeState extends State<ConcreteHome> {

    Container getStructuredGridCell(name,grade,category,colorKey,context) {
    return CommonCalls.getGridContainer(name,grade,category,colorKey,context);
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body:Container(decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color(0xff2c3e50),
                  Color(0xff3498db)
                ],
              ),
            ),
            child:  new GridView.count(
      primary: true,
      padding: const EdgeInsets.all(8.0),
      crossAxisCount: 2,
      childAspectRatio: 1.75,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
        getStructuredGridCell("Grade M5",5,'Lean',0,context),
        getStructuredGridCell("Grade M7.5",8,'Lean',0,context),
        getStructuredGridCell("Grade M10",10,'Ordinary',1,context),
        getStructuredGridCell("Grade M15",15,'Ordinary',1,context),
        getStructuredGridCell("Grade M20",20,'Ordinary',1,context),
        getStructuredGridCell("Grade M25",25,'Standard',2,context),
        getStructuredGridCell("Grade M30",30,'Standard',2,context),
        getStructuredGridCell("Grade M35",35,'Standard',2,context),
        getStructuredGridCell("Grade M40",40,'Standard',2,context),
        getStructuredGridCell("Grade M50",50,'High Strength',3,context),
        getStructuredGridCell("Grade M60",60,'High Strength',3,context),
      ],
    )
    ));
  }

}