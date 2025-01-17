import 'package:flutter/material.dart';
import 'package:portfolio_web/shared/constants.dart';

class HeaderButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final bool isSelected = false;

  const HeaderButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.fromLTRB(10, 1, 10, 1),
      decoration: BoxDecoration(
        //color: ktransparent,
        border: Border.all(color: isSelected ? kblack : ktransparent),
      ),
      child: TextButton(
        onPressed: press,
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.25),
        ),
      ),
    );
  }
}

class SmallHeaderButton extends StatelessWidget {
  final String text1;
  final VoidCallback press1;
  final bool isSelected;

  const SmallHeaderButton({
    Key? key,
    required this.text1,
    required this.press1,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.fromLTRB(10, 1, 10, 1),
      child: TextButton(
        child: Text(
          text1,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.25),
        ),
        onPressed: () {
          Navigator.pop(context);
          press1();
        },
      ),
    );
  }
}
