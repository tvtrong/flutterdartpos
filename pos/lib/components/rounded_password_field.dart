import 'package:flutter/material.dart';
import 'package:pos/components/text_field_container.dart';
import 'package:pos/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key, 
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: burgundyColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: orangeColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
