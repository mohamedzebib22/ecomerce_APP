import 'package:dartz/dartz.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/get_product_wish_list.dart';
import 'package:ecomerce_app/domain/Entity/post_and_delete_wish_list.dart';
import 'package:ecomerce_app/domain/Repositories/data_source/remote_data_source/crud_wish_list.dart';
import 'package:ecomerce_app/domain/Repositories/wishList/crud_wish_list_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as:CrudWishListRepositories )
class CrudWishListImpl extends CrudWishListRepositories {
  final CrudWishListRemoteEntity crudWishListRemoteEntity;

  CrudWishListImpl({required this.crudWishListRemoteEntity});
  @override
  Future<Either<Faliures, PostAndDeleteWishListResponseEntity>> postWishList({required String id})async {
    var either = await crudWishListRemoteEntity.postWishList(id: id);
    return either.fold((error)=>Left(error), (response) => Right(response));
  }

  @override
  Future<Either<Faliures, GetProductWishListResponseEntity>> getWishListItem()async {
    var either =await crudWishListRemoteEntity.getWishListItem();
    return either.fold((error)=> Left(error), (response) => Right(response));
  }

}