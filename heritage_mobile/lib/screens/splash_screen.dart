import 'package:flutter/material.dart';
import '../configrations/configuration.dart';
import '../screens/splash_body.dart';


class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Body(),
      ),
    );
  }
}




