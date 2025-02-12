import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/wrapper/responsive.dart';
import 'package:portfolio_web/shared/screensize.dart';

aboutHeading(BuildContext context) {
  bool isSmall = ResponsiveWidget.isSmallScreen(context);
  return SizedBox(
    width:
        isSmall ? ScreenSize.screenWidth * 0.75 : ScreenSize.screenWidth * 0.75,
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
            height: isSmall ? 10 : 20,
            thickness: isSmall ? 3 : 4,
            color: Colors.white,
            indent: isSmall ? 80 : 400,
            endIndent: isSmall ? 80 : 400,
          ),
          if (!isSmall)
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Center(
                  child: Text(
                'I’m a Software Development Engineer with one year of experience in crafting seamless digital experiences across mobile and web platforms. I have hands-on expertise in developing AI-driven features, optimizing performance, and contributing to open-source projects. Always eager to learn, grow, and collaborate on projects that make an impact.',
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
      mainAxisAlignment: MainAxisAlignment.start,
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
              textScaler: TextScaler.linear(1.25),
              style: GoogleFonts.openSans(
                  color: Color.fromARGB(255, 148, 89, 250),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "I’m a Software Development Engineer with a knack for crafting seamless digital experiences across mobile and web platforms. With hands-on experience in developing AI-driven features, optimizing performance, and contributing to open-source projects, I thrive on solving complex challenges. I’m always eager to learn, grow, and collaborate on projects that make an impact.",
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
                'Programming Languages:',
                textScaler: TextScaler.linear(1.25),
                style: GoogleFonts.openSans(
                    color: Color.fromARGB(255, 148, 89, 250),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Text(
                '› C#   › Dart   › JavaScript   › Python   › Java',
                textScaler: TextScaler.linear(1),
                style: GoogleFonts.openSans(color: Colors.white, height: 1.5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Web & App Development:',
                textScaler: TextScaler.linear(1.25),
                style: GoogleFonts.openSans(
                    color: Color.fromARGB(255, 148, 89, 250),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Text(
                '› Node.js   › Express.js   › React   › MERN Stack   › HTML   › CSS   › Android SDK   › Flutter   › Provider (Flutter)\n› Firebase',
                textScaler: TextScaler.linear(1),
                style: GoogleFonts.openSans(color: Colors.white, height: 1.5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Dev Ops:',
                textScaler: TextScaler.linear(1.25),
                style: GoogleFonts.openSans(
                    color: Color.fromARGB(255, 148, 89, 250),
                    fontWeight: FontWeight.bold,
                    height: 1.5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Text(
                '› Docker   › Jenkins   › GitHub Actions   › CI/CD Pipeline',
                textScaler: TextScaler.linear(1),
                style: GoogleFonts.openSans(color: Colors.white, height: 1.5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Tools and Technologies',
                textScaler: TextScaler.linear(1.25),
                style: GoogleFonts.openSans(
                    color: Color.fromARGB(255, 148, 89, 250),
                    fontWeight: FontWeight.bold,
                    height: 1.5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Text(
                '› Git    › GitHub   › Android Studio   › Visual Studio   › Xcode',
                textScaler: TextScaler.linear(1),
                style: GoogleFonts.openSans(color: Colors.white, height: 1.5),
              ),
            ),
          ],
        ),
      ));
}
