import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../size_config.dart';
// Home Screen
import '../../../screens/home/home_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          'assets/images/success.png',
          height: SizeConfig.screenHeight * 0.4,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.05),
        Text(
          'Login Success',
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(30),
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenHeight * 0.3,
          child: DefaultButton(
            text: 'Back to home',
            press: () {
              // Go to Home Screen
              Navigator.pushNamed(context, HomeScreen.route);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
