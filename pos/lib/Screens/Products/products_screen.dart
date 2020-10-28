import 'package:flutter/material.dart';
import 'package:pos/Screens/Products/components/bottom_nav.dart';
import 'package:pos/Screens/Products/components/body.dart';

class ProductScreen extends StatelessWidget {
  static String routeName = "/products";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: Body(),
      bottomNavigationBar: BottomNav(),
    );
  }
}
