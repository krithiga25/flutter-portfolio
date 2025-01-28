import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:portfolio_web/widgets/defaultbutton.dart';
import 'package:portfolio_web/wrapper/responsive.dart';
import 'package:portfolio_web/shared/screensize.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

contactContent(BuildContext context) {
  return SizedBox(
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
          const SizedBox(
            height: 100,
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10, top: 50),
            child: Text(
              //change font
              "Get In Touch",
            textScaler: TextScaler.linear(3),
              style: TextStyle(color: Colors.white),
            ),
          ),

          Container(
            padding: const EdgeInsets.only(top: 20),
            child: RichText(
                textAlign: TextAlign.center,
                softWrap: true,
                text: TextSpan(children: [
                  const TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      text:
                          "I am open to Full-time opportunities and collaborations. If you're interested in connecting, feel free to reach out to me on "),
                  TextSpan(
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                      text: "LinkedIn",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launchUrl(Uri.parse('https://www.linkedin.com/feed/'));
                        }),
                  const TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      text: " or drop me an "),
                  TextSpan(
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                      text: "Email",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launchUrl(Uri.parse('mailto:krithiperu2002@gmail.com'));
                        }),
                ]), textScaler: const TextScaler.linear(1.25)),
          ),

          const SizedBox(
            height: 50,
          ),
          //maybe use a different button
          DefaultButton(
              text: "Say Hello",
              press: () {
                launchUrl(Uri.parse('mailto:krithiperu2002@gmail.com'));
              }),
        ],
      ),
    ),
  );
}

smallSocials(BuildContext context) {
  return SizedBox(
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
                   launchUrl(Uri.parse("https://github.com/krithiga25")),
                icon: Image.asset("assets/githubWhite.png"),
                iconSize: 20),
            //linkedin
            IconButton(
                onPressed: () =>launchUrl(
                   Uri.parse( "https://www.linkedin.com/in/krithigaperumal/")),
                icon: Image.asset("assets/linkedin.png"),
                iconSize: 20),
            //mail
            IconButton(
                onPressed: () =>
                   launchUrl(Uri.parse("https://github.com/krithiga25")),
                icon: Image.asset("assets/mailWhite.png"),
                iconSize: 20),
            //medium
            IconButton(
                onPressed: () =>
                   launchUrl(Uri.parse("https://github.com/krithiga25")),
                icon: Image.asset("assets/mediumWhite.png"),
                iconSize: 20),
            IconButton(
                onPressed: () =>
                  launchUrl(Uri.parse("https://github.com/krithiga25")),
                icon: Image.asset("assets/instaWhite.png"),
                iconSize: 20),
            IconButton(
                onPressed: () =>  launchUrl(Uri.parse("https://github.com/krithiga25")),
                icon: Image.asset("assets/twitter_white.png"),
                iconSize: 20),
          ],
        ),
        const SizedBox(height: 30),
        RichText(
            textAlign: TextAlign.center,
            softWrap: true,
            text: TextSpan(
                style: const TextStyle(
                  // fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
                text: 'Designed and built by Krithiga',
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launchUrl(Uri.parse("https://github.com/krithiga25"));
                  }), textScaler: const TextScaler.linear(1)),
      ],
    ),
  );
}
