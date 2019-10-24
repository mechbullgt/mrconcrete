// import 'package:flutter/material.dart';

// class ConcreteGridView {
//   Card getStructuredGridCell(name,grade) {
//     return new Card(
//         child: InkWell(
//             splashColor: Colors.blue.withAlpha(30),
//             onTap: () {
//               print('Card tapped:'+'$grade');
//               // Navigator.of(context).pushNamed(routeName)
//             },
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               mainAxisSize: MainAxisSize.min,
//               verticalDirection: VerticalDirection.down,
//               children: <Widget>[
//                 Center(
//                   child: Text(
//                     name,
//                     style: TextStyle(
//                         color: Colors.brown,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20),
//                   ),
//                 )
//               ],
//             )));
//   }

//   GridView build() {
//     return new GridView.count(
//       primary: true,
//       padding: const EdgeInsets.all(10.0),
//       crossAxisCount: 2,
//       childAspectRatio: 1,
//       mainAxisSpacing: 1.0,
//       crossAxisSpacing: 1.0,
//       children: <Widget>[
//         getStructuredGridCell("Grade M5",5),
//         getStructuredGridCell("Grade M10",10),
//         getStructuredGridCell("Grade M15",15),
//         getStructuredGridCell("Grade M20",20),
//         getStructuredGridCell("Grade M25",25),
//         getStructuredGridCell("Grade M30",30),
//       ],
//     );
//   }
// }
