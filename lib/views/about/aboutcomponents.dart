//the components of the about are: "get to know me more" and "my skills"
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:portfolio_web/shared/constants.dart';
import 'package:portfolio_web/views/contact/contact.dart';
import 'package:portfolio_web/wrapper/responsive.dart';
import 'package:portfolio_web/shared/screensize.dart';
import 'package:portfolio_web/widgets/headerbutton.dart';
import 'package:portfolio_web/widgets/headerbutton.dart';

aboutHeading(BuildContext context) {
  return Container(
    width: ResponsiveWidget.isSmallScreen(context)
        ? ScreenSize.screenWidth * 0.75
        : ScreenSize.screenWidth * 0.75,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: AnimationConfiguration.toStaggeredList(
        duration: const Duration(milliseconds: 1000),
        childAnimationBuilder: (widget) => SlideAnimation(
          child: FadeInAnimation(
            child: widget,
          ),
        ),
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Center(
              child: Text(
                //change font
                "ABOUT ME",
                textScaleFactor: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Divider(
            height: 20.0,
            thickness: 4.0,
            color: Colors.white,
            indent: ResponsiveWidget.isSmallScreen(context) ? 150 : 400,
            endIndent: ResponsiveWidget.isSmallScreen(context) ? 150 : 400,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Center(
                child: Text(
              'Here you will find more information about me, what I do, and my current skills mostly in terms of programming and technology ',
              softWrap: true,
              textAlign: TextAlign.center,
              textScaleFactor: 1,
              style: TextStyle(color: Colors.white, height: 1.5),
            )),
          ),
        ],
      ),
    ),
  );
}

aboutContent(BuildContext context) {
  return Container(
    //the text is not centered
    width: ResponsiveWidget.isSmallScreen(context)
        ? ScreenSize.screenWidth * 0.75
        : ScreenSize.screenWidth * 0.32,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: AnimationConfiguration.toStaggeredList(
        duration: const Duration(milliseconds: 1000),
        childAnimationBuilder: (widget) => SlideAnimation(
          child: FadeInAnimation(
            child: widget,
          ),
        ),
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              //change font
              "Get to know me!",
              textScaleFactor: 1,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "I'm a Frontend Web Developer building the Front-end of Websites and Web Applications that leads to the success of the overall product. Check out some of my work in the Projects section.",
              softWrap: true,
              textScaleFactor: 1,
              style: TextStyle(color: Colors.white, height: 1.5),
            ),
          ),
        ],
      ),
    ),
  );
}

//make it as cards:
skillsContent(BuildContext context) {
  List<String> skills = [
    'Flutter',
    'Dart',
    'Javascript',
    'Java',
    'Git',
    'React',
    'Nodejs',
  ];
  bool isSmall = ResponsiveWidget.isSmallScreen(context);
  double sWidth = ScreenSize.screenWidth * 0.75;
  double lWidth = ScreenSize.screenWidth * 0.32;
  return Container(
      width: isSmall ? sWidth : lWidth,
      //i changed here: before: edgeInsets.all(16)
      padding: EdgeInsets.only(top: 10.0, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: AnimationConfiguration.toStaggeredList(
          duration: Duration(milliseconds: 1000),
          childAnimationBuilder: (widget) => SlideAnimation(
            child: FadeInAnimation(
              child: widget,
            ),
          ),
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'My Skills',
                textScaleFactor: 1,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            //SizedBox(height: 8.0),
            Wrap(
              spacing: 16.0, // Adjust the spacing between cards
              runSpacing: 16.0, // Adjust the spacing between rows of cards
              children: skills.map((skill) {
                return Card(
                  elevation: 3.0, // Card elevation (shadow)
                  color: Colors.white, // Set card background color to white
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(skill),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ));
}
