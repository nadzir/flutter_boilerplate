import 'package:flutter/material.dart';

// Class is to determine the width and height of device
// Device is divided up into multiple blocks and widget can set size based on the number of blocks required
// eg. Container(
//      width: blockSizeWidth * 30,
//      height: blockSizeHeight * 100,
//      )
class SizeConfig {
  static double width;
  static double height;
  static double blockSizeWidth;
  static double blockSizeHeight;

  static setContext(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    blockSizeWidth = width / 100;
    blockSizeHeight = height / 100;
  }
}
