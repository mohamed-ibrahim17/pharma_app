import 'package:flutter/material.dart';
import './components/body.dart'; // Body

class SignInScreen extends StatelessWidget {
  // Route name
  static String route = '/sign_in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Body(),
    );
  }
}