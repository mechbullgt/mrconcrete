import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
    Card getStructuredGridCell(name,grade,context) {
    return new Card(
        child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              print('Card tapped:'+'$grade');
              Navigator.of(context).pushNamed("/$grade");
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                Center(
                  child: Text(
                    name,
                    style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                )
              ],
            )));
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: new GridView.count(
      primary: true,
      padding: const EdgeInsets.all(10.0),
      crossAxisCount: 2,
      childAspectRatio: 1,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
        getStructuredGridCell("Grade M5",5,context),
        getStructuredGridCell("Grade M10",10,context),
        getStructuredGridCell("Grade M15",15,context),
        getStructuredGridCell("Grade M20",20,context),
      ],
    )
        // body: new Container(
        //     child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         mainAxisAlignment: MainAxisAlignment.spaceAround,
        //         mainAxisSize: MainAxisSize.max,
        //         verticalDirection: VerticalDirection.down,
        //         children: <Widget>[
        //       Card(
        //           child: InkWell(
        //         splashColor: Colors.blue.withAlpha(30),
        //         onTap: () {
        //           print('Card tapped:' + '1');
        //           Navigator.of(context).pushNamed("/1");
        //         },
        //         child: Text(
        //           "Grade M5",
        //           style: TextStyle(
        //               color: Colors.brown,
        //               fontWeight: FontWeight.bold,
        //               fontSize: 20),
        //         ),
        //       )),
        //       Card(
        //           child: InkWell(
        //         splashColor: Colors.blue.withAlpha(30),
        //         onTap: () {
        //           print('Card tapped:' + '1');
        //           Navigator.of(context).pushNamed("/gradem5");
        //         },
        //         child: Text(
        //           "Grade M10",
        //           style: TextStyle(
        //               color: Colors.brown,
        //               fontWeight: FontWeight.bold,
        //               fontSize: 20),
        //         ),
        //       ))
        //     ]))
        );
  }
}