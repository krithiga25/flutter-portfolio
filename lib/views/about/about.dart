import 'package:flutter/material.dart';
import 'package:portfolio_web/views/about/aboutcomponents.dart';

Widget lAbout(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const SizedBox(height: 200),
        aboutHeading(context),
        const SizedBox(
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
  return Column(
    //spaceevenly
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      const SizedBox(height: 100),
      aboutHeading(context),
      aboutContent(context),
      const SizedBox(
        height: 50,
      ),
      skillsContent(context),
    ],
    //content: HomeImageWidget()
  );
}
