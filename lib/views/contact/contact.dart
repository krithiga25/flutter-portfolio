
import 'package:flutter/material.dart';
import 'package:portfolio_web/views/contact/contactcomponents.dart';

Widget lContact(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(top: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        contactContent(context),
      ],
    ),
  );
}

Widget sContact(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      contactContent(context),
      const SizedBox(height: 200),
      smallSocials(context)
    ],
    //
  );
}
