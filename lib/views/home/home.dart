/*this file will only have two separate widgets to be returned when it's either smallscreen
or largescreen. */

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:portfolio_web/views/home/homecomponents.dart';
import 'package:portfolio_web/shared/constants.dart';
//import 'package:portfolio_web/sample.dart';

Widget lHome(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height,
    padding: const EdgeInsets.only(top: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        //another widget
        homeContent(context),
      ],
    ),
  );
}

Widget sHome(BuildContext context) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        //content: HomeImageWidget(),
        homeContent(context),
        //homeImage(context),
      ],
      //
    ),
  );
}
