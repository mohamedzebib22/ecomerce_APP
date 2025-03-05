import 'package:dartz/dartz.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/post_cart_entity.dart';
import 'package:ecomerce_app/domain/Repositories/get_product/get_product_repositories.dart';
import 'package:injectable/injectable.dart';

@injectable
class PostCartUseCase {
  final GetProductRepositories getProductRepositories;

  PostCartUseCase({required this.getProductRepositories});
  Future<Either<Faliures, PostCartResponseEntity>> invoke({required String id}){
    return getProductRepositories.postProduct(id: id);
  }
}