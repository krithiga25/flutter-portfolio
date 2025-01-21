import 'package:flutter/material.dart';
import 'package:portfolio_web/wrapper/largescreen.dart';
import 'package:portfolio_web/wrapper/responsive.dart';
import 'package:portfolio_web/wrapper/smallscreen.dart';
import "package:overlay_support/overlay_support.dart";

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const OverlaySupport(
      child: MaterialApp(
        title: "Portfolio | Krithiga Perumal",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: ResponsiveWidget(
              largeScreen: LargeScreen(), smallScreen: SmallScreen()),
        ),
      ),
    );
  }
}
