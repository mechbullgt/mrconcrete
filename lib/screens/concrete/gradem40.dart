import 'package:flutter/material.dart';

class Gradem40 extends StatefulWidget {
  static const String routeName = "/40";

  @override
  _GradeState createState() => new _GradeState();
}

class _GradeState extends State<Gradem40> {
  static String mxGrade40 = "M40";
  static String mxStrength = "40 Mpa";
  String appBarText = '$mxGrade40 Grade';

  String infoText =
      "$mxGrade40 is a design mix, used for RCC works (Reinforced Cement Concrete).\n\nIt can be used in construction of pre-stressed concrete slabs, beams, columns, footings, runways, concrete Roads (PQC), pressurised concrete girders, pressurised beams.";
  static String notes="Note: Proportion of cement, sand and aggregate for a design mix are dependent on the actual quality of the material and hence the mix ratio can be know only by considering the sample of materials being used.";
  
  Container infoTextContainerBottom = new Container(
    child:Center(
        child: RichText(
            text: new TextSpan(
                style: new TextStyle(
                  fontSize: 13.0,
                  color: Colors.black87,
                ),
                children: <TextSpan>[
              new TextSpan(
                  text: notes, style: TextStyle(fontWeight: FontWeight.normal)),
            ]))));
  
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
                    _dismissToGoBackFromDialog(context);
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

  _dismissToGoBackFromDialog(context) {
    // Navigator.popUntil(context, ModalRoute.withName('/chome'));
    Navigator.pop(context);
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
                  children: <Widget>[infoTextContainerBottom],
                ),
              ),
            )));
  }
}
