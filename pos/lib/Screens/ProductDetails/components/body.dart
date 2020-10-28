import 'package:flutter/material.dart';
import 'package:pos/Models/Product.dart';
import 'package:pos/Screens/ProductDetails/components/color_dots.dart';
import 'package:pos/Screens/ProductDetails/components/product_description.dart';
import 'package:pos/Screens/ProductDetails/components/product_images.dart';
import 'package:pos/Screens/ProductDetails/components/top_rounded_container.dart';
import 'package:pos/components/rounded_button.dart';
import 'package:pos/constants.dart';
import 'package:pos/size_config.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: blackColor,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: greenColor,
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundedContainer(
                      color: blackColor,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: RoundedButton(
                          text: "Add To Cart",
                          press: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}