//how am i going to list the projects?

//carousel cards
import 'package:carousel_slider/carousel_state.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../shared/screensize.dart';
import '../../wrapper/responsive.dart';
import 'dart:html' as html;

//created a class to store all the project details
class ProjectContent {
  final String title;
  final String description;
  String imagePath;

  ProjectContent({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

//creating a list of projects
final List<ProjectContent> projects = [
  ProjectContent(
    title:
        'Pitch Extraction and Notes Generation Implementation using Tensorflow',
    description: 'Description for Project 1.',
    imagePath: 'assets/articleone.jpg',
  ),
  ProjectContent(
    title: 'Project 2',
    description: 'Description for Project 2.',
    imagePath: 'assets/articleone.jpg',
  ),
];

researchCards(BuildContext context) {
  //for carousel card width
  bool isSmall = ResponsiveWidget.isSmallScreen(context);
  double sWidth = ScreenSize.screenWidth * 0.75;
  double lWidth = ScreenSize.screenWidth * 0.32;

  return Container(
      width: ResponsiveWidget.isSmallScreen(context)
          ? ScreenSize.screenWidth * 0.75
          //changed it to 0.32 from 0.20
          : ScreenSize.screenWidth * 0.32,
      //i guess this width should be placed inside another container widget. this container is overall container,
      //create a list of elements to be displayed in the cards and then map it
      child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: AnimationConfiguration.toStaggeredList(
              duration: const Duration(milliseconds: 1000),
              childAnimationBuilder: (widget) => SlideAnimation(
                    child: FadeInAnimation(
                      child: widget,
                    ),
                  ),
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      //color: Colors.white,
                      //borderRadius: BorderRadius.circular(15.0),
                      /* boxShadow: [
                      BoxShadow(
                        color: Colors.teal.withOpacity(1), // Shadow color
                        spreadRadius: 4, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: Offset(0, 3), // Shadow offset
                      ),
                    ], */
                      ),
                  child: CarouselSlider(
                    options: CarouselOptions(
                        //height: MediaQuery.of(context).size.height,
                        height: 400,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        onPageChanged: (index, reason) {
                          // Handle page change if needed
                        },
                        viewportFraction: 1.0),
                    items: projects.map((project) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: isSmall ? sWidth : lWidth,
                            //margin: EdgeInsets.symmetric(horizontal: 5.0),
                            //padding: EdgeInsets.all(10),

                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.8),
                              //color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              /* boxShadow: [
                      BoxShadow(
                        color: Colors.teal.withOpacity(1), // Shadow color
                        spreadRadius: 4, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: Offset(0, 3), // Shadow offset
                      ),
                    ], */
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  project.title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 24.0, color: Colors.purple),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  project.description,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16.0, color: Colors.purple),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
                //can create dots navigator to navigate to the slides and mention the selcted and unselected colours for the dots
              ])));
}

researchDescription(BuildContext context) {
  return Container(
    width: ResponsiveWidget.isSmallScreen(context)
        ? ScreenSize.screenWidth * 0.75
        : ScreenSize.screenWidth * 0.32,
    child: Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        /* Text(
          //change font
          'Throughout my final year, I collaborated with my professors in several research projects and indulged in writing thesis papers. I presented the papers at international conferences and got them published in reputed journals. ',
          //https://scholar.google.com/citations?user=eaKLcP4AAAAJ&hl=en
          softWrap: true,
          // textAlign: TextAlign.center,
          textScaleFactor: 1,
          style: TextStyle(
            color: Colors.white,
            height: 1.5,
          ),
        ), */
        RichText(
            textAlign: ResponsiveWidget.isSmallScreen(context)
                ? TextAlign.center
                : TextAlign.left,
            softWrap: true,
            textScaleFactor: 1.1,
            text: TextSpan(children: [
              TextSpan(
                  style: TextStyle(
                    color: Colors.white,
                    height: 1.5,
                  ),
                  text:
                      "Throughout my final year, I collaborated with my professors in several research projects and indulged in writing thesis papers. I presented the papers at "),
              TextSpan(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                    height: 1.5,
                  ),
                  text: "international conferences",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch('https://www.linkedin.com/feed/');
                    }),
              TextSpan(
                  style: TextStyle(color: Colors.white, height: 1.5),
                  text: " and got them "),
              TextSpan(
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                      height: 1.5),
                  text: "published",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(
                          'https://scholar.google.com/citations?user=eaKLcP4AAAAJ&hl=en');
                    }),
              TextSpan(
                  style: TextStyle(color: Colors.white, height: 1.5),
                  text: " in reputed journals."),
            ])),
      ],
    ),
  );
}

researchHeading(BuildContext context) {
  return Container(
    width: ResponsiveWidget.isSmallScreen(context)
        ? ScreenSize.screenWidth * 0.75
        : ScreenSize.screenWidth * 0.75,
    child: Column(children: [
      SizedBox(
        height: 40,
      ),
      Container(
        padding: EdgeInsets.only(top: 50, bottom: 5),
        child: Text(
          //change font
          "RESEARCH WORK",
          textScaleFactor: 2,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
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
      //SizedBox(height: 20),
      /*   Padding(
        padding: EdgeInsets.only(top: 10, bottom: 40),
        child: Center(
            child: Text(
          'Here you will find more information about me, what I do, and my current skills mostly in terms of programming and technology ',
          softWrap: true,
          textAlign: TextAlign.center,
          textScaleFactor: 1,
          style: TextStyle(color: Colors.white, height: 1.5),
        )),
      ), */
    ]),
  );
}
