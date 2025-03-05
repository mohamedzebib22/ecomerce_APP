import 'package:ecomerce_app/Features/cart_page/views/widgets/sections/title_and_color_section.dart';
import 'package:ecomerce_app/core/widgets/product_image_section.dart';
import 'package:ecomerce_app/domain/Entity/get_cart_item_entity.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key, required this.cartItemEntity,
  });

 final GetCartProductsEntity cartItemEntity;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(vertical: height*0.01),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: Row(
        children: [ProductImageSection(image: cartItemEntity.product!.imageCover??'',), TitleAndColorSection(title: cartItemEntity.product!.title??'', price: cartItemEntity.price??0, countItem: cartItemEntity.count??0,)],
      ),
    );
  }
}
