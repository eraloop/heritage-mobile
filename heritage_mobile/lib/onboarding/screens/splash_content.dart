import 'package:flutter/material.dart';
import '../configrations/configuration.dart';
import '../configrations/constants.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    required this.caption,
    required this.heading,
  });

  final caption, heading;

  final TextAlign alignment = TextAlign.left;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Column(
        children: <Widget>[
          Text(
            heading,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600,
            ),
            textAlign: alignment,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            caption,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: headColor,
                fontWeight: FontWeight.w400,
                fontSize: 18,
                wordSpacing: 2.0,
                letterSpacing: 2.0),
          ),
          // const SizedBox(
          //   height: 5,
          // ),
          // Text(
          //   text,
          //   textAlign: TextAlign.center,
          //   style: const TextStyle(
          //       color: bodyColor,
          //       fontSize: 16,
          //       wordSpacing: 2.0,
          //       letterSpacing: 2.0,
          //       height: 1.5),
          // ),
        ],
      ),
    );
  }
}
