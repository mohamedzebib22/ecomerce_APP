import 'package:ecomerce_app/core/widgets/product_image_section.dart';
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