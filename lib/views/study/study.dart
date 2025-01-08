//its cards
import 'package:flutter/material.dart';
import 'package:portfolio_web/views/study/studycomponents.dart';
import 'package:portfolio_web/views/study/studytabbar.dart';

/*this file will only have two separate widgets to be returned when it's either smallscreen
or largescreen. */
import 'package:flutter/rendering.dart';
import 'package:portfolio_web/shared/constants.dart';
//import 'package:portfolio_web/sample.dart';

Widget lStudy(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(top: 50),
    decoration: const BoxDecoration(color: Color.fromARGB(255, 12, 20, 65)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        //StudyTab(),
        studyContent(context)
        //studyTab(context),
      ],
    ),
  );
}

Widget sStudy(BuildContext context) {
  return Container(
    decoration: const BoxDecoration(
        /*
      gradient: LinearGradient(
        //background colour here
        colors: [kwhite, kyellow],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.4, 0.6],
      ),*/
        color: Color.fromARGB(255, 12, 20, 65)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        //content: HomeImageWidget(),
        //studyTab(context),
        studyContent(context)
        //homeImage(context),
      ],
      //
    ),
  );
}
