import 'package:dartz/dartz.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/get_product_entity.dart';

abstract class GetProductRepositories {
  Future<Either<Faliures,GetProductEntity>> getProduct();
}