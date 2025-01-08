import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../shared/screensize.dart';
import '../../wrapper/responsive.dart';

/* studyContent(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      StaggeredAnimation(
        duration: Duration(seconds: 1),
        startIndex: 0,
        builder: (context, animation) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: Offset(-1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              margin: EdgeInsets.all(16),
            ),
          );
        },
      ),
      StaggeredAnimationBuilder(
        duration: Duration(seconds: 1),
        startIndex: 1,
        builder: (context, animation) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: Offset(1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
              margin: EdgeInsets.all(16),
            ),
          );
        },
      ),
    ],
  );
} */

studyContent(BuildContext context) {
  return SizedBox(
    //the text is not centered
    width: ResponsiveWidget.isSmallScreen(context)
        ? ScreenSize.screenWidth * 0.75
        //changed it to 0.75 from 0.32
        : ScreenSize.screenWidth * 0.75,

    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: AnimationConfiguration.toStaggeredList(
        duration: const Duration(milliseconds: 1000),
        childAnimationBuilder: (widget) => SlideAnimation(
          child: FadeInAnimation(
            child: widget,
          ),
        ),
        children: <Widget>[
          Container(
            //padding: EdgeInsets.only(bottom: 100),
            width: 400, // Adjust the size of the circle avatar
            height: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Text("HIIII"),
          ),
          SizedBox(
            width: 40,
          ),
          Container(
            //padding: EdgeInsets.only(bottom: 100),
            width: 400, // Adjust the size of the circle avatar
            height: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Text("HIIII"),
          ),
          /* const Padding(
            padding: EdgeInsets.only(bottom: 10, top: 50),
            child: Text(
              //change font
              "HEY, I'M KRITHIGA PERUMAL!",
              style: TextStyle(color: Colors.white, height: 1.5),
              textAlign: TextAlign.center,
              textScaleFactor: 3,
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                textAlign: TextAlign.center,
                "I'm a Computer Science undergrad from Rajalakshmi Engineering College, Chennai, riding the coding wave. I love tinkering with web and Android development, diving into the world of data, and sprinkling some machine learning magic for good measure.",
                softWrap: true,
                textScaleFactor: 1,
                style: TextStyle(color: Colors.white, height: 1.5),
              ),
            ),
          ), */
        ],
      ),
    ),
  );
}
