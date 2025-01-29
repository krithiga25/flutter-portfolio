import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/shared/screensize.dart';
import 'package:portfolio_web/wrapper/responsive.dart';

Widget experienceHeading(BuildContext context) {
  return SizedBox(
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
          Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Center(
              child: Text(
                "EXPERIENCE",
                textScaler: TextScaler.linear(2),
                style: GoogleFonts.openSans(color: Colors.white, fontSize: 15),
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
        ],
      ),
    ),
  );
}

Widget experienceContent(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(
        top: ResponsiveWidget.isSmallScreen(context) ? 50 : 50.0,
        bottom: 20,
        left: ResponsiveWidget.isSmallScreen(context) ? 50 : 50),
    width: ResponsiveWidget.isSmallScreen(context)
        ? ScreenSize.screenWidth * 0.75
        : ScreenSize.screenWidth * 0.32,
    child: Column(
      mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
          ? MainAxisAlignment.start
          : MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: AnimationConfiguration.toStaggeredList(
        duration: const Duration(milliseconds: 1000),
        childAnimationBuilder: (widget) => SlideAnimation(
          child: FadeInAnimation(
            child: widget,
          ),
        ),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white70,
                            blurRadius: 10,
                            spreadRadius: 4,
                          ),
                        ],
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3),
                        color: Color(0xFF000435),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 1,
                  height: ResponsiveWidget.isSmallScreen(context) ? 500 : 400,
                  color: Colors.white,
                ),
              ]),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Text(
                        "Syncfusion Software.",
                        textScaler: TextScaler.linear(1),
                        softWrap: true,
                        style: GoogleFonts.openSans(color: Colors.white70),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        textScaler: TextScaler.linear(1),
                        "Feb 2024 - Present",
                        softWrap: true,
                        style: GoogleFonts.openSans(color: Colors.white70),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        textScaler: TextScaler.linear(1.25),
                        "Software Engineer Developer",
                        softWrap: true,
                        style: GoogleFonts.openSans(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        textScaler: TextScaler.linear(1),
                        "• Worked on building cross-platform mobile applications. Developed enterprise-level software solutions.",
                        softWrap: true,
                        style: GoogleFonts.openSans(
                            color: Colors.white, height: 1.5),
                      ),
                    ),
                    Text(
                      textScaler: TextScaler.linear(1),
                      "• Worked on building cross-platform mobile applications. Developed enterprise-level software solutions.",
                      softWrap: true,
                      style: GoogleFonts.openSans(color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}

skillsContent(BuildContext context) {
  List<String> skills = [
    'Flutter',
    'Dart',
    'Javascript',
    'Java',
    'Git',
    'React',
    'Nodejs',
    'Expressjs',
    'MongoDB',
    'Tailwind CSS',
    'Firebase',
    'Prompt Engineering',
    'Product Development',
  ];
  bool isSmall = ResponsiveWidget.isSmallScreen(context);
  double sWidth = ScreenSize.screenWidth * 0.75;
  double lWidth = ScreenSize.screenWidth * 0.32;
  return Container(
      width: isSmall ? sWidth : lWidth,
      padding: EdgeInsets.only(
          top: 50.0,
          bottom: 20,
          left: ResponsiveWidget.isSmallScreen(context) ? 50 : 0),
      child: Column(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? MainAxisAlignment.start
            : MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: AnimationConfiguration.toStaggeredList(
          duration: const Duration(milliseconds: 1000),
          childAnimationBuilder: (widget) => SlideAnimation(
            child: FadeInAnimation(
              child: widget,
            ),
          ),
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Frameworks and Libraries',
                textScaler: TextScaler.linear(1.25),
                style: GoogleFonts.openSans(
                    color: Colors.deepPurple, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Text(
                '• Flutter • React • Nodejs • Expressjs',
                textScaler: TextScaler.linear(1),
                style: GoogleFonts.openSans(color: Colors.white, height: 1.5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Programming Languages',
                textScaler: TextScaler.linear(1.25),
                style: GoogleFonts.openSans(
                    color: Colors.deepPurple, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Text(
                '• Dart • Javascript • C#',
                textScaler: TextScaler.linear(1),
                style: GoogleFonts.openSans(color: Colors.white, height: 1.5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Technical skills',
                textScaler: TextScaler.linear(1.25),
                style: GoogleFonts.openSans(
                    color: Colors.deepPurple, fontWeight: FontWeight.bold),
              ),
            ),
            Wrap(
              spacing: 7,
              runSpacing: 7,
              children: skills.map((skill) {
                return Card(
                  elevation: 3.0,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      skill,
                      style: GoogleFonts.openSans(color: Colors.black),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ));
}
