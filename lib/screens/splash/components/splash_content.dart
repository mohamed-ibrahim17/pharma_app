import 'package:flutter/material.dart';
// Best Practice!!
import '../../../constants.dart';
import '../../../size_config.dart';

// Contain The main content of the splach screen
// Contents:
// 1. App Name Title
// 2. Text props for each slide
// 3. Image path props for each slide

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          'Pharma App',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
          // fontSize: getProportionateScreenWidth(36),
          // color: kPrimaryColor,
          // fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}