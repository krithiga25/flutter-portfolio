import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/shared/screensize.dart';
import 'package:portfolio_web/wrapper/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

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
  final pdfViewerPoints = [
    "- Optimized encrypted PDF loading, reducing Windows load time from 30s to 4s and fixing Android hang issues.",
    "- Built sticky note annotation using custom RenderObject trees for accurate rendering in the PDF viewport.",
    //"Integrated AI features including Smart Fill, summarization, and Smart Redact using LLM APIs.",
    "- Implemented Linux platform support via Flutter method channels for cross-desktop compatibility.",
    "- Improved rendering performance through native integrations using Java (Android) and Swift/Obj-C++ (iOS).",
    //"Resolved high-priority customer issues and critical bugs improving plugin stability.",
    //"- Maintained integration tests, automation scripts, and golden tests for UI consistency.",
    //"Worked in Agile sprints with regular scrum and retrospectives for iterative feature delivery.",
  ];

  final widgetsPoints = [
    "- Contributed to the Syncfusion Flutter Widgets demo app published on Google Play and Apple App Store.",
    "- Built an expense tracker sample showcasing charts, data grids, and date pickers for real-world usage.",
    "- Developed an interactive stock chart demo demonstrating real-time visualization and optimized rendering.",
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
                            "Feb 2024 - Jan 2026",
                            softWrap: true,
                            style: GoogleFonts.openSans(color: Colors.white70),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            textScaler: TextScaler.linear(1.25),
                            "Software Engineer",
                            softWrap: true,
                            style: GoogleFonts.openSans(
                                color: Color.fromARGB(255, 148, 89, 250),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Product: Syncfusion Flutter PDF Viewer",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white70,
                                    fontSize: isSmall ? 13 : 14.5,
                                  ),
                                ),
                                const SizedBox(width: 6),
                                IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                  icon: const Icon(
                                    Icons.open_in_new,
                                    size: 16,
                                    color: Colors.white70,
                                  ),
                                  onPressed: () {
                                    launchUrl(
                                      Uri.parse(
                                        'https://pub.dev/packages/syncfusion_flutter_pdfviewer',
                                      ),
                                    );
                                  },
                                ),
                              ],
                            )),
                        Column(
                          children: [
                            ...pdfViewerPoints.map((point) => Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    textScaler: isSmall
                                        ? TextScaler.linear(0.95)
                                        : TextScaler.linear(1),
                                    point,
                                    softWrap: true,
                                    style: GoogleFonts.openSans(
                                      fontSize: isSmall ? 12 : 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Product: Syncfusion Flutter UI Widgets",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white70,
                                    fontSize: isSmall ? 13 : 14.5,
                                  ),
                                ),
                                const SizedBox(width: 6),
                                IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                  icon: const Icon(
                                    Icons.open_in_new,
                                    size: 16,
                                    color: Colors.white70,
                                  ),
                                  onPressed: () {
                                    launchUrl(
                                      Uri.parse(
                                        'https://play.google.com/store/apps/details?id=com.syncfusion.flutter.examples&hl=en',
                                      ),
                                    );
                                  },
                                ),
                              ],
                            )),
                        Column(
                          children: [
                            ...widgetsPoints.map((point) => Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    textScaler: isSmall
                                        ? TextScaler.linear(0.95)
                                        : TextScaler.linear(1),
                                    point,
                                    softWrap: true,
                                    style: GoogleFonts.openSans(
                                      fontSize: isSmall ? 12 : 13,
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
