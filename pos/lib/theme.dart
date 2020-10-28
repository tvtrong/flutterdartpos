import 'package:flutter/material.dart';
import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    fontFamily: 'FS GillSansMTPro-Medium',
        // is not restarted.
    primaryColor: yellowColor,
    scaffoldBackgroundColor: brownColor,
    appBarTheme: appBarTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(29),
    borderSide: BorderSide(color: goldColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    // floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: yellowColor),
    bodyText2: TextStyle(color: creamColor),
  );
}
AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: brownColor,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: yellowColor),
    textTheme: TextTheme(
      headline6: TextStyle(color: creamColor, fontSize: 13),
    ),
  );
}