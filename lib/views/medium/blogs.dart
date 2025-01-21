import 'package:flutter/material.dart';
import 'package:portfolio_web/views/medium/blogcomponents.dart';
//import 'package:portfolio_web/sample.dart';

Widget lBlog(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height,
    padding: const EdgeInsets.only(top: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        //SizedBox(height: 100),
        //another widget
        blogContent(context),
      ],
    ),
  );
}

Widget sBlog(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(top: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        //content: HomeImageWidget(),
        const SizedBox(height: 100),
        blogContent(context),
        //homeImage(context),
      ],
      //
    ),
  );
}
