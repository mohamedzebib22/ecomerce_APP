import 'package:dartz/dartz.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/get_product_wish_list.dart';
import 'package:ecomerce_app/domain/Entity/post_and_delete_wish_list.dart';
import 'package:ecomerce_app/domain/Repositories/wishList/crud_wish_list_repositories.dart';
import 'package:injectable/injectable.dart';


@injectable
class DeleteItemWishList {
  final CrudWishListRepositories deleteItemWishList;

  DeleteItemWishList({required this.deleteItemWishList});

  Future<Either<Faliures, PostAndDeleteWishListResponseEntity>> invoke(
      {required String id}) {
    return deleteItemWishList.deleteWishListItem(id: id);
  }
}
