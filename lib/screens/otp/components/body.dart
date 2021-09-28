import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import './otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.07),
                Text(
                  'OTP Verification',
                  style: headingStyle,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(10),
                    horizontal: getProportionateScreenWidth(20),
                  ),
                  child: Text(
                    'Please check your messages and enter the code',
                    textAlign: TextAlign.center,
                  ),
                ),
                buildTimer(),
                SizedBox(height: SizeConfig.screenHeight * 0.14),
                OTPForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.14),
                GestureDetector(
                onTap: () => {},
                child: Text(
                  'Resend OTP Code',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'The code will expire in ',
          textAlign: TextAlign.center,
        ),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0), // 30s
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            '00:${value.toInt()}',
            style: TextStyle(
              color: kPrimaryColor
            ),
          ),
          onEnd: () => {},
        ),
      ],
    );
  }
}
