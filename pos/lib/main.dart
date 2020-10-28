import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pos/Screens/Welcome/welcome_screen.dart';
import 'package:pos/routes.dart';
import 'package:pos/theme.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VIETCUP COFFEE POS',
      theme: theme(),
      initialRoute: WelcomeScreen.routeName,
      routes: routes,
      //home: WelcomeScreen(),
  //    initialRoute: '/',
  //    routes: {
  //      // When navigating to the "/" route, build the FirstScreen widget.
  //      '/': (context) => FirstScreen(),
  //      // When navigating to the "/second" route, build the SecondScreen widget.
  //      '/second': (context) => SecondScreen(),
  //    );
  //    // Navigate to the second screen using a named route.
  //    Navigator.pushNamed(context, '/second');
    );
  }
}