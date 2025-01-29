import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/shared/screensize.dart';
import 'package:portfolio_web/views/project/stackprojectcomponent.dart';
import 'package:portfolio_web/wrapper/responsive.dart';

class ProjectContent {
  final String title;
  final String description;
  String imagePath;
  String link;

  ProjectContent({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.link,
  });
}

final List<ProjectContent> projects = [
  ProjectContent(
      title: 'Pitch Extraction and Notes Generation using CRNN.',
      description:
          'Pitch Extraction and Notes Generation using CRNN.Pitch Extraction and Notes Generation using CRNN.',
      imagePath: 'assets/pitch_extraction.jpg',
      link: 'https://github.com/krithiga25/AudioPitchExtractionSynthesis'),
  ProjectContent(
      title: 'Gemini clone using React js',
      description: 'Developed gemini clone using React js framework.',
      imagePath: 'assets/Gemini_generated_gemini_clone.jpg',
      link: 'https://github.com/krithiga25/react-gemini-clone'),
  ProjectContent(
      title: 'Early Detection of Diabetic Retinopathy using DCNN.',
      description:
          'Early Detection of Diabetic Retinopathy using Deep Convolutional Neural Network. This is research based project.',
      imagePath: 'assets/dr_dcnn.jpg',
      link: 'https://link.springer.com/chapter/10.1007/978-3-031-73065-8_26'),
  ProjectContent(
    title: 'Project 4',
    description: 'Description for Project 4.',
    imagePath: 'assets/fs_mern.jpg',
    link: 'https://github.com/krithiga25/mern-fs-project',
  ),
];

Widget lStackproject(BuildContext context) {
  return SizedBox(
    width: ResponsiveWidget.isSmallScreen(context)
        ? ScreenSize.screenWidth * 0.75
        : ScreenSize.screenWidth * 0.85,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        projectHeading(context),
        CarouselSlider(
          options: CarouselOptions(
            height: ScreenSize.screenHeight * 0.70,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index, reason) {},
            viewportFraction: 1.0,
          ),
          items: projects.map((projects) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: ScreenSize.screenWidth * 0.85,
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ImageWidget(
                          imagepath: projects.imagePath, link: projects.link),
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
            height: ScreenSize.screenHeight * 0.70,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index, reason) {},
            viewportFraction: 1.0,
          ),
          items: projects.map((projects) {
            return Builder(
              builder: (BuildContext context) {
                return SizedBox(
                  width: ScreenSize.screenWidth * 0.75,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ImageWidget(
                          imagepath: projects.imagePath, link: projects.link),
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
