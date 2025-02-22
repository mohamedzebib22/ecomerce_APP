import 'package:ecomerce_app/Features/favourite_tap/views/widgets/sections/product_image_section.dart';
import 'package:ecomerce_app/Features/prpoduct_tap/views/widgets/custom_product.dart';
import 'package:ecomerce_app/core/widgets/cart_button.dart';
import 'package:flutter/material.dart';

class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({
    super.key,
    
  });

  

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: Row(
        children: [
          ProductImageSection(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Nike Air Jordon'),
                SizedBox(
                  height: height * 0.01,
                ),
                Text('Black color'),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [CustomPrice(), CartButton(onTap: () {})],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}