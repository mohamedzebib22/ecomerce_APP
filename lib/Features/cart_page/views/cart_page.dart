import 'package:ecomerce_app/Features/cart_page/cubit/get_cart_product_cubit/get_cart_product_cubit.dart';
import 'package:ecomerce_app/Features/cart_page/cubit/get_cart_product_cubit/get_cart_product_state.dart';
import 'package:ecomerce_app/Features/cart_page/views/widgets/product_details.dart';
import 'package:ecomerce_app/Features/cart_page/views/widgets/sections/show_product_section.dart';
import 'package:ecomerce_app/core/di/di.dart';
import 'package:ecomerce_app/core/widgets/add_to_cart_and_checkout.dart';
import 'package:ecomerce_app/core/widgets/const.dart';
import 'package:ecomerce_app/core/widgets/custom_text.dart';
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
          bloc: GetCartProductCubit.get(context)..getProductOfCart(),
          builder: (context, state) {
            if (state is RudCartProductSucsess) {
              return Column(
                children: [
                  ShowProductSection(
                      filterList:
                          state.getCartItemResponseEntity.data!.products!,
                      itemCount: state
                          .getCartItemResponseEntity.data!.products!.length),
                  AddToCartAndCheckOut(
                    imageIcon: checkOut,
                    price:
                        state.getCartItemResponseEntity.data!.totalCartPrice!,
                  )
                ],
              );
            } else if (state is RudCartProductFaliuer) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                Text('Some Thing Went Wrong Please Try Again!!!!!!!!'),
                MaterialButton(
                  height: height*0.08,
                  color: Colors.blue,
                  textColor: Colors.white,
                  focusColor: Colors.green,
                  hoverColor: Colors.red,
                  child: Text('Try Again'),
                  onPressed: (){
                  GetCartProductCubit.get(context).getProductOfCart();
                })
              ],);
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}

