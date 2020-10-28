import 'package:flutter/material.dart';
import 'package:pos/Screens/Welcome/components/body.dart';
import 'package:pos/size_config.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = "/welcome";

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
