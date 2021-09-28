import 'package:flutter/material.dart';
import './components/body.dart'; // Body

class OTPScreen extends StatelessWidget {
  // Route name
  static String route = '/otp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
      ),
      body: Body(),
    );
  }
}