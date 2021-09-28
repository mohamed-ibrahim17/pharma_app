import 'package:flutter/material.dart';
import '../../../components/default_button.dart';
import '../../../size_config.dart';
import '../../../constants.dart';

class OTPForm extends StatefulWidget {
  @override
  _OTPFormState createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextField({String value, FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  decoration: otpInputDecoration,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin2FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  obscureText: true,
                  focusNode: pin2FocusNode,
                  keyboardType: TextInputType.number,
                  decoration: otpInputDecoration,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin3FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  obscureText: true,
                  focusNode: pin3FocusNode,
                  keyboardType: TextInputType.number,
                  decoration: otpInputDecoration,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin4FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  obscureText: true,
                  focusNode: pin4FocusNode,
                  keyboardType: TextInputType.number,
                  decoration: otpInputDecoration,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                  onChanged: (value) {
                    pin4FocusNode.unfocus();
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.14),
          DefaultButton(
            text: 'Continue',
            press: () {
              // if (_formKey.currentState.validate()) {
              //   _formKey.currentState.save();
              // }
            },
          )
        ],
      ),
      // Column(
      //   children: [
      //     buildEmailFormField(),
      //     SizedBox(height: getProportionateScreenHeight(20)),
      //     FormError(errors: errors.length > 0 ? errors : []),
      //     SizedBox(height: SizeConfig.screenHeight * 0.14),
      //     DefaultButton(
      //       text: 'Continue',
      //       press: () {
      //         if (_formKey.currentState.validate()) {
      //           _formKey.currentState.save();
      //         }
      //       },
      //     )
      //   ],
      // ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.number,
      onChanged: (value) {},
      decoration: otpInputDecoration,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 24),
    );
  }
}
