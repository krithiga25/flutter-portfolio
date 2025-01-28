import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// a file where a component name is pressed it takes to that page.
// when project in the scaffhold is pressed it take to project page.

import 'package:portfolio_web/widgets/defaultbutton.dart';
import 'package:portfolio_web/widgets/headerbutton.dart';

const url =
    "https://firebasestorage.googleapis.com/v0/b/portfoliokrithi.appspot.com/o/Resume%20India.pdf?alt=media&token=a83fa583-b779-4e11-bc96-bb95439bff9a";
List<Widget> navButtons(PageController controller) {
  return [
    HeaderButton(
      text: "HOME",
      //where is this each page numbered?
      press: () => controller.animateToPage(0,
          duration: const Duration(milliseconds: 1200), curve: Curves.easeInOutSine),
    ),
    const SizedBox(height: 40),
    HeaderButton(
      text: "ABOUT ME",
      press: () => controller.animateToPage(1,
          duration: const Duration(milliseconds: 1200), curve: Curves.easeInOutSine),
    ),
    const SizedBox(height: 40),
    HeaderButton(
      text: "PROJECTS",
      press: () => controller.animateToPage(2,
          duration: const Duration(milliseconds: 1200), curve: Curves.easeInOutSine),
    ),
    const SizedBox(height: 40),
    HeaderButton(
      text: "RESEARCH WORK",
      press: () => controller.animateToPage(3,
          duration: const Duration(milliseconds: 1200), curve: Curves.easeInOutSine),
    ),
    const SizedBox(height: 40),
    HeaderButton(
      text: "BLOG",
      press: () => controller.animateToPage(4,
          duration: const Duration(milliseconds: 1200), curve: Curves.easeInOutSine),
    ),
    const SizedBox(height: 40),
    HeaderButton(
      text: "CONTACT",
      press: () => controller.animateToPage(5,
          duration: const Duration(milliseconds: 1200), curve: Curves.easeInOutSine),
    ),
    const SizedBox(height: 40),
    DefaultButton(
      text: "RESUME",
      press: () async {
        if (await canLaunchUrl(Uri.parse(url))) {
          await launchUrl(Uri.parse(url));
        } else {
          throw 'Could not launch $url';
        }
      },
    ),
  ];
}

List<Widget> navButtons1(PageController controller) {
  return [
    const SizedBox(
      height: 20,
    ),
    SmallHeaderButton(
      text1: "HOME",
      //where is this each page numbered?

      press1: () => controller.animateToPage(0,
          duration: const Duration(milliseconds: 1200), curve: Curves.easeInOutSine),
    ),
    //const SizedBox(height: 40),
    const Divider(
      height: 50,
    ),
    SmallHeaderButton(
      text1: "ABOUT ME",
      press1: () => controller.animateToPage(1,
          duration: const Duration(milliseconds: 1200), curve: Curves.easeInOutSine),
    ),
    const Divider(
      height: 50,
    ),
    SmallHeaderButton(
      text1: "PROJECTS",
      press1: () => controller.animateToPage(2,
          duration: const Duration(milliseconds: 1200), curve: Curves.easeInOutSine),
    ),
    const Divider(
      height: 50,
    ),
    SmallHeaderButton(
      text1: "RESEARCH WORK",
      press1: () => controller.animateToPage(3,
          duration: const Duration(milliseconds: 1200), curve: Curves.easeInOutSine),
    ),
    const Divider(
      height: 50,
    ),
    SmallHeaderButton(
      text1: "BLOG",
      press1: () => controller.animateToPage(4,
          duration: const Duration(milliseconds: 1200), curve: Curves.easeInOutSine),
    ),
    const Divider(
      height: 50,
    ),
    SmallHeaderButton(
      text1: "CONTACT",
      press1: () => controller.animateToPage(5,
          duration: const Duration(milliseconds: 1200), curve: Curves.easeInOutSine),
    ),
    const Divider(
      height: 50,
    ),
    DefaultButton(
      text: "RESUME",
      press: () async {
       if (await canLaunchUrl(Uri.parse(url))) {
          await launchUrl(Uri.parse(url));
        } else {
          throw 'Could not launch $url';
        }
      },
    ),
    const Divider(
      height: 50,
    ),
  ];
}

//this code is the header aka appbar code
class Header extends StatelessWidget {
//  final  ScrollController _scrollController = ScrollController();
//  final  bool _isScrolledUp = true;

  final PageController controller;
  const Header(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      padding: const EdgeInsets.fromLTRB(13, 10, 13, 10),

      /*decoration: BoxDecoration(
        color: Color.fromARGB(255, 12, 20, 65),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(45), bottomRight: Radius.circular(45)),
        boxShadow: [
          //shadow for the box
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.white.withOpacity(0.16),
          ),
        ],
      ),*/

      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: navButtons(controller),
      ),
    );
  }
}
