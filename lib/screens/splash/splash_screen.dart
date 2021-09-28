import 'package:flutter/material.dart';
// Best Practice!!
import './components/body.dart';
import '../../size_config.dart';

class SplashScreen extends StatelessWidget {
  // Route name
  static String route = '/splash';

  @override
  Widget build(BuildContext context) {
    // Mandatory to use in Body Component
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
