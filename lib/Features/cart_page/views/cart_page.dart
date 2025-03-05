import 'package:ecomerce_app/Features/cart_page/cubit/get_cart_product_cubit/get_cart_product_cubit.dart';
import 'package:ecomerce_app/Features/cart_page/cubit/get_cart_product_cubit/get_cart_product_state.dart';
import 'package:ecomerce_app/Features/cart_page/views/widgets/product_details.dart';
import 'package:ecomerce_app/core/di/di.dart';
import 'package:ecomerce_app/core/widgets/add_to_cart_and_checkout.dart';
import 'package:ecomerce_app/core/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  static String id = 'Carrpage';
  @override
  Widget build(BuildContext context) {
    GetCartProductCubit viewModel = getIt<GetCartProductCubit>();
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
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.04, vertical: height * 0.02),
        child: BlocBuilder<GetCartProductCubit, GetCartProductState>(
          bloc: viewModel..getProductOfCart(),
          builder: (context, state) {
            return Column(
              children: [
                viewModel.productList.isEmpty
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Expanded(
                        child: ListView.builder(
                          itemCount: viewModel.productList.length,
                          itemBuilder: (context, index) {
                            return ProductDetails(
                              cartItemEntity: viewModel.productList[index],
                            );
                          },
                        ),
                      ),
                AddToCartAndCheckOut(
                  imageIcon: checkOut,
                  price: viewModel.totalPrice,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
