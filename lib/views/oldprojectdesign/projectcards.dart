import 'package:flutter/material.dart';

import '../../shared/screensize.dart';
import '../../wrapper/responsive.dart';

Widget projectContent(BuildContext context) {
  return Container(
      //margin: const EdgeInsets.only(bottom: 100),
      // height: MediaQuery.of(context).size.height - 100,
      child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'my work',
        style: TextStyle(fontSize: 40),
      ),
      const SizedBox(height: 40),
      Wrap(
        runSpacing: 20,
        spacing: 20,
        direction: Axis.horizontal,
        children: [
          projectContainer(
            context,
            '14,000+ YouTube Subscribers',
            'Published over 350 Videos sharing my Development Experiences and Technical Expertise. ',
          ),
          projectContainer(
            context,
            'Ex-Intern @Tickertape',
            'Worked at Indian Fintech Startup Tickertape as a Mobile Development Engineer',
          ),
          projectContainer(
            context,
            'SDE @Stealth Startup',
            'I am currently employed as an SDE at a HealthTech Accelerator Startup based in a beautiful city, Pune.',
          ),
          projectContainer(
            context,
            'ML Researcher',
            "With a passion for pushing AI's boundaries, I continually delve into the latest research and developments in the field.",
          ),
        ],
      )
    ],
  ));
  // Align(
  //alignment: Alignment.bottomLeft,
  /*child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),*/
  //),
}

Widget projectContainer(
  BuildContext context,
  String topic,
  text,
) {
  //mentioning the width here
  //double w = MediaQuery.of(context).size.width;
  bool isSmall = ResponsiveWidget.isSmallScreen(context);
  double sWidth = ScreenSize.screenWidth * 0.8;
  double lWidth = ScreenSize.screenWidth * 0.32;

  //double lheight = ScreenSize.screenHeight * 0.4;

  return Container(
    width: isSmall ? sWidth : lWidth,
    //width: w / 2.4,
    //height should also be responsive
    //height: 200,
    //padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
    decoration: BoxDecoration(
        //color: AppColors.purpleDark.withOpacity(0.5),
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)),
    child: Row(
      //mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                topic,
                style: const TextStyle(
                    fontSize: 26, height: 1.4, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              Text(
                text,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                // style: TextStyle(fontSize: w / 80),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
