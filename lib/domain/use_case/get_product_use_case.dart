import 'package:dartz/dartz.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/data/models/get_product/get_product_dm.dart';
import 'package:ecomerce_app/domain/Entity/get_product_entity.dart';
import 'package:ecomerce_app/domain/Repositories/get_product/get_product_repositories.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProductUseCase {
  final GetProductRepositories getProductRepositories;

  GetProductUseCase({required this.getProductRepositories});
  Future<Either<Faliures, GetProductEntity>> invoke(){
    return getProductRepositories.getProduct();
  }
}