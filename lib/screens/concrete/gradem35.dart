import 'package:flutter/material.dart';

class Gradem35 extends StatefulWidget {
  static const String routeName = "/35";

  @override
  _GradeState createState() => new _GradeState();
}

class _GradeState extends State<Gradem35> {
  static String mxGrade35 = "M35";
  static String mxStrength = "35 Mpa";
  String appBarText = '$mxGrade35 Grade';

  String infoText =
      "$mxGrade35 is known as Design Mix and is used as RCC (Reinforce Cement Concrete).\n\nIt can be used in construction of Slabs, beams, columns, footings.";

  void _showMaterialDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Information'),
            content: Text(infoText),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    _dismissToGoBackFromDialog();
                  },
                  child: Text('Close')),
              // FlatButton(
              //   onPressed: () {
              //     print('HelloWorld!');
              //     _dismissToGoBackFromDialog();
              //   },
              //   child: Text('Print HelloWorld!'),
              // )
            ],
          );
        });
  }

  _dismissToGoBackFromDialog() {
    Navigator.popUntil(context, ModalRoute.withName('/chome'));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 100)).then((_) {
      _showMaterialDialog();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text(appBarText),
        ),
        body: new Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
            constraints: BoxConstraints(
              maxHeight: double.infinity,
              maxWidth: MediaQuery.of(context).size.width,
              minHeight: 0,
              minWidth: 200,
            ),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: <Widget>[],
                ),
              ),
            )));
  }
}
