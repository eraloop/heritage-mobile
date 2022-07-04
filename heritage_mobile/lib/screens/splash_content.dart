import 'package:flutter/material.dart';
import '../configrations/configuration.dart';
import '../configrations/constants.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    required this.head,
    required this.text,
    required this.image,
  });

  final head, text, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Column(
        children: <Widget>[
          Image.asset(
            image,
            height: getProportionateScreenHeight(300),
            width: getProportionateScreenWidth(490),
          ),
          const Spacer(flex: 2),
          Text(
            head,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: headColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                wordSpacing: 2.0,
                letterSpacing: 2.0),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: bodyColor,
                fontSize: 16,
                wordSpacing: 2.0,
                letterSpacing: 2.0,
                height: 1.5),
          ),
        ],
      ),
    );
  }
}
