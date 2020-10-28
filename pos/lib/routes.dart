import 'package:flutter/widgets.dart';
import 'package:pos/Screens/Barcode/barcode_scan_screen.dart';
import 'package:pos/Screens/Forgotpassword/forgot_password_screen.dart';
import 'package:pos/Screens/Home/home_screen.dart';
import 'package:pos/Screens/ProductDetails/product_details_screen.dart';
import 'package:pos/Screens/Welcome/welcome_screen.dart';
import 'package:pos/Screens/Login/login_screen.dart';
import 'package:pos/Screens/Signup/signup_screen.dart';
import 'package:pos/Screens/Products/products_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  ProductScreen.routeName: (context) => ProductScreen(),
  BarcodeScreen.routeName: (context) => BarcodeScreen(),
  ProductDetailsScreen.routeName: (context) => ProductDetailsScreen(),
};