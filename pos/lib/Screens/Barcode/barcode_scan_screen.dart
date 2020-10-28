import 'package:flutter/material.dart';
import 'components/body.dart';

class BarcodeScreen extends StatelessWidget {
  static String routeName = "/barcode";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Barcode"),
      ),
      body: Body(),
    );
  }
}