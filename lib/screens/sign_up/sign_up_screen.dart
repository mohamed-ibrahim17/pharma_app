import 'package:flutter/material.dart';
import './components/body.dart'; // Body

class SignUpScreen extends StatelessWidget {
  // Route name
  static String route = '/sign_up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Body(),
    );
  }
}