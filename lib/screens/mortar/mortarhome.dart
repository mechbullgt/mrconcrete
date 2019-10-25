import 'package:flutter/material.dart';

class MortarHome extends StatefulWidget {
  static const String routeName = "/mhome";

  @override
  _MortarHomeState createState() => new _MortarHomeState();
}

class _MortarHomeState extends State<MortarHome> {
    Container getStructuredGridCell(name,grade,category,context) {
    return new Container(
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
      height: 0.5,
      child:Card(
      elevation: 10,
      color: Colors.grey,
        child: InkWell(
            splashColor: Colors.blue,
            onTap: () {
              print('Card tapped:'+'$grade');
              Navigator.of(context).pushNamed("/$grade");
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.fromLTRB(5, 12, 15, 0),
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
                  padding: EdgeInsets.fromLTRB(0, 8, 5, 0),
                  child:Text(category,))
              ],
            ))));
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title:Column(
             mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
            children:[
            Text("Mortar",style: TextStyle(fontSize: 25),),
            Text("Know Your Mortar Mix",style: TextStyle(fontSize: 15),)
          ]),
          centerTitle: true,
        ),
        body: new GridView.count(
      primary: true,
      padding: const EdgeInsets.all(8.0),
      crossAxisCount: 2,
      childAspectRatio: 1.5,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
        getStructuredGridCell('4.5" Wall',5,'1:4 / Type S',context),
        getStructuredGridCell('9" Wall',5,'1:6 / Type N',context),
        getStructuredGridCell("Wall Plastering",5,'1:6 / Type N',context),
        getStructuredGridCell('Ceiling Plastering',5,'1:4 / Type S',context),
        getStructuredGridCell("1:9",5,'Type O',context),
        getStructuredGridCell("1:12",5,'Type K',context),
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