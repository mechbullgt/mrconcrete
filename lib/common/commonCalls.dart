import 'package:flutter/material.dart';

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

  static String getMxNameForAppBar(String mxGrade, String mxRatio) {
    String mxName = '$mxGrade Grade $mxRatio';
    print("Name" + mxName);
    return mxName;
  }
}
