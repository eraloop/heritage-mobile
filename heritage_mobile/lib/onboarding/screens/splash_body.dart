import 'package:flutter/material.dart';
import '../configrations/configuration.dart';
import '../configrations/constants.dart';
import '../data/data.dart';
import '../screens/splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(left: 40, right: 40),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            Expanded(
              flex: 5,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  caption: splashData[index]["caption"],
                  heading: splashData[index]["heading"],
                  // text: splashData[index]['text'],
                  // alignment: splashData[index]['alignment'],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(10)),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Skip',
                          style: TextStyle(color: bodyColor, fontSize: 16),
                        ),
                        Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            color: rightButton,
                            borderRadius: BorderRadius.circular(20),
                            // border: Border.all(color: Color.fromRGBO(141, 141, 141, 1.0).withAlpha(50), width: 1)),
                            boxShadow: [
                              BoxShadow(
                                color: rightButton.withOpacity(0.3),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 7),
      height: 3,
      width: currentPage == index ? 30 : 15,
      decoration: BoxDecoration(
        color: currentPage == index ? dotColor : notDotColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
