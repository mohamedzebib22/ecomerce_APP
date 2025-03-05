import 'package:ecomerce_app/Features/cart_page/cubit/get_cart_product_cubit/get_cart_product_cubit.dart';
import 'package:ecomerce_app/Features/cart_page/views/widgets/product_details.dart';
import 'package:flutter/material.dart';

class ShowProductSection extends StatelessWidget {
  const ShowProductSection({
    super.key,
    required this.viewModel,
  });

  final GetCartProductCubit viewModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
          itemCount: viewModel.productList.length,
          itemBuilder: (context, index) {
            return ProductDetails(
              cartItemEntity: viewModel.productList[index],
            );
          },
        ),
      );
  }
}