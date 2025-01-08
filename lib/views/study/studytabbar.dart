import 'package:flutter/material.dart';

//maybe create this as a class itself?
//my doubt is: when it is small screen it is going to be horizontal (like the tabs will be in column wise)
//when large screen it will be in vertical (the tabs will row wise)
//so separate class for small and large screens?
class StudyTab extends StatefulWidget {
  const StudyTab({super.key});

  @override
  State<StudyTab> createState() => _StudyTabState();
}

class _StudyTabState extends State<StudyTab> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Container(
      //idhu kula dhan tap bar and tap bar view
      child: Row(
        children: [
          RotatedBox(
            quarterTurns: 3,
            child: Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                    labelPadding: const EdgeInsets.only(left: 20, right: 20),
                    controller: _tabController,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,
                    isScrollable: true,
                    tabs: [
                      Tab(
                        text: "College",
                      ),
                      Tab(text: "Higer Secondary"),
                      Tab(text: "School"),
                    ]),
              ),
            ),
          ),
          Flexible(
            child: Container(
              padding: const EdgeInsets.only(left: 20),
              height: 300,
              width: double.maxFinite,

              //tabbarview
              child: TabBarView(
                controller: _tabController,
                children: [
                  Text("rec"),
                  Text("dav"),
                  Text("the ashram"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

//
Widget studyTab(BuildContext context) {
  return Container(
      //idhu kula dhan tap bar and tap bar view

      );
}
