import 'package:flutter/material.dart';
import 'package:mrconcrete/common/commonCalls.dart';

class MortarHome extends StatefulWidget {
  static const String routeName = "/mhome";

  @override
  _MortarHomeState createState() => new _MortarHomeState();
}

class _MortarHomeState extends State<MortarHome> {
      Container getStructuredGridCell(name,grade,category,colorKey,context) {
    return CommonCalls.getGridContainer(name,grade,category,colorKey,context);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Container(decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color(0xff2c3e50),
                  Color(0xff3498db)
                ],
              ),
            ),
            child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          mainAxisSpacing: 0.5,
          crossAxisSpacing: 0.5,
          children: <Widget>[
            getStructuredGridCell(
                'Brickwork\n4.5" Wall', 45, '1:4 / Type S',0, context),
            getStructuredGridCell(
                'Brickwork\n9" Wall', 90, '1:6 / Type N',0, context),
            getStructuredGridCell(
                "Interior Wall Plastering", 95, '1:6 / Type N',2, context),
            getStructuredGridCell(
                'Ceiling Plastering', 100, '1:4 / Type S',2, context),
            getStructuredGridCell(
                "Beam/Column Plastering", 105, '1:3 / Type M',2, context),
            getStructuredGridCell(
                "Exterior Wall Plastering", 110, '1:4 / Type S',2, context),
            getStructuredGridCell(
                "Exterior Repair Work", 115, '1:3 / Type M',3, context),
          ],
    )));
  }
}
