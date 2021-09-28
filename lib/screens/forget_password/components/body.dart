import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import './forget_password_form.dart';

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
                  'Forget Password',
                  style: headingStyle,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(10),
                    horizontal: getProportionateScreenWidth(20),
                  ),
                  child: Text(
                    'Please enter your validated email to recieve a reset password link',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.14),
                ForgetPasswordForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
