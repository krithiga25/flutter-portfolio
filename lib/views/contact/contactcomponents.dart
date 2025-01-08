//the components of the about are: "get to know me more" and "my skills"
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:portfolio_web/shared/constants.dart';
import 'package:portfolio_web/widgets/defaultbutton.dart';
import 'package:portfolio_web/wrapper/responsive.dart';
import 'package:portfolio_web/shared/screensize.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';
import 'dart:html' as html;

contactContent(BuildContext context) {
  return Container(
    width: ResponsiveWidget.isSmallScreen(context)
        ? ScreenSize.screenWidth * 0.75
        : ScreenSize.screenWidth * 0.75,
    child: Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: AnimationConfiguration.toStaggeredList(
        duration: const Duration(milliseconds: 1000),
        childAnimationBuilder: (widget) => SlideAnimation(
          child: FadeInAnimation(
            child: widget,
          ),
        ),
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10, top: 50),
            child: Text(
              //change font
              "Get In Touch",
              textScaleFactor: 3,
              style: TextStyle(color: Colors.white),
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 20),
            child: RichText(
                textAlign: TextAlign.center,
                softWrap: true,
                textScaleFactor: 1.25,
                text: TextSpan(children: [
                  TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      text:
                          "I am open to Full-time opportunities and collaborations. If you're interested in connecting, feel free to reach out to me on "),
                  TextSpan(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                      text: "LinkedIn",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launch('https://www.linkedin.com/feed/');
                        }),
                  TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      text: " or drop me an "),
                  TextSpan(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                      text: "Email",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launch('mailto:krithiperu2002@gmail.com');
                        }),
                ])),
          ),

          SizedBox(
            height: 50,
          ),
          //maybe use a different button
          DefaultButton(
              text: "Say Hello",
              press: () {
                launch('mailto:krithiperu2002@gmail.com');
              }),
        ],
      ),
    ),
  );
}

smallSocials(BuildContext context) {
  return Container(
    // margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
    //color: Colors.white,
    width: ScreenSize.screenWidth * 0.8,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () =>
                    html.window.open("https://github.com/krithiga25", "GitHub"),
                icon: Image.asset("assets/githubWhite.png"),
                iconSize: 20),
            //linkedin
            IconButton(
                onPressed: () => html.window.open(
                    "https://www.linkedin.com/in/krithigaperumal/", "LinkedIn"),
                icon: Image.asset("assets/linkedin.png"),
                iconSize: 20),
            //mail
            IconButton(
                onPressed: () =>
                    html.window.open("https://github.com/krithiga25", "Mail"),
                icon: Image.asset("assets/mailWhite.png"),
                iconSize: 20),
            //medium
            IconButton(
                onPressed: () =>
                    html.window.open("https://github.com/krithiga25", "Medium"),
                icon: Image.asset("assets/mediumWhite.png"),
                iconSize: 20),
            IconButton(
                onPressed: () =>
                    html.window.open("https://github.com/krithiga25", "Medium"),
                icon: Image.asset("assets/instaWhite.png"),
                iconSize: 20),
            IconButton(
                onPressed: () => html.window
                    .open("https://github.com/krithiga25", "Twitter"),
                icon: Image.asset("assets/twitter_white.png"),
                iconSize: 20),
          ],
        ),
        SizedBox(height: 30),
        RichText(
            textAlign: TextAlign.center,
            softWrap: true,
            textScaleFactor: 1,
            text: TextSpan(
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
                text: 'Designed and built by Krithiga',
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launch("https://github.com/krithiga25");
                  })),
      ],
    ),
  );
}
