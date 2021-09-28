import 'package:flutter/material.dart';
// Best Practice!!
import '../../../size_config.dart';
import '../../../constants.dart';
import '../../../components/default_button.dart';
import '../components/splash_content.dart';
// SignIn Screen
import '../../sign_in/sign_in_screen.dart';

// Contain The splach screen body
// Contents:
// 1. Body Stateful widget
// 2. Slide list builder
// 3. Button for next screen (Home)

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  // Splash List Data
  List<Map<String, String>> splashData = [
    {
      'text': 'Welcome to Pharma App',
      'image': 'assets/images/splash_1.png'
    },
    {
      'text': 'We help people to find thier cure easily',
      'image': 'assets/images/splash_2.png'
    },
    {
      'text': 'We deliver medicines quikly \nLet\'s start NOW!',
      'image': 'assets/images/splash_3.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]['text'],
                  image: splashData[index]['image'],
                ),
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20),
                      vertical: getProportionateScreenHeight(15),
                    ),
                    child: DefaultButton(
                      text: 'Continue',
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.route);
                      },
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Silde Dots Builder
  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(top: 15, right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
