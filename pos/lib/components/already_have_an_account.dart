import 'package:flutter/material.dart';
import 'package:pos/constants.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccount({
    Key key, 
    this.login = true, 
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an Account ?" : "Already have an Account ?",
          style: TextStyle(
            //fontWeight: FontWeight.bold,
            fontSize: 15,
            fontFamily: "FS GillSansMTPro-Medium",
            color: beigieColor,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? " Sign Up" : " Sign In",
            style: TextStyle(
              //fontWeight: FontWeight.bold,
              fontSize: 17,
              fontFamily: "VNI-Duff",
              color: yellowColor,
            ),
          ),
        ),
      ],
    );
  }
}
