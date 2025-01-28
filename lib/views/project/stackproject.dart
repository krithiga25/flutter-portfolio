import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/shared/screensize.dart';
import 'package:portfolio_web/views/project/stackprojectcomponent.dart';
import 'package:portfolio_web/wrapper/responsive.dart';

class ProjectContent {
  final String title;
  final String description;
  String imagePath;

  ProjectContent({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

final List<ProjectContent> projects = [
  ProjectContent(
    title: 'Pitch Extraction and Notes Generation using CRNN.',
    description:
        'Pitch Extraction and Notes Generation using CRNN.Pitch Extraction and Notes Generation using CRNN.',
    imagePath: 'assets/articleone.jpg',
  ),
  ProjectContent(
    title: 'Project 2',
    description: 'Description for Project 2.',
    imagePath: 'assets/articleone.jpg',
  ),
  ProjectContent(
    title: 'Project 3',
    description: 'Description for Project 3.',
    imagePath: 'assets/articleone.jpg',
  ),
  ProjectContent(
    title: 'Project 4',
    description: 'Description for Project 4.',
    imagePath: 'assets/articleone.jpg',
  ),
];

/* ProjectContent project1 = ProjectContent(
  title: 'Pitch Extraction and Notes Generation using CRNN',
  description:
      'Here you will find more information about me, what I do, and my current skills mostly in terms of programming and technology',
  imagePath: 'assets/profile.jpg',
);

ProjectContent project2 = ProjectContent(
  title: 'My Project',
  description:
      'Here you will find more information about me, what I do, and my current skills mostly in terms of programming and technology',
  imagePath: 'assets/profile.jpg',
);

ProjectContent project3 = ProjectContent(
  title: 'My Project',
  description: 'This is a sample project',
  imagePath: 'assets/profile.jpg',
); */

Widget lStackproject(BuildContext context) {
  return SizedBox(
    width: ResponsiveWidget.isSmallScreen(context)
        ? ScreenSize.screenWidth * 0.75
        : ScreenSize.screenWidth * 0.85,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        projectHeading(context),
        CarouselSlider(
          options: CarouselOptions(
            //give the height for small screen as well here and give heading
            height: ScreenSize.screenHeight * 0.70,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index, reason) {},
            viewportFraction: 1.0,
          ),
          //here we are passing a list of info that has info for next next card
          items: projects.map((projects) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: ScreenSize.screenWidth * 0.85,
                  //margin: EdgeInsets.symmetric(horizontal: 5.0),
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      stackImage(context, imagepath: projects.imagePath),
                      //change the allignment of the description in the function
                      stackProjectContent(context,
                          title: projects.title,
                          description: projects.description)
                    ],
                  ),
                );
              },
            );
          }).toList(),
        ),
      ],
    ),
  );
  /* Container(
      // height: (MediaQuery.of(context).size.height) * 2,
      padding: const EdgeInsets.only(top: 10),
      child: SingleChildScrollView(
        //physics: NeverScrollableScrollPhysics(),
        child: Column(
            //mainaxisalignement?
            mainAxisSize: MainAxisSize.min,
            children: [
              projectHeading(context),
              //write a function for this?
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  stackImage(context, imagepath: project1.imagePath),
                  SizedBox(
                    width: 20,
                  ),
                  stackProjectContent(context,
                      title: project1.title, description: project1.description)
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  stackProjectContent(context,
                      title: project2.title, description: project2.description),
                  stackImage(
                    context,
                    imagepath: project2.imagePath,
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  stackImage(
                    context,
                    imagepath: project3.imagePath,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  stackProjectContent(context,
                      title: project2.title, description: project2.description)
                ],
              ),
              SizedBox(
                height: 40,
              ),
            ]),
      )); */
}

Widget sStackProject(BuildContext context) {
  return SizedBox(
    width: ScreenSize.screenWidth * 0.75,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        projectHeading(context),
        CarouselSlider(
          options: CarouselOptions(
            //give the height for small screen as well here and give heading
            height: ScreenSize.screenHeight * 0.70,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index, reason) {},
            viewportFraction: 1.0,
          ),
          //here we are passing a list of info that has info for next next card
          items: projects.map((projects) {
            return Builder(
              builder: (BuildContext context) {
                return SizedBox(
                  width: ScreenSize.screenWidth * 0.75,
                  //margin: EdgeInsets.symmetric(horizontal: 5.0),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      stackImage(context, imagepath: projects.imagePath),
                      //change the allignment of the description in the function
                      stackProjectContent(context,
                          title: projects.title,
                          description: projects.description)
                    ],
                  ),
                );
              },
            );
          }).toList(),
        ),
      ],
    ),
  );
}
