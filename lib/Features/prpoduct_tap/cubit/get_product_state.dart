

import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/get_product_entity.dart';
import 'package:ecomerce_app/domain/Entity/post_cart_entity.dart';

abstract class GetProductState {}

class GetProductInitial extends GetProductState {}
class GetProductLoading extends GetProductState {}
class GetProductSucsess extends GetProductState {
  final GetProductEntity getProductEntity;

  GetProductSucsess({required this.getProductEntity});
}
class GetProductFaliur extends GetProductState {
  final Faliures faliures;

  GetProductFaliur({required this.faliures});

}


class PostProductLoading extends GetProductState {}
class PostProductSucsess extends GetProductState {
  final PostCartResponseEntity postProduct;

  PostProductSucsess({required this.postProduct});
}
class PostProductFaliur extends GetProductState {
  final Faliures faliures;

  PostProductFaliur({required this.faliures});

}
