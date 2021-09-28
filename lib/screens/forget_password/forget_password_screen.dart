import 'package:flutter/material.dart';
import './components/body.dart'; // Body

class ForgetPasswordScreen extends StatelessWidget {
  // Route name
  static String route = '/forget_password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forget Password'),
      ),
      body: Body(),
    );
  }
}