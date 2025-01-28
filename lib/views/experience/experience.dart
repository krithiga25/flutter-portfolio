import 'package:flutter/material.dart';
import 'package:portfolio_web/views/experience/experience_component.dart';
//import 'package:portfolio_web/sample.dart';

Widget lExperience(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height,
    padding: const EdgeInsets.only(top: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 50),
          child: lExperienceHeading(context),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            lExperienceContent(context),
            skillsContent(context),
          ],
        ),
      ],
    ),
  );
}

Widget sExperience(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
     
      Padding(
        padding: const EdgeInsets.only(top:120),
        child: lExperienceHeading(context),
      ),
      Expanded(
        child: PageView(
          children: [
            lExperienceContent(context),
            skillsContent(context),
          ],
        ),
      ),
    ],
  );
}
