import 'package:flutter/material.dart';

class Gradem50 extends StatefulWidget {
  static const String routeName = "/50";

  @override
  _GradeState createState() => new _GradeState();
}

class _GradeState extends State<Gradem50> {
  static String mxGrade50 = "M50";
  String appBarText = '$mxGrade50 Grade';

  String infoText =
      "$mxGrade50 is a design mix, used as RCC (Reinforced Cement Concrete).\n\nIt can be used in construction of pre-stressed concrete slabs, beams, columns, footings, runways, concrete Roads (PQC), pressurised concrete girders, pressurised beams.";
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

// User taps on close and the pop is gone.
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
