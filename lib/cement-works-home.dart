import 'package:flutter/material.dart';

class CementWorksHome extends StatelessWidget {
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
            Text("Cement Works",style: TextStyle(fontSize: 25),),
            Text("Know Concrete & Mortar Mix",style: TextStyle(fontSize: 15),)
          ]),
          centerTitle: true,
        ),
        body: new GridView.count(
      primary: true,
      padding: const EdgeInsets.all(10.0),
      crossAxisCount: 1,
      childAspectRatio: 2.0,
      mainAxisSpacing: 0.25,
      crossAxisSpacing: 0.5,
      children: <Widget>[
        getStructuredGridCell("Concrete",'chome','Know More',context),
        getStructuredGridCell("Mortar",'mhome','Know More',context),
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