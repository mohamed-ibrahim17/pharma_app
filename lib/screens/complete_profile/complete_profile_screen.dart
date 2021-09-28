import 'package:flutter/material.dart';
import './components/body.dart'; // Body

class CompleteProfileScreen extends StatelessWidget {
  // Route name
  static String route = '/complete_profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complete Profile'),
      ),
      body: Body(),
    );
  }
}