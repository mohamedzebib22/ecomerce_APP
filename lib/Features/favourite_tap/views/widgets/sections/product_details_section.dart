import 'package:ecomerce_app/Features/product_tap/views/widgets/custom_price.dart';
import 'package:ecomerce_app/core/widgets/product_image_section.dart';
import 'package:ecomerce_app/Features/product_tap/views/widgets/custom_product.dart';
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
          ProductImageSection(image: 'data:image/jpeg;base64,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',),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Nike Air Jordon'),
                    IconButton(onPressed: (){}, icon: Icon(Icons.delete_outlined,size: 24,color: Colors.black,))
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text('Black color'),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [CustomPrice(price: 2000,), CartButton(onTap: () {})],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}