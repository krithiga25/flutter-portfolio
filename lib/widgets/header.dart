import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_web/widgets/defaultbutton.dart';
import 'package:portfolio_web/widgets/headerbutton.dart';

const url =
    "https://firebasestorage.googleapis.com/v0/b/portfoliokrithi.appspot.com/o/Resume%20India.pdf?alt=media&token=a83fa583-b779-4e11-bc96-bb95439bff9a";
List<Widget> navButtons(PageController controller) {
  return [
    TextButton(
      child: Text(
        "HOME",
        style: GoogleFonts.openSans(color: Colors.white, letterSpacing: 1.25),
      ),
      onPressed: () => controller.animateToPage(0,
          duration: const Duration(milliseconds: 1200),
          curve: Curves.easeInOutSine),
    ),
    TextButton(
      child: Text(
        "ABOUT ME",
        style: GoogleFonts.openSans(color: Colors.white, letterSpacing: 1.25),
      ),
      onPressed: () => controller.animateToPage(1,
          duration: const Duration(milliseconds: 1200),
          curve: Curves.easeInOutSine),
    ),
    TextButton(
      child: Text(
        "EXPERIENCE",
        style: GoogleFonts.openSans(color: Colors.white, letterSpacing: 1.25),
      ),
      onPressed: () => controller.animateToPage(2,
          duration: const Duration(milliseconds: 1200),
          curve: Curves.easeInOutSine),
    ),
    TextButton(
      child: Text(
        "PROJECTS",
        style: GoogleFonts.openSans(color: Colors.white, letterSpacing: 1.25),
      ),
      onPressed: () => controller.animateToPage(3,
          duration: const Duration(milliseconds: 1200),
          curve: Curves.easeInOutSine),
    ),
    TextButton(
      child: Text(
        "CONTACT",
        style: GoogleFonts.openSans(color: Colors.white, letterSpacing: 1.25),
      ),
      onPressed: () => controller.animateToPage(4,
          duration: const Duration(milliseconds: 1200),
          curve: Curves.easeInOutSine),
    ),
    const SizedBox(height: 40),
    TextButton(
      child: Text(
        "RESUME",
        style: GoogleFonts.openSans(color: Colors.white, letterSpacing: 1.25),
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
  ];
}

List<Widget> navButtons1(PageController controller) {
  return [
    const SizedBox(
      height: 20,
    ),
    SmallHeaderButton(
      text1: "HOME",
      press1: () => controller.animateToPage(0,
          duration: const Duration(milliseconds: 1200),
          curve: Curves.easeInOutSine),
    ),
    const Divider(
      height: 50,
    ),
    SmallHeaderButton(
      text1: "ABOUT ME",
      press1: () => controller.animateToPage(1,
          duration: const Duration(milliseconds: 1200),
          curve: Curves.easeInOutSine),
    ),
    const Divider(
      height: 50,
    ),
    SmallHeaderButton(
      text1: "EXPERIENCE",
      press1: () => controller.animateToPage(2,
          duration: const Duration(milliseconds: 1200),
          curve: Curves.easeInOutSine),
    ),
    const Divider(
      height: 50,
    ),
    SmallHeaderButton(
      text1: "PROJECTS",
      press1: () => controller.animateToPage(3,
          duration: const Duration(milliseconds: 1200),
          curve: Curves.easeInOutSine),
    ),
    const Divider(
      height: 50,
    ),
    SmallHeaderButton(
      text1: "CONTACT",
      press1: () => controller.animateToPage(4,
          duration: const Duration(milliseconds: 1200),
          curve: Curves.easeInOutSine),
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
