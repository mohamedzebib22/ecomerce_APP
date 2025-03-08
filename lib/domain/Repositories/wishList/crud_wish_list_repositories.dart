import 'package:dartz/dartz.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/get_product_wish_list.dart';
import 'package:ecomerce_app/domain/Entity/post_and_delete_wish_list.dart';

abstract class CrudWishListRepositories {
  Future<Either<Faliures, PostAndDeleteWishListResponseEntity>> postWishList({required String id});
  Future<Either<Faliures, GetProductWishListResponseEntity>> getWishListItem();
  Future<Either<Faliures, PostAndDeleteWishListResponseEntity>> deleteWishListItem({required String id});
}