//will have description about myself and my skills

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio_web/views/about/aboutcomponents.dart';
import 'package:portfolio_web/shared/constants.dart';

//import 'package:portfolio_web/sample.dart';

Widget lAbout(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height,
    child: Column(
      //center

      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 200),
        aboutHeading(context),
        SizedBox(
          height: 100,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            aboutContent(context),

            skillsContent(context),
            //HomePage(),
            // Add other widgets as needed
          ],
        ),
      ],
    ),
  );
}

Widget sAbout(BuildContext context) {
  return Container(
    child: Column(
      //spaceevenly
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 100),
        aboutHeading(context),
        aboutContent(context),
        SizedBox(
          height: 50,
        ),
        skillsContent(context),
      ],
      //content: HomeImageWidget()
    ),
  );
}
