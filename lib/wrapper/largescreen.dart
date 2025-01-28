import 'package:flutter/material.dart';
import 'package:portfolio_web/views/experience/experience.dart';
import 'package:portfolio_web/views/project/stackproject.dart';
import 'package:portfolio_web/views/about/about.dart';
import 'package:portfolio_web/views/home/home.dart';
import 'package:portfolio_web/views/contact/contact.dart';
import 'package:portfolio_web/shared/screensize.dart';
import 'package:portfolio_web/widgets/header.dart';

import 'package:url_launcher/url_launcher.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);

    List<Widget> list = [
      lHome(context),
      lAbout(context),
      lExperience(context),
      lStackproject(context),
      lContact(context),
    ];

    PageController controller = PageController(viewportFraction: 1.1);

    return Container(
      color: Color(0xFF000435),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              //pinned: true,
              floating: true,
              snap: true,
              //expandedHeight: 150.0,
              backgroundColor: Colors.transparent,
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: navButtons(controller),
                )
              ],
            ),
            SliverFillRemaining(
              child: Stack(
                clipBehavior: Clip.antiAlias,
                children: [
                  PageView(
                    scrollDirection: Axis.vertical,
                    pageSnapping: false,
                    controller: controller,
                    children: list,
                  ),
                  Positioned(
                    left: 35,
                    bottom: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            //github
                            IconButton(
                              onPressed: () => launchUrl(
                                  Uri.parse("https://github.com/krithiga25")),
                              icon: Image.asset(
                                "assets/githubWhite.png",
                                width: 24,
                                height: 24,
                              ),
                            ),
                            //linkedin
                            IconButton(
                              onPressed: () => launchUrl(Uri.parse(
                                  "https://www.linkedin.com/in/krithigaperumal/")),
                              icon: Image.asset(
                                "assets/linkedin.png",
                                width: 24,
                                height: 24,
                              ),
                            ),
                            //mail
                            IconButton(
                              onPressed: () => launchUrl(
                                Uri.parse("mailto:krithiperu2002@gmail.com"),
                              ),
                              icon: Image.asset(
                                "assets/mailWhite.png",
                                width: 24,
                                height: 24,
                              ),
                            ),
                            //medium
                            IconButton(
                                onPressed: () => launchUrl(Uri.parse(
                                    "https://medium.com/@krithigaperumal")),
                                icon: Image.asset("assets/mediumWhite.png",
                                    width: 24, height: 24),
                                iconSize: 20),
                            IconButton(
                                onPressed: () => launchUrl(Uri.parse(
                                    "https://www.instagram.com/krithiga.perumal?igsh=MWg1NDBwbWdqcGR1bQ==")),
                                icon: Image.asset("assets/instaWhite.png",
                                    width: 24, height: 24),
                                iconSize: 20),
                            IconButton(
                                onPressed: () => launchUrl(
                                    Uri.parse("x.com/krithigaperumal")),
                                icon: Image.asset("assets/twitter_white.png",
                                    width: 24, height: 24),
                                iconSize: 20),
                            Container(
                              height: 250,
                              width: 3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                              ),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 15),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 35,
                    bottom: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            "krithiperu2002@gmail.com",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                letterSpacing: 3.0),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 200,
                          width: 3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
