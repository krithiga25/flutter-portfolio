import 'package:flutter/material.dart';

//a file to get the size of the screen whenever it is deformed.
// uses mediaquery

class ScreenSize {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
  }
}

double getProportionateScreenHeight(double inputHeight) {
  return (inputHeight / 812.0) * ScreenSize.screenHeight;
}

double getProportionateScreenWidth(double inputWidth) {
  return (inputWidth / 375.0) * ScreenSize.screenWidth;
}

double getHeight() {
  return ScreenSize.screenHeight;
}
