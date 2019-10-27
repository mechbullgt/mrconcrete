import 'package:flutter/material.dart';

class CementWorksHome extends StatelessWidget {
  Container getStructuredGridCell(name, grade, category, context) {
    return new Container(
        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
        height: 0.5,
        child: Card(
            elevation: 5,
            color: Colors.yellow,
            child: InkWell(
                splashColor: Colors.blue,
                onTap: () {
                  print('Card tapped:' + '$grade');
                  Navigator.of(context).pushNamed("/$grade");
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  verticalDirection: VerticalDirection.down,
                  children: <Widget>[
                    Container(
                      alignment: Alignment(0, 0),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 5, 0),
                        child: Text(
                          category,
                        ))
                  ],
                ))));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Cement Works",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  "Know About Concrete & Mortar Mixes",
                  style: TextStyle(fontSize: 15),
                )
              ]),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[Color(0xff2c3e50), Color(0xff3498db)],
              ),
            ),
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[Color(0xff2c3e50), Color(0xff3498db)],
              ),
            ),
            child: Center(
                child: SingleChildScrollView(
                    child: Column(children: <Widget>[
              Container(
                width: 200,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 100,
                child: getStructuredGridCell(
                    "Concrete Works", 'chome', 'Grades', context),
              ),
              Container(
                  width: 200,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  height: 100,
                  child: getStructuredGridCell(
                      "Mortar Works", 'mhome', 'Ratios', context))
            ])))));
  }
}
