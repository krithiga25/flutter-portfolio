import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/wrapper/responsive.dart';
import 'package:portfolio_web/shared/screensize.dart';
import 'package:url_launcher/url_launcher.dart';

stackProjectContent(BuildContext context, String title,
    {String? lScreenDescription, String? sScreenDescription}) {
  bool isSmall = ResponsiveWidget.isSmallScreen(context);
  return SizedBox(
      width: isSmall
          ? ScreenSize.screenWidth * 0.75
          : ScreenSize.screenWidth * 0.32,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  title,
                  softWrap: true,
                  style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )),
            const SizedBox(
              height: 10,
            ),
            Text(
              isSmall ? sScreenDescription! : lScreenDescription!,
              softWrap: true,
              textScaler: const TextScaler.linear(1),
              style: GoogleFonts.openSans(color: Colors.white, height: 1.5),
            ),
          ]));
}

projectHeading(BuildContext context) {
  bool isSmall = ResponsiveWidget.isSmallScreen(context);
  return SizedBox(
    width:
        isSmall ? ScreenSize.screenWidth * 0.75 : ScreenSize.screenWidth * 0.75,
    child: Column(children: [
      // const SizedBox(
      //   height: 40,
      // ),
      Container(
        padding: const EdgeInsets.only(top: 40, bottom: 5),
        child: Text(
          "PROJECTS",
          textScaler: TextScaler.linear(2),
          style: GoogleFonts.openSans(color: Colors.white, fontSize: 15),
        ),
      ),
      Divider(
        height: isSmall ? 10 : 20,
        thickness: isSmall ? 3 : 4,
        color: Colors.white,
        indent: isSmall ? 80 : 400,
        endIndent: isSmall ? 80 : 400,
      ),
      if (!isSmall)
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Center(
              child: Text(
            'Here you will find more information about me, what I do, and my current skills mostly in terms of programming and technology ',
            softWrap: true,
            textAlign: TextAlign.center,
            textScaler: TextScaler.linear(1),
            style: GoogleFonts.openSans(color: Colors.white, height: 1.5),
          )),
        ),
    ]),
  );
}

Widget project1(BuildContext context) => Container(
      width: ResponsiveWidget.isSmallScreen(context)
          ? ScreenSize.screenWidth * 0.85
          : ScreenSize.screenWidth * 0.32,
      height: ResponsiveWidget.isSmallScreen(context)
          ? ScreenSize.screenHeight * 0.80
          : ScreenSize.screenHeight * 0.70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.blueGrey.withValues(alpha: 0.8),
          width: 1.7,
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.white.withValues(alpha: 0.15),
        //     blurRadius: 20,
        //     spreadRadius: 2,
        //     offset: const Offset(0, 5),
        //   ),
        // ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              //borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/ecomm.jpg',
                width: ScreenSize.screenWidth * 0.75,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'E-ComEase — Full Stack E-commerce App',
              softWrap: true,
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Wrap(spacing: 4, runSpacing: 2, children: [
              techCard('Flutter'),
              techCard('Node.js'),
              techCard('Provider'),
              techCard('MongoDB'),
              techCard('Stripe API'),
              techCard('REST API'),
            ]),
            // highlights
            Text(
              'Highlights:',
              style: GoogleFonts.openSans(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '- Built a full-stack e-commerce Android app with product browsing, cart, and order tracking.',
              style: GoogleFonts.openSans(
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 12 : 13,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 4),
            Text(
              '- Developed REST APIs using Node.js & Express with JWT authentication and MongoDB.',
              style: GoogleFonts.openSans(
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 12 : 13,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 4),
            Text(
              '- Integrated Stripe for secure payments and Rive animations for smooth UI experience.',
              style: GoogleFonts.openSans(
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 12 : 13,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 4),
            Text(
              '- Deployed backend on AWS EC2 with production configuration and environment management.',
              style: GoogleFonts.openSans(
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 12 : 13,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                  onPressed: () {
                    launch(
                        'https://github.com/krithiga25/provider-ecommerce-app');
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'View on GitHub',
                      style: GoogleFonts.openSans(
                          color: Colors.white, fontSize: 12),
                    ),
                  )),
            )
          ],
        ),
      ),
    );

Widget project2(BuildContext context) => Container(
      width: ResponsiveWidget.isSmallScreen(context)
          ? ScreenSize.screenWidth * 0.85
          : ScreenSize.screenWidth * 0.32,
      height: ResponsiveWidget.isSmallScreen(context)
          ? ScreenSize.screenHeight * 0.90
          : ScreenSize.screenHeight * 0.70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.blueGrey.withValues(alpha: 0.8),
          width: 1.7,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              child: Image.asset(
                'assets/fs_mern.jpg',
                width: ScreenSize.screenWidth * 0.75,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'SplitEase — Group Expense Splitter',
              softWrap: true,
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Wrap(spacing: 4, runSpacing: 2, children: [
              techCard('Flutter'),
              techCard('Firebase'),
              techCard('Hive'),
              techCard('Riverpod'),
              techCard('Algorithms'),
            ]),
            SizedBox(height: 5),
            Text(
              'Highlights:',
              style: GoogleFonts.openSans(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '- Built a debt simplification algorithm using a greedy max-heap approach to minimize settlement transactions.',
              style: GoogleFonts.openSans(
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 12 : 13,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 4),
            Text(
              '- Implemented real-time expense synchronization across group members using Firebase Realtime Database.',
              style: GoogleFonts.openSans(
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 12 : 13,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 4),
            Text(
              '- Added offline-first support using Hive for local storage and automatic sync on reconnect.',
              style: GoogleFonts.openSans(
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 12 : 13,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 4),
            Text(
              '- Structured application state using Riverpod with clear separation of expense and settlement logic.',
              style: GoogleFonts.openSans(
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 12 : 13,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                  onPressed: () {
                    launch('https://github.com/krithiga25/SplitEase');
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'View on GitHub',
                      style: GoogleFonts.openSans(
                          color: Colors.white, fontSize: 12),
                    ),
                  )),
            )
          ],
        ),
      ),
    );

Widget project3(BuildContext context) => Container(
      width: ResponsiveWidget.isSmallScreen(context)
          ? ScreenSize.screenWidth * 0.85
          : ScreenSize.screenWidth * 0.32,
      height: ResponsiveWidget.isSmallScreen(context)
          ? ScreenSize.screenHeight * 0.90
          : ScreenSize.screenHeight * 0.70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.blueGrey.withValues(alpha: 0.8),
          width: 1.7,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              child: Image.asset(
                'assets/dr_dcnn.jpg',
                width: ScreenSize.screenWidth * 0.75,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Ecommerce App Helpbot — Agentic RAG Chatbot',
              softWrap: true,
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Wrap(spacing: 4, runSpacing: 2, children: [
              techCard('Provider'),
              techCard('RAG'),
              techCard('REST API'),
              techCard('Agentic AI'),
              techCard('LLM API'),
            ]),
            SizedBox(height: 5),
            Text(
              'Highlights:',
              style: GoogleFonts.openSans(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 4),
            Text(
              '- Built a production-grade RAG pipeline using hybrid retrieval with FAISS semantic search and BM25 keyword search.',
              style: GoogleFonts.openSans(
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 12 : 13,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 4),
            Text(
              '- Designed a multi-step LangGraph agent workflow with intent classification and dynamic query routing.',
              style: GoogleFonts.openSans(
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 12 : 13,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 4),
            Text(
              '- Developed a Flutter chat interface with streaming responses and backend AI integration via REST APIs.',
              style: GoogleFonts.openSans(
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 12 : 13,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 4),
            Text(
              '- Optimized performance using Redis caching for embeddings and repeated queries to reduce LLM latency.',
              style: GoogleFonts.openSans(
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 12 : 13,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                  onPressed: () {
                    launch(
                        'https://github.com/krithiga25/provider-ecommerce-app/RAG_pipeline');
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'View on GitHub',
                      style: GoogleFonts.openSans(
                          color: Colors.white, fontSize: 12),
                    ),
                  )),
            )
          ],
        ),
      ),
    );

Widget techCard(String tech) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.blueGrey.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        tech,
        style: GoogleFonts.openSans(color: Colors.white, fontSize: 12),
      ),
    );
