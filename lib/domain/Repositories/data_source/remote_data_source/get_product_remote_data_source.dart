import 'package:dartz/dartz.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/rud_cart_item_entity.dart';
import 'package:ecomerce_app/domain/Entity/get_product_entity.dart';
import 'package:ecomerce_app/domain/Entity/post_cart_entity.dart';

abstract class GetProductRemoteDataSource {
  Future<Either<Faliures,GetProductEntity>> getProduct();
  Future<Either<Faliures ,PostCartResponseEntity >> postProduct({required String id});
  Future<Either<Faliures ,RudCartItemResponseEntity >> getCartProduct();
  Future<Either<Faliures ,RudCartItemResponseEntity >> deleteCartItem({required String id});
}