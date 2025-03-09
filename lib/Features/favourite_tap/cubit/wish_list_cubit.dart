import 'package:bloc/bloc.dart';
import 'package:ecomerce_app/Features/favourite_tap/cubit/wish_list_state.dart';
import 'package:ecomerce_app/domain/Entity/get_product_wish_list.dart';
import 'package:ecomerce_app/domain/use_case/delete_item_wish_list.dart';
import 'package:ecomerce_app/domain/use_case/get_item_wish_list_use_case.dart';
import 'package:ecomerce_app/domain/use_case/post_wish_list_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class WishListCubit extends Cubit<WishListState> {
  WishListCubit(this.getItemWishListUseCase, this.postWishListUseCase,
      this.deleteItemWishList)
      : super(WishListInitial());

  final GetItemWishListUseCase getItemWishListUseCase;
  final PostWishListUseCase postWishListUseCase;
  final DeleteItemWishList deleteItemWishList;
  final TextEditingController titleController = TextEditingController();
  static WishListCubit get(context) => BlocProvider.of(context);

  List<WishListItemEntity> itemList = [];
   List<WishListItemEntity> filteredList = [];
  getItemInWishList() async {
    var either = await getItemWishListUseCase.invoke();
    emit(WishListLoading());
    return either.fold((error) {
      emit(WishListFailuer(faliures: error));
    }, (response) {
      itemList = response.data!;
      filteredList = itemList;
      emit(WishListSucsess(getProductWishListResponseEntity: response));
    });
  }

  postItemInWishList({required String id}) async {
    var either = await postWishListUseCase.invoke(id: id);
    emit(WishListLoading());
    return either.fold((error) {
      emit(WishListFailuer(faliures: error));
    }, (response) {
      print('======Product Added Sucssefully');
      emit(WishListPostSucsess(postAndDeleteItem: response));
    });
  }

  deleteProductishList({required String id}) async {
    var either = await deleteItemWishList.invoke(id: id);
    return either.fold((error) {
      emit(WishListFailuer(faliures: error));
    }, (response) {
      emit(WishListDeleteSucsess(postAndDeleteItem: response));
      getItemInWishList();
    });
  }

   changeText(String title) {
    filteredList = itemList.where((item) {
      return item.title!.toLowerCase().contains(title.toLowerCase());
    }).toList();
    emit(WishListSucsess(getProductWishListResponseEntity: GetProductWishListResponseEntity(data: filteredList)));
  }
}
