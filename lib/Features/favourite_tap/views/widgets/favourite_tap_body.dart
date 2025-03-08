import 'package:ecomerce_app/Features/favourite_tap/cubit/wish_list_cubit.dart';
import 'package:ecomerce_app/Features/favourite_tap/cubit/wish_list_state.dart';
import 'package:ecomerce_app/Features/favourite_tap/views/widgets/sections/product_details_section.dart';
import 'package:ecomerce_app/core/di/di.dart';
import 'package:ecomerce_app/core/widgets/custome_search_and_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouriteTapBody extends StatelessWidget {
  const FavouriteTapBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    WishListCubit viewModel = getIt<WishListCubit>();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/smalllogo.png'),
          ],
        ),
        SizedBox(
          height: height * 0.02,
        ),
        CustomeSearchAndCart(),
        SizedBox(
          height: height * 0.02,
        ),
        BlocBuilder<WishListCubit, WishListState>(
          bloc: WishListCubit.get(context)..getItemInWishList(),
          builder: (context, state) {
            if (state is WishListLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is WishListSucsess) {
              return SizedBox(
                width: double.infinity,
                height: height * 0.16,
                child: ListView.builder(
                  itemCount:
                      state.getProductWishListResponseEntity.data!.length,
                  itemBuilder: (context, index) {
                    return ProductDetailsSection(
                        productItem: state
                            .getProductWishListResponseEntity.data![index]);
                  }
                ),
              );
            }else if (state is WishListFailuer){
              return Center(child: Text(state.faliures.errMessage),);
            }
            return Container();
          },
        ),
      ],
    );
  }
}
