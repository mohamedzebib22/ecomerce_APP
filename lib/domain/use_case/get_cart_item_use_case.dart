import 'package:dartz/dartz.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/get_cart_item_entity.dart';
import 'package:ecomerce_app/domain/Repositories/get_product/get_product_repositories.dart';
import 'package:flutter/material.dart';

class GetCartItemUseCase {
  final GetProductRepositories getProductRepositories;

  GetCartItemUseCase({required this.getProductRepositories});

  Future<Either<Faliures, GetCartItemResponseEntity>> invoke() {
    return getProductRepositories.getCartProduct();
  }
}
