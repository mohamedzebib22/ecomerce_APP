import 'package:ecomerce_app/Features/prpoduct_tap/views/widgets/custom_product.dart';
import 'package:ecomerce_app/core/widgets/custom_text_feild.dart';
import 'package:ecomerce_app/core/widgets/custome_search_and_cart.dart';
import 'package:flutter/material.dart';

class ProductTap extends StatelessWidget {
  const ProductTap({super.key});
  static String id = 'ProductTap';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.02, vertical: height * 0.02),
          child: Column(
            children: [
             CustomeSearchAndCart(),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                  childAspectRatio : 2/3,
                  ),
                  itemCount: 20,
                  itemBuilder: (context,index){
                  return CustomProduct(width: width, height: height);
                }),
              ),
            ],
          ),
        ),
      )
    );
  }
}


