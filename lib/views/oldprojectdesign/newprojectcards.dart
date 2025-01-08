import 'package:flutter/material.dart';

import '../../shared/screensize.dart';
import '../../wrapper/responsive.dart';

Widget newProjectContent(BuildContext context) {
  bool isSmall = ResponsiveWidget.isSmallScreen(context);
  double sWidth = ScreenSize.screenWidth * 0.8;
  double lWidth = ScreenSize.screenWidth * 0.32;
  double w = MediaQuery.of(context).size.width;
  return Container(
    //there is going to be a column where there is a heading and the wrap widget
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'my work',
          style: TextStyle(fontSize: 40),
        ),
        SizedBox(
          height: 40,
        ),
        //here will be the wraped widgets
        Wrap(
            direction: Axis.horizontal,
            spacing: 15,
            runSpacing: 30,
            children: <Widget>[
              Container(
                width: w / 2.4,
                child: Text("Hello"),
              ),
              Container(
                width: w / 2.4,
                child: Text("Hello"),
              ),
              Container(
                width: w / 2.4,
                child: Text("Hello"),
              ),
              Container(
                width: w / 2.4,
                child: Text("Hello"),
              ),
            ]),
      ],
    ),
  );
}
