import 'package:flutter/material.dart';
import 'package:portfolio_web/views/research/researchcomponents.dart';

Widget lResearch(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(top: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        researchHeading(context),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            researchDescription(context),
            researchCards(context),
          ],
        ),
      ],
    ),
  );
}

Widget sResearch(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(top: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        researchHeading(context),
        researchDescription(context),
        researchCards(context),
      ],
    ),
  );
}
