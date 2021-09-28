import 'package:flutter/material.dart';
import './screens/splash/splash_screen.dart';
import './screens/sign_in/sign_in_screen.dart';
import './screens/forget_password/forget_password_screen.dart';
import './screens/login_success/login_success_screen.dart';
import './screens/sign_up/sign_up_screen.dart';
import './screens/complete_profile/complete_profile_screen.dart';
import './screens/otp/otp_screen.dart';
import './screens/home/home_screen.dart';
import './screens/product_details/product_details_screen.dart';

// Screens Route
final Map<String, WidgetBuilder> routes = {
  // Splash Screen
  SplashScreen.route: (context) => SplashScreen(),
  // SignIn Screen
  SignInScreen.route: (context) => SignInScreen(),
  // ForgetPassword Screen
  ForgetPasswordScreen.route: (context) => ForgetPasswordScreen(),
  // LoginSuccess Screen
  LoginSucessScreen.route: (context) => LoginSucessScreen(),
  // SignUp Screen
  SignUpScreen.route: (context) => SignUpScreen(),
  // CompleteProfile Screen
  CompleteProfileScreen.route: (context) => CompleteProfileScreen(),
  // OTP Screen
  OTPScreen.route: (context) => OTPScreen(),
  // Home Screen
  HomeScreen.route: (context) => HomeScreen(),
  // Product Details Screen
  ProductDetailsScreen.route: (context) => ProductDetailsScreen(),
};
