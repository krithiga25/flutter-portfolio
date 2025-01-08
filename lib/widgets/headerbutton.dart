import 'package:flutter/material.dart';
import 'package:portfolio_web/shared/constants.dart';

class HeaderButton extends StatelessWidget {
  final text;
  final press;
  final bool isSelected = false;

  HeaderButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.fromLTRB(10, 1, 10, 1),
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
  final text1;
  final press1;
  final bool isSelected;

  SmallHeaderButton({
    Key? key,
    this.text1,
    required this.press1,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.fromLTRB(10, 1, 10, 1),
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
