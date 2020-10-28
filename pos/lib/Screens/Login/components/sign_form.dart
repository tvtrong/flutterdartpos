import 'package:flutter/material.dart';
import 'package:pos/components/custom_surfix_icon.dart';
import 'package:pos/components/form_error.dart';
import 'package:pos/Screens/Forgotpassword/forgot_password_screen.dart';
import 'package:pos/Screens/Home/home_screen.dart';
import '../../../components/rounded_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
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
          SizedBox(height: SizeConfig.screenHeight * 0.05),
          Row(
            children: <Widget>[
              Checkbox(
                value: remember,
                activeColor: yellowColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text(
                "Remember me",
                style: TextStyle(color: goldColor),
              ),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline, color: orangeColor),
                ),
              )
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(10)),
          RoundedButton(
            text: "Login",
            color: greenColor,
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                // If the form is valid, display a snackbar. In the real world,
                // you'd often call a server or save the information in a database.
                // if all are valid then go to success screen
                Navigator.pushNamed(context, HomeScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  Container buildPasswordFormField() {
    return Container(
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
          return null;
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
        autofocus: true,
        style:
              new TextStyle(fontWeight: FontWeight.normal,fontSize: 25, color: orangeColor),
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
              new TextStyle(fontWeight: FontWeight.normal, fontSize: 25,color: creamColor),
        decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter your email",
          hintStyle: TextStyle(color: creamColor.withOpacity(0.1)),
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
        ),
      )
    );
  }
}