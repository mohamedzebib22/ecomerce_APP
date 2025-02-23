import 'package:ecomerce_app/Features/cart_page/views/widgets/product_details.dart';
import 'package:ecomerce_app/core/widgets/add_to_cart_and_checkout.dart';
import 'package:ecomerce_app/core/widgets/const.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  static String id= 'Carrpage';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.shopping_cart_checkout)),
        ],
      ),
      body: Padding(
        padding:EdgeInsets.symmetric(
              horizontal: width * 0.04, vertical: height * 0.02),
        child: Column(children: [
          ProductDetails(),
            Spacer(),
             AddToCartAndCheckOut(imageIcon:checkOut ,)
        ],),
      ),
    );
  }
}



