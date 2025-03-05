

import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/get_cart_item_entity.dart';

abstract class GetCartProductState {}

class GetCartProductInitial extends GetCartProductState {}
class GetCartProductLoading extends GetCartProductState {}
class GetCartProductSucsess extends GetCartProductState {
  final GetCartItemResponseEntity getCartItemResponseEntity;

  GetCartProductSucsess({required this.getCartItemResponseEntity});
}
class GetCartProductFaliuer extends GetCartProductState {
  final Faliures faliures;

  GetCartProductFaliuer({required this.faliures});

}
