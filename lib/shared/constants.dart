import 'package:flutter/material.dart';

const kyellow = Color(0xFFFFE000);
const kblack = Color(0xFF000000);
const kwhite = Color(0xFFFFFFFF);
const ktransparent = Colors.transparent;

const MaterialColor mcwhite = MaterialColor(
  0xFFFFFFFF,
  <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  },
);

Widget headingText(String text) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
    child: Text(
      text,
      style: const TextStyle(
        color: kyellow,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.25,
      ),
    ),
  );
}
