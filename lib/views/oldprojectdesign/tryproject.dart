import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

tryProject(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(bottom: 100),
    // height: MediaQuery.of(context).size.height - 100,
    child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: AnimationConfiguration.toStaggeredList(
          duration: const Duration(milliseconds: 1000),
          childAnimationBuilder: (widget) => SlideAnimation(
            child: FadeInAnimation(
              child: widget,
            ),
          ),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Projects',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                const SizedBox(height: 40),
                Wrap(
                  runSpacing: 20,
                  spacing: 20,
                  direction: Axis.horizontal,
                  children: [
                    highlightContainer(
                      context,
                      'Pitch Extraction and Notes Generation',
                      'Unlocking musical secrets with flair! I delve into Pitch Extraction and Notes Generation using CRNN, merging the power of neural networks to bring melodies to life in the digital realm.',
                    ),
                    highlightContainer(
                      context,
                      'Car Resale Value price prediction using Decision tree forests.',
                      'yet to decide',
                    ),
                    highlightContainer(
                      context,
                      'Food price prediction ML model',
                      'yet to decide',
                    ),
                    highlightContainer(
                      context,
                      'ML Researcher',
                      "With a passion for pushing AI's boundaries, I continually delve into the latest research and developments in the field.",
                    ),
                  ],
                )
              ],
            )
          ],
        )),
  );
}

Widget highlightContainer(
  BuildContext context,
  String topic,
  text,
) {
  double w = MediaQuery.of(context).size.width;
  return Container(
    width: w / 2.4,
    height: 260,
    padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
    decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 143, 254, 243),
            Color.fromARGB(255, 251, 242, 159),
          ],
        ),
        borderRadius: BorderRadius.circular(20)),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(width: 20),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                topic,
                style: const TextStyle(
                  color: Colors.white,
                  //fontSize: 26, height: 1.4, fontWeight: FontWeight.w600
                ),
              ),
              const SizedBox(height: 10),
              Text(
                text,
                textScaleFactor: 1.25,
                style: const TextStyle(
                  color: Colors.white,
                  //fontSize: 16, height: 1.4, fontWeight: FontWeight.w600
                ),
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
