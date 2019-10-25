import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class CommonCalls {
  // String mxRatio = "M5 Grade 1:5:10";
  // static String gradeName="M5";
  // static String gradeStrength ="5Mpa";
  // String infoText1='Grade ' +gradeName+' Concrete is with ingredients ratio as ';
  // String infoText2="1:5:10 (1 unit cement, 5 unit sand, 10 unit aggregate).";
  // String infoText3="\nIts called so because with the "+gradeName+" grade concrete a strength of "+gradeStrength+" can be achieved with a curing of 28days.";
  // String infoText4="\n\nIn the below calculator increase the unit count for cement and get the unit count for sand and aggregate below to form a M5 grade concrete.";
  // String applicationText ="\nIts used to form a uniform surface for the foundation concrete. This surface prevents the direct contact of foundation with loose soil in the footing.";
  // String noteText1="As per standards around 30-35 liters of water must be added per 50kg of cement in a Grade M20 concrete mix.";
  // var mxArr = [5.0, 10];
  static double sandRatio = 0;
  static double aggregateRatio = 0;

  static final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 2, // number of method calls to be displayed
    errorMethodCount: 8, // number of method calls if stacktrace is provided
    lineLength: 120, // width of the output
    colors: true, // Colorful log messages
    printEmojis: true, // Print an emoji for each log message
    printTime: false // Should each log print contain a timestamp
  ),
  );

  static void setSandRatio(mxArr) {
    sandRatio = mxArr[0];
    debugPrint('Setting Sand Ratio:' + '$sandRatio');
  }

  static double getSandRatio() {
    double currentRatio;
    currentRatio = sandRatio;
    debugPrint('Getting Sand Ratio:' + '$currentRatio');
    return currentRatio;
  }

  static void setAggregateRatio(mxArr) {
    aggregateRatio = (mxArr[1]).toDouble();
    debugPrint('Setting Aggregate Ratio:' + '$aggregateRatio');
  }

  static double getArrgregateRatio() {
    double currentRatio;
    currentRatio = aggregateRatio;
    debugPrint('Getting Aggregate Ratio:' + '$currentRatio');
    return currentRatio;
  }

  static void feedNumbers(mxArr) {
    setSandRatio(mxArr);
    setAggregateRatio(mxArr);
  }

 // Method to return color for the card as per the card type
  static Color getColorForCard(int key){
    switch (key) {
      case 1:
      return Colors.blue;
      case 2:
      return Colors.green;
      case 3:
      return Colors.red;
      break;
      default:
      return Colors.grey;
    }
    }

  static Container getGridContainer(name,grade,category,int colorKey,context) {
    return new Container(
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
      height: 0.5,
      child:Card(
      elevation: 10,
      color: getColorForCard(colorKey),
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
 
  // static String getMxNameForAppBar(String mxGrade, String mxRatio) {
  //   String mxName = '$mxGrade Grade $mxRatio';
  //   print("Name: " + mxName);
  //   return mxName;
  // }
}
