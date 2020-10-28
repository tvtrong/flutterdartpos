import 'package:flutter/material.dart';
import 'package:pos/constants.dart';
import 'package:pos/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: SizeConfig.screenHeight * 0.03),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(20),
            color: yellowColor,
            fontWeight: FontWeight.bold,
            fontFamily: 'FS Neusa Bold'
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.01),
        SvgPicture.asset(
          image,
          height: SizeConfig.screenHeight * 0.55,
          width: SizeConfig.screenWidth * 0.55,
        ),
      ],
    );
  }
}