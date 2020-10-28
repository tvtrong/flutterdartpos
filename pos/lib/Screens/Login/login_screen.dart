import 'package:flutter/material.dart';
import 'package:pos/Screens/Login/components/body.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "/signin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Body(),
    );
  }
}
