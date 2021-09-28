import 'package:flutter/material.dart';
// Best Practice!!
import './components/body.dart';

class HomeScreen extends StatelessWidget {
  // Route name
  static String route = '/home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
