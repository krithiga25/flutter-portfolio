import 'package:flutter/material.dart';
import 'package:portfolio_web/views/home/homecomponents.dart';
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
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      //content: HomeImageWidget(),
      homeContent(context),
      //homeImage(context),
    ],
    //
  );
}
