import 'package:flutter/material.dart';

class ConcreteHome extends StatefulWidget {
  static const String routeName = "/chome";

  @override
  _ConcreteHomeState createState() => new _ConcreteHomeState();
}

class _ConcreteHomeState extends State<ConcreteHome> {

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
                  padding: EdgeInsets.fromLTRB(0, 12, 30, 0),
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
            Text("Concrete",style: TextStyle(fontSize: 25),),
            Text("Know Your Concrete Mix",style: TextStyle(fontSize: 15),)
          ]),
          centerTitle: true,
        ),
        body: new GridView.count(
      primary: true,
      padding: const EdgeInsets.all(8.0),
      crossAxisCount: 2,
      childAspectRatio: 1.75,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
        getStructuredGridCell("Grade M5",5,'Lean',context),
        getStructuredGridCell("Grade M7.5",8,'Lean',context),
        getStructuredGridCell("Grade M10",10,'Ordinary',context),
        getStructuredGridCell("Grade M15",15,'Ordinary',context),
        getStructuredGridCell("Grade M20",20,'Ordinary',context),
        getStructuredGridCell("Grade M25",25,'Standard',context),
        getStructuredGridCell("Grade M30",30,'Standard',context),
        getStructuredGridCell("Grade M35",35,'Standard',context),
        getStructuredGridCell("Grade M40",40,'Standard',context),
        getStructuredGridCell("Grade M50",50,'High Strength',context),
        getStructuredGridCell("Grade M55",55,'High Strength',context),
        getStructuredGridCell("Grade M60",60,'High Strength',context),
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