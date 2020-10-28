import 'package:flutter/material.dart';
import 'package:pos/size_config.dart';
import 'package:flutter_color_models/flutter_color_models.dart';

const brownColor = Color(0xFF382B2A);
final orangeColor = RgbColor(204, 107, 57).toColor();
const yellowColor = Color(0xFFFBD834);
const goldColor = Color(0xFFE6C67C);
final creamColor = RgbColor(241, 233, 198).toColor();
const beigieColor = Color(0xFFE3BFA3);

const blackColor = Color(0xFF2B2A29);
const greenColor = Color(0xFF025F50);
const burgundyColor = Color(0xFF502019);
final lightgreenColor = RgbColor(97, 174, 118).toColor();
final lightBrownColor = RgbColor(165, 101, 30).toColor();
const lightOrangeColor = Color(0xFFEFAD4E);
const red = Color(0xFFB71C1C);
const kPrimaryLightColor = Color(0xFFE3BFA3);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
