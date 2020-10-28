import 'package:flutter/material.dart';
import 'package:pos/Screens/Login/login_screen.dart';
import 'package:pos/Screens/Signup/components/background.dart';
import 'package:pos/Screens/Welcome/welcome_screen.dart';
import 'package:pos/components/already_have_an_account.dart';
import 'package:pos/components/divider.dart';
import 'package:pos/components/rounded_button.dart';
import 'package:pos/components/rounded_input_field.dart';
import 'package:pos/components/rounded_password_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pos/constants.dart';
import 'package:pos/size_config.dart';
import 'package:pos/Screens/Signup/components/sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(70)),
          child: SingleChildScrollView(
            child: Column(
              children: [// 4%
                Text(
                  "Register Account", 
                  style: TextStyle(
                    color: beigieColor,
                    fontSize: getProportionateScreenWidth(25),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'FS GillSansMTPro-Medium'
                  ),
                  ),
                Text(
                  "Complete your details",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: yellowColor,
                    fontFamily: 'VNI-Duff',
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.05,),
                SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.05,),
                Text(
                  'By continuing your confirm that you agree \nwith our Term and Condition',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: goldColor,
                    fontFamily: 'FS GillSansMTPro-Medium',
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
        //child: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
        //  children: <Widget>[
        //    SizedBox(
        //    height: size.height * 0.01,
        //    ),
        //    SvgPicture.asset(
        //      "assets/icons/logo.svg",
        //      height: size.height * 0.36,
        //    ),
        //    SizedBox(height: size.height * 0.03),
        //    RoundedInputField(
        //      hintText: "Your Email",
        //      onChanged: (value) {},
        //    ),
        //    RoundedPasswordField(
        //      onChanged: (value) {},
        //    ),
        //    SizedBox(height: size.height * 0.01),
        //    Row(
        //      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //      children: <Widget>[
        //        RoundedButton(
        //          text: "Back",
        //          color: burgundyColor,
        //          press: () {
        //            Navigator.push(
        //              context,
        //              MaterialPageRoute(builder: (context) {
        //                return WelcomeScreen();
        //              }),
        //            );
        //          },
        //        ),
        //        RoundedButton(
        //          text: "Submit",
        //          color: greenColor,
        //          press: () {},
        //        ),
        //      ],
        //    ),
        //    SizedBox(height: size.height * 0.03),
        //    AlreadyHaveAnAccount(
        //      login: false,
        //      press: () {
        //        Navigator.push(
        //          context,
        //          MaterialPageRoute(
        //            builder: (context) {
        //              return LoginScreen();
        //            },
        //          ),
        //        );
        //      },
        //    ),
        //    OrDivider(),
        //    //Row(
        //    //  mainAxisAlignment: MainAxisAlignment.center,
        //    //  children: <Widget>[
        //    //    SocalIcon(
        //    //      iconSrc: "assets/icons/facebook.svg",
        //    //      press: () {},
        //    //    ),
        //    //    SocalIcon(
        //    //      iconSrc: "assets/icons/twitter.svg",
        //    //      press: () {},
        //    //    ),
        //    //    SocalIcon(
        //    //      iconSrc: "assets/icons/google-plus.svg",
        //    //      press: () {},
        //    //    ),
        //    //  ],
        //    //),
        //  ],
        //),
      
    );
  }
}