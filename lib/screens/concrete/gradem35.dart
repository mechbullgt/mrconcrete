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
      "$mxGrade35 is a design mix, used in RCC works (Reinforced Cement Concrete).\n\nIt can be used in construction of Slabs, beams, columns, footings.\n\nNote: Proportion of cement, sand and aggregate for a design mix are dependent on the actual quality of the material and hence the mix ratio can be know only by considering the sample of materials being used.";
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
