import 'package:flutter/material.dart';
import 'package:portfolio_web/views/about/about.dart';
import 'package:portfolio_web/views/contact/contact.dart';
import 'package:portfolio_web/views/experience/experience.dart';
import 'package:portfolio_web/views/home/home.dart';
import 'package:portfolio_web/views/project/stackproject.dart';
import 'package:portfolio_web/shared/screensize.dart';
import 'package:portfolio_web/widgets/header.dart';

class SmallScreen extends StatefulWidget {
  const SmallScreen({super.key});

  @override
  SmallScreenState createState() => SmallScreenState();
}

class SmallScreenState extends State<SmallScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);

    List<Widget> list = [
      sHome(context),
      sAbout(context),
      sExperience(context),
      sStackProject(context),
      sContact(context),
    ];
    PageController controller = PageController(viewportFraction: 1.1);

    AppBar buildAppBar() {
      return AppBar(
        backgroundColor: Color(0xFF000435),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      );
    }

    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Color(0xFF000435),
      extendBodyBehindAppBar: true,
      endDrawer: Drawer(
        child: Container(
          color: Color(0xFF000435),
          //padding: EdgeInsets.only(top: 25),
          width: 150,
          child: ListView(children: [
            Column(children: navButtons1(controller)),
          ]),
        ),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        pageSnapping: false,
        controller: controller,
        children: list,
      ),
    );
  }
}
