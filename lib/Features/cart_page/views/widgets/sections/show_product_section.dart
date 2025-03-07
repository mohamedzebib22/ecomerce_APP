import 'package:ecomerce_app/Features/cart_page/cubit/get_cart_product_cubit/get_cart_product_cubit.dart';
import 'package:ecomerce_app/Features/cart_page/views/widgets/product_details.dart';
import 'package:flutter/material.dart';

class ShowProductSection extends StatelessWidget {
  const ShowProductSection({
    super.key,
    required this.filterList, required this.itemCount, 
  });

  final int itemCount;
  final filterList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
          itemCount:itemCount,
          itemBuilder: (context, index) {
            var productFilterList= filterList[index];
            return ProductDetails(
              cartItemEntity:productFilterList, 
            );
          },
        ),
      );
  }
}