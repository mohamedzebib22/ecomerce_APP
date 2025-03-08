import 'package:ecomerce_app/Features/product_tap/views/widgets/custom_price.dart';
import 'package:ecomerce_app/core/widgets/product_image_section.dart';
import 'package:ecomerce_app/Features/product_tap/views/widgets/custom_product.dart';
import 'package:ecomerce_app/core/widgets/cart_button.dart';
import 'package:ecomerce_app/domain/Entity/rud_cart_item_entity.dart';
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
          ProductImageSection(image: 'https://cdn.pixabay.com/photo/2015/06/09/16/12/error-803716_1280.png',),
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