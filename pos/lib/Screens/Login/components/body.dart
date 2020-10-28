import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pos/Screens/Login/components/background.dart';
import 'package:pos/Screens/Signup/signup_screen.dart';
import 'package:pos/Screens/Welcome/welcome_screen.dart';
import 'package:pos/components/already_have_an_account.dart';
import 'package:pos/components/divider.dart';
import 'package:pos/components/rounded_button.dart';
import 'package:pos/components/rounded_input_field.dart';
import 'package:pos/components/rounded_password_field.dart';
import 'package:pos/constants.dart';
import 'package:pos/size_config.dart';
import 'package:pos/Screens/Login/components/sign_form.dart';
import 'package:pos/components/no_account_text.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(50)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: creamColor,
                    fontSize: getProportionateScreenWidth(25),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your email and password",
                  style: TextStyle(
                    color: yellowColor,
                    fontFamily: 'VNI-Duff',
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //Widget build(BuildContext context) {
  //  Size size = MediaQuery.of(context).size;
  //return Background(
  //  child: Column(
  //    mainAxisAlignment: MainAxisAlignment.center,
  //    children: <Widget>[
  //      SizedBox(
  //        height: SizeConfig.screenHeight * 0.01,
  //      ),
  //      SvgPicture.asset(
  //        "assets/icons/logo.svg",
  //        height: SizeConfig.screenHeight * 0.36,
  //      ),
  //      SizedBox(
  //        height: SizeConfig.screenHeight * 0.03,
  //      ),
  //      RoundedInputField(
  //        hintText: "Your Email",
  //        onChanged: (value) {},
  //      ),
  //      RoundedPasswordField(
  //        onChanged: (value) {},
  //      ),
  //      SizedBox(
  //        height: SizeConfig.screenHeight * 0.01,
  //      ),
  //      Row(
  //        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //        children: <Widget>[
  //          RoundedButton(
  //            text: "Back",
  //            color: burgundyColor,
  //            press: () {
  //              Navigator.push(
  //                context,
  //                MaterialPageRoute(builder: (context) {
  //                  return WelcomeScreen();
  //                }),
  //              );
  //            },
  //          ),
  //          RoundedButton(
  //            text: "Login",
  //            color: greenColor,
  //            press: () {},
  //          ),
  //        ],
  //      ),
  //      SizedBox(
  //        height: size.height * 0.03,
  //      ),
  //      AlreadyHaveAnAccount(
  //        press: () {
  //          Navigator.push(
  //            context,
  //            MaterialPageRoute(builder: (context) {
  //              return SignUpScreen();
  //            }),
  //          );
  //        },
  //      ),
  //      OrDivider(),
  //    ],
  //  ),
  //);
  //}
}
