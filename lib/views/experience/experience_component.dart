import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/shared/screensize.dart';
import 'package:portfolio_web/wrapper/responsive.dart';

Widget experienceHeading(BuildContext context) {
  final isSmall = ResponsiveWidget.isSmallScreen(context);
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
                "EXPERIENCE",
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
        ],
      ),
    ),
  );
}

Widget experienceContent(BuildContext context, {PageController? controller}) {
  List<String> points = [
    "• Developed key features like Sticky Note Annotation, Smart Fill, AI Summarization, and Smart Reduct in the PDF Viewer product.",
    "• Improved cross-platform support with Linux compatibility and WebAssembly (WASM) integration.",
    "• Optimized PDF rendering performance on Windows (C#) and Android (Java), reducing load times.",
    "• Contributed to the Syncfusion Flutter Components Showcase (Web, Android, iOS) with new features.",
    "• Followed Scrum practices, actively participating in sprint planning, daily stand-ups, retrospectives, and backlog grooming."
  ];
  final isSmall = ResponsiveWidget.isSmallScreen(context);
  return Container(
    padding: EdgeInsets.only(
        top: isSmall ? 40 : 30.0,
        bottom: 20,
        left: isSmall ? 50 : 50,
        right: isSmall ? 30 : 0),
    width:
        isSmall ? ScreenSize.screenWidth * 0.75 : ScreenSize.screenWidth * 0.32,
    child: Column(
      mainAxisAlignment:
          isSmall ? MainAxisAlignment.start : MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: AnimationConfiguration.toStaggeredList(
        duration: const Duration(milliseconds: 1000),
        childAnimationBuilder: (widget) => SlideAnimation(
          child: FadeInAnimation(
            child: widget,
          ),
        ),
        children: <Widget>[
          Stack(
            children: [
              if (isSmall)
                Positioned(
                  bottom: -17,
                  right: 6,
                  child: IconButton(
                    onPressed: () => controller?.animateToPage(1,
                        duration: const Duration(milliseconds: 1200),
                        curve: Curves.easeInOutSine),
                    icon: RotatedBox(
                      quarterTurns: 3,
                      child: Icon(
                        Icons.expand_more,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
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
                      height: isSmall ? 500 : 460,
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
                                color: Color.fromARGB(255, 148, 89, 250),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            textScaler: TextScaler.linear(1),
                            "Product: Essential Studios – Syncfusion Flutter PDF Viewer ",
                            softWrap: true,
                            style: GoogleFonts.openSans(color: Colors.white70),
                          ),
                        ),
                        Column(
                          children: [
                            ...points.map((point) => Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    textScaler: isSmall
                                        ? TextScaler.linear(0.95)
                                        : TextScaler.linear(1),
                                    point,
                                    softWrap: true,
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}

skillsContent(BuildContext context) {
  List skills = [
    'Git',
    'Github',
    'Firebase',
    'CI/CD',
    'AWS Storage',
    'Dart DevTools',
    'Prompt Engineering',
    'Xcode',
    'Android Studio',
    'Visual Studio',
    'Product Development',
  ];
  bool isSmall = ResponsiveWidget.isSmallScreen(context);
  double sWidth = ScreenSize.screenWidth * 0.75;
  double lWidth = ScreenSize.screenWidth * 0.32;
  return Container(
      width: isSmall ? sWidth : lWidth,
      padding: EdgeInsets.only(
        top: 30.0,
        bottom: 20,
        left: isSmall ? 50 : 0,
      ),
      child: Column(
        mainAxisAlignment:
            isSmall ? MainAxisAlignment.start : MainAxisAlignment.center,
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
                'Programming Languages & Frameworks',
                textScaler: TextScaler.linear(isSmall ? 1.15 : 1.25),
                style: GoogleFonts.openSans(
                    color: Color.fromARGB(255, 148, 89, 250),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Text(
                '• Dart    • Javascript   • C#    • Flutter',
                textScaler: TextScaler.linear(1),
                style: GoogleFonts.openSans(color: Colors.white, height: 1.5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10, right: isSmall ? 10 : 0),
              child: Text(
                'Cross-Platform & Plugin Development',
                textScaler: TextScaler.linear(isSmall ? 1.15 : 1.25),
                style: GoogleFonts.openSans(
                    color: Color.fromARGB(255, 148, 89, 250),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 25, right: isSmall ? 10 : 0),
              child: Text(
                '• Android SDK tools    • Flutter Plugin Development',
                textScaler: TextScaler.linear(1),
                style: GoogleFonts.openSans(color: Colors.white, height: 1.5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Testing & Automation',
                textScaler: TextScaler.linear(isSmall ? 1.15 : 1.25),
                style: GoogleFonts.openSans(
                    color: Color.fromARGB(255, 148, 89, 250),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 25, right: isSmall ? 10 : 0),
              child: Text(
                '• Flutter Driver   • Mockito   • UI Automation   • Golden Widget Testing\n• Integration Testing',
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
                    color: Color.fromARGB(255, 148, 89, 250),
                    fontWeight: FontWeight.bold),
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
                      style: GoogleFonts.openSans(
                          color: Colors.grey[850], fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ));
}
