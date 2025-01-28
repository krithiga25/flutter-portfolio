import 'package:flutter/material.dart';
import 'package:portfolio_web/views/about/about.dart';
import 'package:portfolio_web/views/contact/contact.dart';
import 'package:portfolio_web/views/home/home.dart';
import 'package:portfolio_web/views/medium/blogs.dart';
import 'package:portfolio_web/views/research/research.dart';
import 'package:portfolio_web/views/project/stackproject.dart';
import 'package:portfolio_web/shared/screensize.dart';
import 'package:portfolio_web/widgets/header.dart';

class SmallScreen extends StatefulWidget {
  const SmallScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SmallScreenState createState() => _SmallScreenState();
}

class _SmallScreenState extends State<SmallScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);

    List<Widget> list = [
      sHome(context),
      sAbout(context),
      sStackProject(context),
      sResearch(context),
      sBlog(context),
      sContact(context),
    ];
    PageController controller = PageController(viewportFraction: 1.1);

    AppBar buildAppBar() {
      return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 148, 89, 250),
              Colors.teal,
            ], //transform: GradientRotation(90)
          )),
        ),
      );
    }

    return Container(
      decoration: const BoxDecoration(
          //color: Color.fromARGB(255, 12, 20, 65)
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color.fromARGB(255, 148, 89, 250),
          Colors.teal,
        ],
      )),
      child: Scaffold(
        appBar: buildAppBar(),
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        endDrawer: Drawer(
          child: Container(
            //padding: EdgeInsets.only(top: 25),
            width: 150,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 148, 89, 250),
                Colors.teal,
              ],
            )),
            child: ListView(children: [
              /*  DrawerHeader(
                child: Center(
                    child: Text(
                  "KRITHIGA PERUMAL",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ), */
              Column(children: navButtons1(controller)),
            ]),
          ),
        ),
        //from here only drawer starts
        /* drawer: Container(
          width: 200,
          //colour
          color: Color.fromARGB(255, 12, 20, 65),
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.only(top: 30),
              children: [
                Column(children: navButtons(controller)),
              ],
            ),
          ),
        ),*/

        //app bar is the same

        body: PageView(
          scrollDirection: Axis.vertical,
          pageSnapping: false,
          controller: controller,
          children: list,
        ),
      ),
    );
  }
}
