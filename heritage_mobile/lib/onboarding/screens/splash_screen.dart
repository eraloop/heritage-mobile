import 'package:flutter/material.dart';
import '../../utilities/colors.dart';
import '../configrations/configuration.dart';
import '../screens/splash_body.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Container(
        child: Scaffold(
          // color: AppColors.primaryColor,
          backgroundColor: AppColors.primaryColor,
          body: Body(),
        ),
      ),
    );
  }
}
