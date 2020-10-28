import 'package:flutter/material.dart';
import 'package:pos/Models/Product.dart';
import 'package:pos/Screens/ProductDetails/components/body.dart';
import 'package:pos/Screens/ProductDetails/components/custom_app_bar.dart';
import 'package:pos/constants.dart';

class ProductDetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: brownColor,
      appBar: CustomAppBar(rating: agrs.product.rating),
      body: Body(product: agrs.product),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}