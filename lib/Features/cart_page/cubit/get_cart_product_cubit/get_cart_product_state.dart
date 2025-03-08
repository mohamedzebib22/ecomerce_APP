

import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/rud_cart_item_entity.dart';

abstract class GetCartProductState {}

class RudCartProductInitial extends GetCartProductState {}
class RudCartProductLoading extends GetCartProductState {}
class RudCartProductSucsess extends GetCartProductState {
  final RudCartItemResponseEntity getCartItemResponseEntity;

  RudCartProductSucsess({required this.getCartItemResponseEntity});
}
class RudCartProductFaliuer extends GetCartProductState {
  final Faliures faliures;

  RudCartProductFaliuer({required this.faliures});

}

