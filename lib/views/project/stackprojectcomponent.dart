import 'package:flutter/material.dart';
import 'package:portfolio_web/wrapper/responsive.dart';
import 'package:portfolio_web/shared/screensize.dart';

//create a separate function or a class for stack and the relevant description in the side.

// make width for each container responsive.

stackImage(BuildContext context, {required String imagepath}) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 20),
    //alignment: Alignment,
    width: ResponsiveWidget.isSmallScreen(context)
        ? ScreenSize.screenWidth * 0.75
        : ScreenSize.screenWidth * 0.32,
    //if i put this, the stack goes to the left side even i mention the allignment as topstart.
    child: Stack(
      //alignment: AlignmentDirectional.topCenter,
      clipBehavior: Clip.none,
      children: <Widget>[
        Container(
          //alignment: Alignment.bottomRight,
          width: 350,
          //ResponsiveWidget.isSmallScreen(context) ? 300 : 400,
          height: ResponsiveWidget.isSmallScreen(context)
              ? 300
              : 400, // Adjust the height of the container below
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 3), // Border styling
            borderRadius:
                BorderRadius.circular(10), // Adjust border radius as needed
            color: Colors.transparent, // Transparent background
          ),
          // Add your content inside this container
        ),
        Positioned(
          top: -30,
          left: -20,
          child: Container(
            width: 350,
            //ResponsiveWidget.isSmallScreen(context) ? 300 : 400,
            height: ResponsiveWidget.isSmallScreen(context) ? 300 : 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              //shape: BoxShape.circle,
              image: DecorationImage(
                image: /* AssetImage(projects.imagepath), */
                    AssetImage(imagepath), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        // ),
      ],
    ),
  );
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
                  //textAlign: TextAlign.center,
                  textScaler: const TextScaler.linear(1.5),
                  style: const TextStyle(
                      color: Colors.white,
                      height: 1.5,
                      fontWeight: FontWeight.w100),
                )),
            const SizedBox(
              height: 10,
            ),
            Text(
              description,
              softWrap: true,
              //textAlign: TextAlign.center,
             textScaler: const TextScaler.linear(1),
              style: const TextStyle(color: Colors.white, height: 1.5),
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
        child: const Text(
          //change font
          "PROJECTS",
         textScaler: TextScaler.linear(2),
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Divider(
        height: 20.0,
        thickness: 4.0,
        color: Colors.white,
        indent: ResponsiveWidget.isSmallScreen(context) ? 150 : 400,
        endIndent: ResponsiveWidget.isSmallScreen(context) ? 150 : 400,
      ),
      //SizedBox(height: 20),
      const Center(
          child: Text(
        'Here you will find more information about me, what I do, and my current skills mostly in terms of programming and technology ',
        softWrap: true,
        textAlign: TextAlign.center,
      textScaler: TextScaler.linear(1),
        style: TextStyle(color: Colors.white, height: 1.5),
      )),
    ]),
  );
}
