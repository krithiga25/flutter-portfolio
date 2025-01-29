import 'package:flutter/material.dart';
import 'package:portfolio_web/views/about/aboutcomponents.dart';

Widget lAbout(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.only(top: 100, bottom: 100),
            child: aboutHeading(context)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            aboutContent(context),
            techContent(context),
          ],
        ),
      ],
    ),
  );
}

Widget sAbout(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      const SizedBox(height: 50),
      aboutHeading(context),
      aboutContent(context),
      techContent(context),
    ],
  );
}
