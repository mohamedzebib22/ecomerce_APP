
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/get_product_wish_list.dart';
import 'package:ecomerce_app/domain/Entity/post_and_delete_wish_list.dart';

abstract class WishListState {}

class WishListInitial extends WishListState {}
class WishListLoading extends WishListState {}
class WishListSucsess extends WishListState {
  final GetProductWishListResponseEntity getProductWishListResponseEntity;

  WishListSucsess({required this.getProductWishListResponseEntity});
}
class WishListFailuer extends WishListState {
  final Faliures faliures;

  WishListFailuer({required this.faliures});

}

class WishListPostSucsess extends WishListState{
  final PostAndDeleteWishListResponseEntity postAndDeleteItem;

  WishListPostSucsess({required this.postAndDeleteItem});
}
class WishListDeleteSucsess extends WishListState{
  final PostAndDeleteWishListResponseEntity postAndDeleteItem;

  WishListDeleteSucsess({required this.postAndDeleteItem});
}