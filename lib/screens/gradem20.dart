import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Gradem20 extends StatefulWidget {
  static const String routeName = "/20";

  @override
  _GradeState createState() => new _GradeState();
}

class _GradeState extends State<Gradem20> {
  String m20Ratio = "M20 Grade 1:1.5:3";
  var m20 = [1.5, 3];
  double sandRatio = 0;
  double aggregateRatio = 0;

  void setSandRatio(int grade) {
    if (grade == 20) {
      sandRatio = m20[0];
      debugPrint('Setting Sand Ratio:' + '$sandRatio');
    }
  }

  double getSandRatio(int grade) {
    double currentRatio;
    if (grade == 20) {
      currentRatio = sandRatio;
      debugPrint('Getting Sand Ratio:' + '$currentRatio');
    }
    return currentRatio;
  }

  void setAggregateRatio(int grade) {
    if (grade == 20) {
      aggregateRatio = (m20[1]).toDouble();
      debugPrint('Setting Aggregate Ratio:' + '$aggregateRatio');
    }
  }

  double getArrgregateRatio(double grade) {
    double currentRatio;
    if (grade == 20) {
      currentRatio = aggregateRatio;
      debugPrint('Getting Aggregate Ratio:' + '$currentRatio');
    }
    return currentRatio;
  }

  double _cementCounter = 0;
  double _sandCounter = 0;
  double _aggregateCounter = 0;

  void _incrementMethod(int grade) {
    setState(() {
      switch (grade) {
        case 20:
          {
            _cementCounter += 1;
            _sandCounter = _cementCounter * getSandRatio(20);
            _aggregateCounter = _cementCounter * getArrgregateRatio(20);
          }
          break;
        case 2:
          {
            _sandCounter += 1;
          }
          break;
        case 3:
          {
            _aggregateCounter += 1;
          }
          break;
      }
    });
  }

  void _decrementorMethod(int options) {
    setState(() {
      switch (options) {
        case 20:
          {
            if (_cementCounter > 0) {
              _cementCounter -= 1;
              _sandCounter = _cementCounter * getSandRatio(20);
              _aggregateCounter = _cementCounter * getArrgregateRatio(20);
            }
          }
          break;
        case 2:
          {
            if (_sandCounter > 0) {
              _sandCounter -= 1;
            }
          }
          break;
        case 3:
          {
            if (_aggregateCounter > 0) {
              _aggregateCounter -= 1;
            }
          }
          break;
      }
    });
  }

  void _incrementToastAction(BuildContext context, int x) {
    switch (x) {
      case 20:
        {
          _incrementMethod(20);
          // Fluttertoast.showToast(
          //     msg: "Cement +1",
          //     toastLength: Toast.LENGTH_SHORT,
          //     gravity: ToastGravity.CENTER,
          //     backgroundColor: Colors.grey[300],
          //     textColor: Colors.black,
          //     fontSize: 16.0);
        }
        break;
      case 2:
        {
          _incrementMethod(x);
        }
        break;
      case 3:
        {
          _incrementMethod(x);
        }
        break;
    }
  }

  void _decrementorAction(BuildContext context, int y) {
    switch (y) {
      case 20:
        {
          _decrementorMethod(20);
        }
        break;
      case 2:
        {
          _decrementorMethod(2);
        }
        break;
      case 3:
        {
          _decrementorMethod(3);
        }
        break;
    }
  }

  void feedNumbers(int grade) {
    if (grade == 20) {
      setSandRatio(20);
      setAggregateRatio(20);
    }
  }

  @override
  void initState() {
    super.initState();
    feedNumbers(20);
  }

  @override
  Widget build(BuildContext context) {
    Container infoTextContainer = new Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        height: 150.0,
        child: RichText(
            text: new TextSpan(
                style: new TextStyle(
                  fontSize: 13.0,
                  color: Colors.black87,
                ),
                children: <TextSpan>[
              new TextSpan(
                text: "Grade M20 Concrete is with ingredients ratio as ",
              ),
              new TextSpan(
                  text:
                      "1:1.5:2 (1 unit cement, 1.5 unit sand, 2 unit aggregate).",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              new TextSpan(
                  text:
                      "\nIts called so because with the M20 grade concrete a strength of 20MPa can be achieved with a curing of 28days."),
              new TextSpan(
                  text:
                      "\n\nIn the below calculator increase the unit count for cement and get the unit count for sand and aggregate below to form a M20 grade concrete.",
                  style: TextStyle(
                      fontStyle: FontStyle.italic, color: Colors.indigo)),
            ])));

    Container firstContainer = new Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: new Text('$_cementCounter',
          style: TextStyle(height: 0.8, fontSize: 80, color: Colors.white)),
    );

    Container secondContainer = new Container(
        child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            _incrementToastAction(context, 20);
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
            _decrementorAction(context, 20);
          },
        ),
      ],
    ));

    Container thirdContainer = new Container(
        child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new Card(
          color: Color.fromRGBO(251, 192, 45,1.0),
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
                child: Column(children: <Widget>[
                  new Container(
                      child: Text('$_sandCounter',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              height: 1.5, fontSize: 30, color: Colors.white))),
                  new Container(
                      child: Text('Sand',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              height: 1.5, fontSize: 20, color: Colors.white)))
                ]))),
        new Text('Aggregate \n $_aggregateCounter',
            style: TextStyle(
                height: 1.5,
                fontSize: 20,
                color: Color.fromRGBO(64, 64, 64, 100))),
      ],
    ));

    return new Scaffold(
        appBar: AppBar(
          title: Text("Grade M20"),
        ),
        body: new Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.fromLTRB(12, 0, 12, 25),
            constraints: BoxConstraints(
                maxHeight: double.infinity, maxWidth: 300, minHeight: 0, minWidth: 200),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: <Widget>[
                    infoTextContainer,
                    Divider(
                      color: Colors.white,
                      height: 10,
                    ),
                    new Container(
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            elevation: 4,
                            color: Colors.grey,
                            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
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
                  ],
                ),
              ),
            )));
  }
}