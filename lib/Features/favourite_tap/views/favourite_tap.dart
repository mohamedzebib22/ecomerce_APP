import 'package:ecomerce_app/Features/favourite_tap/views/widgets/favourite_tap_body.dart';
import 'package:ecomerce_app/Features/product_tap/views/widgets/custom_product.dart';
import 'package:ecomerce_app/core/widgets/cart_button.dart';
import 'package:ecomerce_app/core/widgets/custome_search_and_cart.dart';
import 'package:flutter/material.dart';

class FavouriteTap extends StatelessWidget {
  const FavouriteTap({super.key});
  static String id = 'FavouriteTap';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.04, vertical: height * 0.02),
          child: FavouriteTapBody(),
        ),
      ),
    );
  }
}
