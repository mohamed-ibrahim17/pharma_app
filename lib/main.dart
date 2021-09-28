import 'package:flutter/material.dart';
// Best Practice!!
import './routes.dart';
import './screens/splash/splash_screen.dart';
import './theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Stop Debug Flag
      title: 'Pharma App',
      theme: theme(),
      initialRoute: SplashScreen.route,
      routes: routes,
    );
  }
}
