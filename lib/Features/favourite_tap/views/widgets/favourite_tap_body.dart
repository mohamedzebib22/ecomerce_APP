import 'package:ecomerce_app/Features/favourite_tap/cubit/wish_list_cubit.dart';
import 'package:ecomerce_app/Features/favourite_tap/cubit/wish_list_state.dart';
import 'package:ecomerce_app/Features/favourite_tap/views/widgets/sections/show_item_favourite_section.dart';
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
    var filterTitle = viewModel.titleController;
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
        CustomeSearchAndCart(titleController:filterTitle ,onChanged: (title){
          WishListCubit.get(context).changeText(title);
        },),
        SizedBox(
          height: height * 0.02,
        ),
        BlocBuilder<WishListCubit, WishListState>(
          bloc: WishListCubit.get(context)..getItemInWishList(),
          builder: (context, state) {
            if (state is WishListLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is WishListSucsess) {
              var favouriteList = state.getProductWishListResponseEntity.data;  
              var filterList = favouriteList!.where((item){
                bool titleFilter = item.title!.toLowerCase().contains(filterTitle.text.toLowerCase()) ?? false;
                return titleFilter;
              }).toList();
              return ShowItemFavourite(
                
                favouriteItemList: filterList, 
                itemCount: filterList.length,);

            }else if (state is WishListFailuer){
              return Center(child: Text(state.faliures.errMessage),);
            }else if(state is WishListDeleteSucsess){
              
            }
            return Container();
          },
        ),
      ],
    );
  }
}
