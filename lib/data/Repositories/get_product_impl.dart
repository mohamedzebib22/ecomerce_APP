import 'package:dartz/dartz.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/data/data_source/remote_data_source/get_product_remote_impl.dart';
import 'package:ecomerce_app/domain/Entity/get_cart_item_entity.dart';
import 'package:ecomerce_app/domain/Entity/get_product_entity.dart';
import 'package:ecomerce_app/domain/Entity/post_cart_entity.dart';
import 'package:ecomerce_app/domain/Repositories/data_source/remote_data_source/get_product_remote_data_source.dart';
import 'package:ecomerce_app/domain/Repositories/get_product/get_product_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as:GetProductRepositories )
class GetProductImpl extends GetProductRepositories {

  final GetProductRemoteDataSource getProductRemoteDataSource;

  GetProductImpl({required this.getProductRemoteDataSource});
  @override
  Future<Either<Faliures, GetProductEntity>> getProduct() async{
    var either = await getProductRemoteDataSource.getProduct();
    return either.fold((error) => Left(error), (response) => Right(response));
  }

  @override
  Future<Either<Faliures, PostCartResponseEntity>> postProduct({required String id})async {
    var either = await getProductRemoteDataSource.postProduct(id: id);
    return either.fold((error) => Left(error), (response) => Right(response));
  }

  @override
  Future<Either<Faliures, GetCartItemResponseEntity>> getCartProduct()async {
    var either = await getProductRemoteDataSource.getCartProduct();
    return either.fold((error)=>Left(error), (response) =>Right(response));
  }

}