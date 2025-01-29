/*this file will the content inside the home screen. */
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:portfolio_web/wrapper/responsive.dart';
import 'package:portfolio_web/shared/screensize.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

homeContent(BuildContext context) {
  int circleWidth = 300;
  return SizedBox(
    width: ResponsiveWidget.isSmallScreen(context)
        ? ScreenSize.screenWidth * 0.75
        : ScreenSize.screenWidth * 0.75,

    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: AnimationConfiguration.toStaggeredList(
        duration: const Duration(milliseconds: 1000),
        childAnimationBuilder: (widget) => SlideAnimation(
          child: FadeInAnimation(
            child: widget,
          ),
        ),
        children: <Widget>[
          CircleAvatar(
            radius: circleWidth / 2.0,
            backgroundImage: Image.asset(
              'assets/profile_pic.jpg',
              filterQuality: FilterQuality.high,
            ).image,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 50),
            child: AnimatedTextKit(
              isRepeatingAnimation: false,
              animatedTexts: [
                TyperAnimatedText(
                  "HEY, I'M KRITHIGA PERUMAL!",
                  //speed: Duration(seconds: 3),
                  textAlign: TextAlign.center,
                  textStyle:
                      GoogleFonts.openSans(color: Colors.white, fontSize: 30),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              textAlign: TextAlign.center,
              "I'm a Software Engineer working at Syncfusion Private Limited, fasinated in development with frontend and backend.",
              softWrap: true,
              textScaler: TextScaler.linear(1),
              style: GoogleFonts.openSans(color: Colors.white, height: 1.5),
            ),
          ),
        ],
      ),
    ),
  );
}
