//how am i going to list the projects?

//will have description about myself and my skills

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio_web/views/about/aboutcomponents.dart';
import 'package:portfolio_web/shared/constants.dart';

import 'package:portfolio_web/views/oldprojectdesign/newprojectcards.dart';
//import 'package:portfolio_web/views/projects/projectcarousel.dart';
import 'package:portfolio_web/views/oldprojectdesign/projectcards.dart';
import 'package:portfolio_web/views/oldprojectdesign/tryproject.dart';
import 'package:portfolio_web/views/oldprojectdesign/tryprojectsmall.dart';
//import 'package:portfolio_web/sample.dart';

Widget lProject(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(top: 10),

    //child: tryProject(context),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //another widget
        tryProject(context),
        //newProjectContent(context),
      ],
    ),
  );
}

Widget sProject(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(top: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        //newProjectContent(context),
        trySmallProject(context),
      ],
      //content: HomeImageWidget()
    ),
  );
}
