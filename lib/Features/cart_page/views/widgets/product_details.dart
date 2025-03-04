import 'package:ecomerce_app/Features/cart_page/views/widgets/sections/title_and_color_section.dart';
import 'package:ecomerce_app/core/widgets/product_image_section.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: Row(
        children: [ProductImageSection(), TitleAndColorSection()],
      ),
    );
  }
}
