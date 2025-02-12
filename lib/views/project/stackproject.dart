import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/shared/screensize.dart';
import 'package:portfolio_web/views/project/stackprojectcomponent.dart';
import 'package:portfolio_web/wrapper/responsive.dart';

class ProjectContent {
  final String title;
  String imagePath;
  String link;
  String lScreenDescription;
  String sScreenDescription;

  ProjectContent({
    required this.title,
    required this.imagePath,
    required this.link,
    this.lScreenDescription = '',
    this.sScreenDescription = '',
  });
}

final List<ProjectContent> projects = [
  ProjectContent(
      title: 'Pitch Extraction and Notes Generation using CRNN.',
      sScreenDescription:
          '• Pitch Extraction of human melody audio using Convulutional Recurrent Neural Network (CRNN).',
      lScreenDescription:
          '• Melody Extraction: Utilized a Convolutional Recurrent Neural Network (CRNN) to extract human melodies from audio recordings.\n\n • Instrumental Note Generation: Leveraged Python libraries to generate instrumental notes based on the extracted melodies.\n\n• Full-Stack Development: Designed and built a user-friendly frontend with Flutter, and integrated it with a backend API that interfaces with the deep learning model.\n\n• Real-Time Audio Processing: Enabled users to record live audio through the app, which is then processed by the model to generate instrumental audio and corresponding notes.',
      imagePath: 'assets/pitch_extraction.jpg',
      link: 'https://github.com/krithiga25/AudioPitchExtractionSynthesis'),
  ProjectContent(
      title: 'Gemini clone using React js',
      sScreenDescription:
          '• A React JS implementation of the Gemini app, showcasing a similar user interface and user experience.\n• Users can input their questions or prompts, which are then processed using the Google Gemini API to produce accurate and informative answers.',
      lScreenDescription:
          '• A React JS implementation of the Gemini app, showcasing a similar user interface and user experience.\n• Users can input their questions or prompts, which are then processed using the Google Gemini API to produce accurate and informative answers.',
      imagePath: 'assets/Gemini_generated_gemini_clone.jpg',
      link: 'https://github.com/krithiga25/react-gemini-clone'),
  ProjectContent(
      title: 'Early Detection of DR using DCNN.',
      lScreenDescription:
          '• Detection of Diabetic Retinopathy: Built a model using Deep Convolutional Neural Network (DCNN) algorithm to identify Diabetic Retinopathy from fundus images of the eye.\n\n• User-Friendly Interface: Users can input fundus images to determine if the retina shows signs of Diabetic Retinopathy.\n\n• International Conference Presentation: Presented this research at the International Conference on Advances in Artificial Intelligence & Machine Learning in Big Data Processing (AAIMB 2023).\n\n• Published in Springer Series: This research was published in the Springer series, as a contribution to the field of artificial intelligence and machine learning.',
      sScreenDescription:
          '• Built a model using Deep Convolutional Neural Network algorithm to identify Diabetic Retinopathy from fundus images of the eye.\n• This is a research based project, presented in international conference and published in the Springer series, ',
      imagePath: 'assets/dr_dcnn.jpg',
      link: 'https://link.springer.com/chapter/10.1007/978-3-031-73065-8_26'),
  // ProjectContent(
  //   title: 'A full stack MERN project.',
  //   lScreenDescription: 'A full stack MERN project.',
  //   sScreenDescription: 'A full stack MERN project.',
  //   imagePath: 'assets/fs_mern.jpg',
  //   link: 'https://github.com/krithiga25/mern-fs-project',
  // ),
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
                      stackProjectContent(
                        context,
                        projects.title,
                        lScreenDescription: projects.lScreenDescription,
                      )
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ImageWidget(
                          imagepath: projects.imagePath, link: projects.link),
                      stackProjectContent(context, projects.title,
                          sScreenDescription: projects.sScreenDescription)
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
