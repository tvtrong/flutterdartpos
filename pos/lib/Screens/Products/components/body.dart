import 'package:flutter/material.dart';
import 'package:pos/Models/Product.dart';
import 'package:pos/Screens/Products/components/products_card.dart';
import 'package:pos/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                    return ProductCard(product: demoProducts[index]);

                  //return SizedBox
                  //    .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}