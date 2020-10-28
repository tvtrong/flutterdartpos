import 'package:flutter/material.dart';
import 'package:pos/Screens/Barcode/barcode_scan_screen.dart';
import 'package:pos/Screens/Products/products_screen.dart';
import 'package:pos/Screens/Welcome/welcome_screen.dart';
import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SearchField(),
          const SizedBox(width: 10),
          IconBtnWithCounter(
            svgSrc: "assets/icons/coffee.svg",
            press: () => Navigator.pushNamed(context, ProductScreen.routeName),
          ),
          const SizedBox(width: 10),
          IconBtnWithCounter(
            svgSrc: "assets/icons/barcode.svg",
            //numOfitem: 3,
            press: () => Navigator.pushNamed(context, BarcodeScreen.routeName),
          ),
          Spacer(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Log out.svg",
            press: () => Navigator.pushNamed(context, WelcomeScreen.routeName),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
