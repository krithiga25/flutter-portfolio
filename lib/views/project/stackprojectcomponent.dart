import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/wrapper/responsive.dart';
import 'package:portfolio_web/shared/screensize.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageWidget extends StatefulWidget {
  final String imagepath;
  final String link;

  const ImageWidget({super.key, required this.imagepath, required this.link});

  @override
  ImageWidgetState createState() => ImageWidgetState();
}

class ImageWidgetState extends State<ImageWidget>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 1.1).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: ResponsiveWidget.isSmallScreen(context)
          ? ScreenSize.screenWidth * 0.75
          : ScreenSize.screenWidth * 0.32,
      child: MouseRegion(
        onEnter: (event) {
          _animationController.forward();
        },
        onExit: (event) {
          _animationController.reverse();
        },
        child: Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            Container(
              width: 350,
              height: ResponsiveWidget.isSmallScreen(context) ? 300 : 400,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 3),
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
              ),
            ),
            Positioned(
              top: -30,
              left: -20,
              child: Container(
                width: 350,
                height: ResponsiveWidget.isSmallScreen(context) ? 300 : 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: AnimatedBuilder(
                  animation: _scaleAnimation,
                  builder: (context, child) {
                    return Transform.scale(
                      scale: _scaleAnimation.value,
                      child: InkWell(
                          onTap: () {
                            launch(widget.link);
                          },
                          child: Image.asset(widget.imagepath)),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

launch(String link) async {
  if (await canLaunchUrl(Uri.parse(link))) {
    await launchUrl(Uri.parse(link));
  } else {
    throw 'Could not launch $link';
  }
}

stackProjectContent(BuildContext context,
    {required String title, required String description}) {
  return SizedBox(
      width: ResponsiveWidget.isSmallScreen(context)
          ? ScreenSize.screenWidth * 0.75
          : ScreenSize.screenWidth * 0.32,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  title,
                  softWrap: true,
                  style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )),
            const SizedBox(
              height: 10,
            ),
            Text(
              description,
              softWrap: true,
              textScaler: const TextScaler.linear(1),
              style: GoogleFonts.openSans(color: Colors.white, height: 1.5),
            ),
          ]));
}

projectHeading(BuildContext context) {
  return SizedBox(
    width: ResponsiveWidget.isSmallScreen(context)
        ? ScreenSize.screenWidth * 0.75
        : ScreenSize.screenWidth * 0.75,
    child: Column(children: [
      const SizedBox(
        height: 40,
      ),
      Container(
        padding: const EdgeInsets.only(top: 40, bottom: 5),
        child: Text(
          "PROJECTS",
          textScaler: TextScaler.linear(2),
          style: GoogleFonts.openSans(color: Colors.white, fontSize: 15),
        ),
      ),
      Divider(
        height: 20.0,
        thickness: 4.0,
        color: Colors.white,
        indent: ResponsiveWidget.isSmallScreen(context) ? 150 : 400,
        endIndent: ResponsiveWidget.isSmallScreen(context) ? 150 : 400,
      ),
      SizedBox(height: ResponsiveWidget.isSmallScreen(context) ? 20 : 0),
      Center(
          child: Text(
        'Here you will find more information about me, what I do, and my current skills mostly in terms of programming and technology ',
        softWrap: true,
        textAlign: TextAlign.center,
        textScaler: TextScaler.linear(1),
        style: GoogleFonts.openSans(color: Colors.white, height: 1.5),
      )),
    ]),
  );
}
