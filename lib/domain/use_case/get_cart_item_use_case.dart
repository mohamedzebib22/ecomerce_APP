import 'package:dartz/dartz.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/rud_cart_item_entity.dart';
import 'package:ecomerce_app/domain/Repositories/crud_product/get_product_repositories.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCartItemUseCase {
  final GetProductRepositories getProductRepositories;

  GetCartItemUseCase({required this.getProductRepositories});

  Future<Either<Faliures, RudCartItemResponseEntity>> invoke() {
    return getProductRepositories.getCartProduct();
  }
}
