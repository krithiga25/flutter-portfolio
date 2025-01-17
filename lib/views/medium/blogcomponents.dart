import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../shared/screensize.dart';
import '../../wrapper/responsive.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

final List<Article> articles = [
  Article(
    title:
        'Web Scraping Flipkart Web Page using BeautifulSoup: A Python Tutorial',
    link:
        'https://medium.com/@krithigaperumal/web-scraping-flipkart-web-page-using-beautifulsoup-a-python-tutorial-90ca9c2e3b45',
    site: 'Medium',
  ),
  Article(
    title:
        'Web Scraping Flipkart Web Page using BeautifulSoup: A Python Tutorial',
    link: 'https://www.waveapps.com/freelancing/writer-portfolio',
    site: 'Medium',
  ),
  // Add more articles as needed
];

class Article {
  final String title;
  final String link;
  final String site;

  Article({required this.title, required this.link, required this.site});
}

blogContent(BuildContext context) {
  return SizedBox(
      width: ResponsiveWidget.isSmallScreen(context)
          ? ScreenSize.screenWidth * 0.75
          //changed it to 0.75 from 0.32
          : ScreenSize.screenWidth * 0.75,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: AnimationConfiguration.toStaggeredList(
            duration: const Duration(milliseconds: 1000),
            childAnimationBuilder: (widget) => SlideAnimation(
                  child: FadeInAnimation(
                    child: widget,
                  ),
                ),
            children: <Widget>[
              Container(
                //bottom alone
                padding: const EdgeInsets.only(bottom: 20),
                child: const Text(
                  //change font
                  "Sometimes, I write..",
                  textScaler: TextScaler.linear(3),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              for (int i = 0; i < articles.length; i++)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ArticleWidget(articles[i]),

                    const SizedBox(height: 25), // Add space after each ArticleWidget
                  ],
                ),
            ]),
      ));
}

class ArticleWidget extends StatelessWidget {
  final Article article;

  const ArticleWidget(this.article, {super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          left: 0,
          child: Icon(Icons.format_quote, size: 48.0),
        ),
        const SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.5,
                        decoration: TextDecoration.underline,
                      ),
                      text: article.title,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launchUrl(Uri.parse(article.link));
                        })),
              const SizedBox(height: 10),
              Text(
                article.site,
                style: const TextStyle(fontSize: 14.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
/* return Container(
      width: ResponsiveWidget.isSmallScreen(context)
          ? ScreenSize.screenWidth * 0.75
          //changed it to 0.75 from 0.32
          : ScreenSize.screenWidth * 0.75,
      //padding: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.format_quote, size: 24.0),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                article.title,
                softWrap: true,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                article.link,
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(height: 4.0),
              Text(
                article.description,
                style: TextStyle(fontSize: 14.0),
              ),
            ],
          ),
        ],
      ),
    ); */
