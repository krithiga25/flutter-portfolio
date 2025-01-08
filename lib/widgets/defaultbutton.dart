import 'package:flutter/material.dart';
import 'package:portfolio_web/shared/constants.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function press;

  DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.fromLTRB(10, 1, 10, 1),
      decoration: BoxDecoration(
          //color: Color.fromARGB(255, 12, 20, 65)
          //borderRadius: BorderRadius.circular(10),
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 148, 89, 250),
              Colors.teal,
            ],
          )),
      child: TextButton(
        onPressed: () => press(),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.25),
        ),
      ),
    );
  }
}
