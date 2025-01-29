import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/wrapper/responsive.dart';
import 'package:portfolio_web/shared/screensize.dart';

aboutHeading(BuildContext context) {
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
                "ABOUT ME",
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
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Center(
                child: Text(
              'Here you will find more information about me, what I do, and my current skills mostly in terms of programming and technology ',
              softWrap: true,
              textAlign: TextAlign.center,
              textScaler: TextScaler.linear(1),
              style: GoogleFonts.openSans(color: Colors.white, height: 1.5),
            )),
          ),
        ],
      ),
    ),
  );
}

aboutContent(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(
        left: ResponsiveWidget.isSmallScreen(context) ? 0 : 100),
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
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Get to know me!",
              textScaler: TextScaler.linear(1),
              style: GoogleFonts.openSans(
                  color: Colors.deepPurple, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "I'm a Frontend Web Developer building the Front-end of Websites and Web Applications that leads to the success of the overall product. Check out some of my work in the Projects section.",
              softWrap: true,
              textScaler: TextScaler.linear(1),
              style: GoogleFonts.openSans(color: Colors.white, height: 1.5),
            ),
          ),
        ],
      ),
    ),
  );
}

techContent(BuildContext context) {
  bool isSmall = ResponsiveWidget.isSmallScreen(context);
  double sWidth = ScreenSize.screenWidth * 0.75;
  double lWidth = ScreenSize.screenWidth * 0.32;
  return Container(
      width: isSmall ? sWidth : lWidth,
      padding: EdgeInsets.only(left: isSmall ? 0 : 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
                'Frontend Technologies',
                textScaler: TextScaler.linear(1.25),
                style: GoogleFonts.openSans(
                    color: Colors.deepPurple, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Text(
                '› Flutter › React › Nodejs › Expressjs',
                textScaler: TextScaler.linear(1),
                style: GoogleFonts.openSans(color: Colors.white, height: 1.5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Backend Technologies',
                textScaler: TextScaler.linear(1.25),
                style: GoogleFonts.openSans(
                    color: Colors.deepPurple, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Text(
                '› Dart › Javascript › C#',
                textScaler: TextScaler.linear(1),
                style: GoogleFonts.openSans(color: Colors.white, height: 1.5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Other Technologies',
                textScaler: TextScaler.linear(1.25),
                style: GoogleFonts.openSans(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    height: 1.5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Text(
                '› Dart › Javascript › C#',
                textScaler: TextScaler.linear(1),
                style: GoogleFonts.openSans(color: Colors.white, height: 1.5),
              ),
            ),
          ],
        ),
      ));
}
