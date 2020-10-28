import 'package:flutter/material.dart';
import 'package:pos/components/custom_surfix_icon.dart';
import 'package:pos/components/rounded_button.dart';
import 'package:pos/components/form_error.dart';
import 'package:pos/Screens/Login/login_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String conform_password;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildConformPassFormField(),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.05,),
          RoundedButton(
            text: "Register",
            color: greenColor,
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                // if all are valid then go to success screen
                Navigator.pushNamed(context, LoginScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  Container buildConformPassFormField() {
    return Container(
      width: getProportionateScreenWidth(500),
      height: getProportionateScreenHeight(100),
      child: TextFormField(
        obscureText: true,
        onSaved: (newValue) => conform_password = newValue,
        onChanged: (value) {
          if (value.isNotEmpty) {
            removeError(error: kPassNullError);
          } else if (value.isNotEmpty && password == conform_password) {
            removeError(error: kMatchPassError);
          }
          conform_password = value;
        },
        validator: (value) {
          if (value.isEmpty) {
            addError(error: kPassNullError);
            return "";
          } else if ((password != value)) {
            addError(error: kMatchPassError);
            return "";
          }
          return null;
        },
        style:
              new TextStyle(fontWeight: FontWeight.normal,fontSize: 20, color: orangeColor),
        decoration: InputDecoration(
          labelText: "Confirm Password",
          hintText: "Re-enter your password",
          hintStyle: TextStyle(color: creamColor.withOpacity(0.1)),
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
        ),
      )
    );
  }

  SizedBox buildPasswordFormField() {
    return SizedBox(
      width: getProportionateScreenWidth(500),
      height: getProportionateScreenHeight(100),
      child: TextFormField(
        obscureText: true,
        onSaved: (newValue) => password = newValue,
        onChanged: (value) {
          if (value.isNotEmpty) {
            removeError(error: kPassNullError);
          } else if (value.length >= 8) {
            removeError(error: kShortPassError);
          }
          password = value;
        },
        validator: (value) {
          if (value.isEmpty) {
            addError(error: kPassNullError);
            return "";
          } else if (value.length < 8) {
            addError(error: kShortPassError);
            return "";
          }
          return null;
        },
        style:
              new TextStyle(fontWeight: FontWeight.normal,fontSize: 20, color: orangeColor),
        decoration: InputDecoration(
          labelText: "Password",
          hintText: "Enter your password",
          hintStyle: TextStyle(color: creamColor.withOpacity(0.1)),
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
        ),
      )
    );
  }

  SizedBox buildEmailFormField() {
    return SizedBox(
        width: getProportionateScreenWidth(500),
        height: getProportionateScreenHeight(100),
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          onSaved: (newValue) => email = newValue,
          onChanged: (value) {
            if (value.isNotEmpty) {
              removeError(error: kEmailNullError);
            } else if (emailValidatorRegExp.hasMatch(value)) {
              removeError(error: kInvalidEmailError);
            }
            return null;
          },
          validator: (value) {
            if (value.isEmpty) {
              addError(error: kEmailNullError);
              return "";
            } else if (!emailValidatorRegExp.hasMatch(value)) {
              addError(error: kInvalidEmailError);
              return "";
            }
            return null;
          },
          autofocus: true,
          style:
              new TextStyle(fontWeight: FontWeight.normal,fontSize: 20, color: yellowColor),
          decoration: InputDecoration(
            labelText: "Email",
            hintText: "Enter your email",
            hintStyle: TextStyle(color: creamColor.withOpacity(0.1)),
            // If  you are using latest version of flutter then lable text and hint text shown like this
            // if you r using flutter less then 1.20.* then maybe this is not working properly
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
          ),
        ));
  }
}
