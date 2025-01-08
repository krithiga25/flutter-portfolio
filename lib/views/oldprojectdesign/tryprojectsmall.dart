import 'package:flutter/material.dart';

Widget trySmallProject(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(bottom: 100),
    // height: MediaQuery.of(context).size.height,
    child: Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Projects',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            const SizedBox(height: 20),
            Wrap(
              runSpacing: 12,
              spacing: 12,
              direction: Axis.horizontal,
              children: [
                highlightContainer(
                  context,
                  'Pitch Extraction and Notes Generation',
                  'Published over 350 Videos sharing my Development Experiences and Technical Expertise. ',
                ),
                highlightContainer(
                  context,
                  'Ex-Intern @Tickertape',
                  'Worked at Indian Fintech Startup Tickertape as a Mobile Development Engineer',
                ),
                highlightContainer(
                  context,
                  'SDE @Stealth Startup',
                  'I am currently employed as an SDE at a HealthTech Accelerator Startup based in a beautiful city, Pune.',
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
    ),
  );
}

Widget highlightContainer(
  BuildContext context,
  String topic,
  text,
) {
  return Container(
    width: double.maxFinite,
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(20)),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(width: 8),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                topic,
                style: const TextStyle(
                    height: 1.2,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              const SizedBox(height: 8),
              Text(
                text,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
