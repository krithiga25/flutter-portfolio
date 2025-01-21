// import 'package:flutter/material.dart';
// import 'package:portfolio_web/views/medium/blogs.dart';
// import 'package:portfolio_web/views/research/research.dart';
// import 'package:portfolio_web/views/project/stackproject.dart';
// import 'package:portfolio_web/views/about/about.dart';
// import 'package:portfolio_web/views/home/home.dart';
// import 'package:portfolio_web/views/contact/contact.dart';
// import 'package:portfolio_web/shared/screensize.dart';
// import 'package:portfolio_web/widgets/header.dart';

// import 'dart:html' as html;

// class LargeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     ScreenSize().init(context);

//     List<Widget> _list = [
//       lHome(context),
//       lAbout(context),
//       lStackproject(context),
//       lResearch(context),
//       lBlog(context),
//       lContact(context),
//     ];
//     PageController controller = PageController(viewportFraction: 1.1);

//     return Container(
//       decoration: const BoxDecoration(
//           //color: Color.fromARGB(255, 12, 20, 65)
//           gradient: LinearGradient(
//         begin: Alignment.topLeft,
//         end: Alignment.bottomRight,
//         colors: [
//           Color.fromARGB(255, 148, 89, 250),
//           Colors.teal,
//         ],
//       )),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         body: Stack(
//           clipBehavior: Clip.antiAlias,
//           children: [
//             Positioned(
//               left: 35,
//               bottom: 0,
//               child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Column(
//                       children: [
//                         //github
//                         IconButton(
//                             onPressed: () => html.window.open(
//                                 "https://github.com/krithiga25", "GitHub"),
//                             icon: Image.asset("assets/githubWhite.png"),
//                             iconSize: 20),
//                         //linkedin
//                         IconButton(
//                             onPressed: () => html.window.open(
//                                 "https://www.linkedin.com/in/krithigaperumal/",
//                                 "LinkedIn"),
//                             icon: Image.asset("assets/linkedin.png"),
//                             iconSize: 20),
//                         //mail
//                         IconButton(
//                             onPressed: () => html.window
//                                 .open("https://github.com/krithiga25", "Mail"),
//                             icon: Image.asset("assets/mailWhite.png"),
//                             iconSize: 20),
//                         //medium
//                         IconButton(
//                             onPressed: () => html.window.open(
//                                 "https://github.com/krithiga25", "Medium"),
//                             icon: Image.asset("assets/mediumWhite.png"),
//                             iconSize: 20),
//                         IconButton(
//                             onPressed: () => html.window.open(
//                                 "https://github.com/krithiga25", "Medium"),
//                             icon: Image.asset("assets/instaWhite.png"),
//                             iconSize: 20),
//                         IconButton(
//                             onPressed: () => html.window.open(
//                                 "https://github.com/krithiga25", "Twitter"),
//                             icon: Image.asset("assets/twitter_white.png"),
//                             iconSize: 20),
//                         Container(
//                           height: 200,
//                           width: 3,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10.0),
//                             color: Colors.white,
//                           ),
//                           margin: EdgeInsets.symmetric(horizontal: 15),
//                         )
//                       ],
//                     ),
//                   ]),
//             ),
//             Positioned(
//               right: 35,
//               bottom: 0,
//               child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const RotatedBox(
//                       quarterTurns: 3,
//                       child: Text(
//                         "krithiperu2002@gmail.com",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16.0,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     Container(
//                       height: 200,
//                       width: 3,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10.0),
//                         color: Colors.white,
//                       ),
//                       margin: EdgeInsets.symmetric(horizontal: 10),
//                     )
//                   ]),
//             ),
//             PageView(
//                 scrollDirection: Axis.vertical,
//                 pageSnapping: false,
//                 controller: controller,
//                 children: _list),
//             Header(controller),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:portfolio_web/views/medium/blogs.dart';
import 'package:portfolio_web/views/research/research.dart';
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
      lStackproject(context),
      lResearch(context),
      lBlog(context),
      lContact(context),
    ];

    PageController controller = PageController(viewportFraction: 1.1);

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 148, 89, 250),
            Colors.teal,
          ],
        ),
      ),
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
                // IconButton(
                //   icon: Icon(Icons.home),
                //   onPressed: () => controller.jumpToPage(0),
                // ),
                // IconButton(
                //   icon: Icon(Icons.person),
                //   onPressed: () => controller.jumpToPage(1),
                // ),
                // IconButton(
                //   icon: Icon(Icons.work),
                //   onPressed: () => controller.jumpToPage(2),
                // ),
                // IconButton(
                //   icon: Icon(Icons.science),
                //   onPressed: () => controller.jumpToPage(3),
                // ),
                // IconButton(
                //   icon: Icon(Icons.article),
                //   onPressed: () => controller.jumpToPage(4),
                // ),
                // IconButton(
                //   icon: Icon(Icons.contact_mail),
                //   onPressed: () => controller.jumpToPage(5),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child: const Text(
                        "HOME",
                        style: TextStyle(
                            color: Colors.white,
                            //fontWeight: FontWeight.bold,
                            letterSpacing: 1.25),
                      ),
                      //where is this each page numbered?
                      onPressed: () => controller.animateToPage(0,
                          duration: const Duration(milliseconds: 1200),
                          curve: Curves.easeInOutSine),
                    ),
                    TextButton(
                      child: const Text(
                        "ABOUT ME",
                        style: TextStyle(
                            color: Colors.white,
                            //fontWeight: FontWeight.bold,
                            letterSpacing: 1.25),
                      ),
                      onPressed: () => controller.animateToPage(2,
                          duration: const Duration(milliseconds: 1200),
                          curve: Curves.easeInOutSine),
                    ),
                    TextButton(
                      child: const Text(
                        "PROJECTS",
                        style: TextStyle(
                            color: Colors.white,
                            //fontWeight: FontWeight.bold,
                            letterSpacing: 1.25),
                      ),
                      onPressed: () => controller.animateToPage(2,
                          duration: const Duration(milliseconds: 1200),
                          curve: Curves.easeInOutSine),
                    ),
                    TextButton(
                      child: const Text(
                        "RESEARCH",
                        style: TextStyle(
                            color: Colors.white,
                            //fontWeight: FontWeight.bold,
                            letterSpacing: 1.25),
                      ),
                      onPressed: () => controller.animateToPage(3,
                          duration: const Duration(milliseconds: 1200),
                          curve: Curves.easeInOutSine),
                    ),
                    TextButton(
                      child: const Text(
                        "BLOG",
                        style: TextStyle(
                            color: Colors.white,
                            //fontWeight: FontWeight.bold,
                            letterSpacing: 1.25),
                      ),
                      onPressed: () => controller.animateToPage(4,
                          duration: const Duration(milliseconds: 1200),
                          curve: Curves.easeInOutSine),
                    ),
                    TextButton(
                      child: const Text(
                        "CONTACT",
                        style: TextStyle(
                            color: Colors.white,
                            //fontWeight: FontWeight.bold,
                            letterSpacing: 1.25),
                      ),
                      onPressed: () => controller.animateToPage(5,
                          duration: const Duration(milliseconds: 1200),
                          curve: Curves.easeInOutSine),
                    ),
                    const SizedBox(height: 40),
                    TextButton(
                      child: const Text(
                        "RESUME",
                        style: TextStyle(
                            color: Colors.white,
                            //fontWeight: FontWeight.bold,
                            letterSpacing: 1.25),
                      ),
                      onPressed: () async {
                        if (await canLaunchUrl(Uri.parse(url))) {
                          await launchUrl(Uri.parse(url));
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                  ],
                )
              ],
            ),
            SliverFillRemaining(
              child: Stack(
                clipBehavior: Clip.antiAlias,
                children: [
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
                                icon: Image.asset("assets/githubWhite.png"),
                                iconSize: 20),
                            //linkedin
                            IconButton(
                                onPressed: () => launchUrl(Uri.parse(
                                    "https://www.linkedin.com/in/krithigaperumal/")),
                                icon: Image.asset("assets/linkedin.png"),
                                iconSize: 20),
                            //mail
                            IconButton(
                                onPressed: () => launchUrl(
                                    Uri.parse("https://github.com/krithiga25")),
                                icon: Image.asset("assets/mailWhite.png"),
                                iconSize: 20),
                            //medium
                            IconButton(
                                onPressed: () => launchUrl(
                                    Uri.parse("https://github.com/krithiga25")),
                                icon: Image.asset("assets/mediumWhite.png"),
                                iconSize: 20),
                            IconButton(
                                onPressed: () => launchUrl(
                                    Uri.parse("https://github.com/krithiga25")),
                                icon: Image.asset("assets/instaWhite.png"),
                                iconSize: 20),
                            IconButton(
                                onPressed: () => launchUrl(
                                    Uri.parse("https://github.com/krithiga25")),
                                icon: Image.asset("assets/twitter_white.png"),
                                iconSize: 20),
                            Container(
                              height: 200,
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
                            ),
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
                  PageView(
                    scrollDirection: Axis.vertical,
                    pageSnapping: false,
                    controller: controller,
                    children: list,
                  ),
                  //Header(controller),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
