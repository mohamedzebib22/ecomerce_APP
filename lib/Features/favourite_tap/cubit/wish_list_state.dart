
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/get_product_wish_list.dart';

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
