import 'package:flutter/material.dart';
import 'package:mrconcrete/common/commonCalls.dart';

class Gradem25 extends StatefulWidget {
  static const String routeName = "/25";
  
  @override
  _GradeState createState() => new _GradeState();
}

class _GradeState extends State<Gradem25> {
  static String mxRatio25 = "1:1:2";
  static String mxGrade25 = "M25";
  static String mxStrength ="25Mpa";
  String appBarText ='$mxGrade25 Grade $mxRatio25';

  String infoText1 = 'Grade $mxGrade25 Concrete is with ingredients ratio as ';
  String infoText2bold =
      "$mxRatio25 (1 unit cement, 1 unit sand, 2 unit aggregate).";
  String infoText3 =
      "\nIts called so because with the $mxGrade25 grade concrete a strength of $mxStrength can be achieved with a curing of 28 days.";
  String infoText4 =
      "\n\nIn the below calculator increase the unit count for cement and get the unit count for sand and aggregate below to form a $mxGrade25 grade concrete.";
  String applicationsInfo =
      "\nIt is used in construction/casting of slabs, beams, columns, footings (for mild exposure).";
  String notes =
      "$mxGrade25 is a STANDARD GRADE of concrete.";
  var mxArr = [1.0, 2];

  double _cementCounter = 0;
  double _sandCounter = 0;
  double _aggregateCounter = 0;

  void _incrementMethod() {
    setState(() {
      _cementCounter += 1;
      _sandCounter = _cementCounter * CommonCalls.getSandRatio();
      _aggregateCounter = _cementCounter * CommonCalls.getArrgregateRatio();
    });
  }

  void _decrementorMethod() {
    setState(() {
      if (_cementCounter > 0) {
        _cementCounter -= 1;
        _sandCounter = _cementCounter * CommonCalls.getSandRatio();
        _aggregateCounter = _cementCounter * CommonCalls.getArrgregateRatio();
      }
    });
  }

  void _incrementToastAction(BuildContext context) {
    _incrementMethod();
  }

  void _decrementorAction(BuildContext context) {
    _decrementorMethod();
  }

  @override
  void initState() {
    super.initState();
    CommonCalls.feedNumbers(mxArr);
  }

  @override
  Widget build(BuildContext context) {
    Container infoTextContainerTop = new Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
        child: RichText(
            text: new TextSpan(
                style: new TextStyle(
                  fontSize: 13.0,
                  color: Colors.black87,
                ),
                children: <TextSpan>[
              new TextSpan(
                text: infoText1,
              ),
              new TextSpan(
                  text: infoText2bold,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              new TextSpan(text: infoText3),
              new TextSpan(
                  text: infoText4,
                  style: TextStyle(
                      fontStyle: FontStyle.italic, color: Colors.indigo)),
            ])));

    Container infoTextContainerBottom = new Container(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: RichText(
            text: new TextSpan(
                style: new TextStyle(
                  fontSize: 13.0,
                  color: Colors.black87,
                ),
                children: <TextSpan>[
              new TextSpan(
                  text: "Applications:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              new TextSpan(
                  text: applicationsInfo,
                  style: TextStyle(fontWeight: FontWeight.normal)),
              new TextSpan(
                  text: "\n\nNote:\n",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              new TextSpan(
                  text: notes, style: TextStyle(fontWeight: FontWeight.normal)),
            ])));

    Container firstContainer = new Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: new Text('$_cementCounter',
          style: TextStyle(height: 0.8, fontSize: 80, color: Colors.white)),
    );

    Container secondContainer = new Container(
        child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        new FlatButton(
          child: Column(children: <Widget>[
            Text(
              'Increase\nCement +1',
              textAlign: TextAlign.center,
            ),
            Icon(Icons.add_circle_outline)
          ]),
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0)),
          padding: EdgeInsets.all(5),
          splashColor: Colors.pink,
          color: Colors.green[300],
          onPressed: () {
            _incrementToastAction(context);
          },
        ),
        new FlatButton(
          child: Column(children: <Widget>[
            Text(
              'Reduce\nCement -1',
              textAlign: TextAlign.center,
            ),
            Icon(Icons.remove_circle_outline)
          ]),
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0)),
          color: Colors.red[100],
          splashColor: Colors.pink,
          padding: EdgeInsets.all(5),
          onPressed: () {
            _decrementorAction(context);
          },
        ),
      ],
    ));

    Container thirdContainer = new Container(
        child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new Card(
            color: Color.fromRGBO(251, 192, 45, 1.0),
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Text('$_sandCounter',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  height: 1,
                                  fontSize: 50,
                                  color: Colors.white))),
                      new Container(
                          padding: EdgeInsets.fromLTRB(5, 10, 0, 8),
                          child: Text('Sand',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  height: 0,
                                  fontSize: 18,
                                  color: Colors.white)))
                    ]))),
        new Card(
            color: Color.fromRGBO(92, 107, 192, 1.0),
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      new Container(
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Text('$_aggregateCounter',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                height: 1,
                                fontSize: 50,
                                color: Colors.white,
                              ))),
                      new Container(
                          padding: EdgeInsets.fromLTRB(0, 10, 5, 8),
                          child: Text('Aggregate',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                height: 0,
                                fontSize: 18,
                                color: Colors.white,
                              )))
                    ]))),
      ],
    ));

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
                  children: <Widget>[
                    infoTextContainerTop,
                    Divider(
                      color: Colors.white,
                      height: 0,
                    ),
                    new Container(
                        margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            elevation: 4,
                            color: Colors.grey,
                            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 20, 0, 15),
                                child: Column(
                                  children: <Widget>[
                                    firstContainer,
                                    secondContainer
                                  ],
                                )))),
                    Divider(
                      color: Colors.transparent,
                      height: 8,
                    ),
                    thirdContainer,
                    // calculatorContainer,
                    Divider(
                      color: Colors.transparent,
                      height: 8,
                    ),
                    infoTextContainerBottom,
                  ],
                ),
              ),
            )));
  }
}
