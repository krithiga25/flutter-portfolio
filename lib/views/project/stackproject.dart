import 'package:flutter/material.dart';
import 'package:portfolio_web/shared/screensize.dart';
import 'package:portfolio_web/views/project/stackprojectcomponent.dart';
import 'package:portfolio_web/wrapper/responsive.dart';

Widget lStackproject(BuildContext context) {
  return SizedBox(
    width: ResponsiveWidget.isSmallScreen(context)
        ? ScreenSize.screenWidth * 0.75
        : ScreenSize.screenWidth * 0.85,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        projectHeading(context),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [project1(context), project2(context)],
        ),
      ],
    ),
  );
}

Widget lStackproject2(BuildContext context) {
  return SizedBox(
    width: ResponsiveWidget.isSmallScreen(context)
        ? ScreenSize.screenWidth * 0.75
        : ScreenSize.screenWidth * 0.85,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        project3(context),
      ],
    ),
  );
}

Widget sStackProject(BuildContext context) {
  return SizedBox(
    width: ScreenSize.screenWidth * 0.75,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 5),
        projectHeading(context),
        project1(context),
      ],
    ),
  );
}

Widget sStackProject2(BuildContext context) {
  return SizedBox(
    width: ScreenSize.screenWidth * 0.75,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 5),
        project2(context),
      ],
    ),
  );
}

Widget sStackProject3(BuildContext context) {
  return SizedBox(
    width: ScreenSize.screenWidth * 0.75,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 5),
        project3(context),
      ],
    ),
  );
}
