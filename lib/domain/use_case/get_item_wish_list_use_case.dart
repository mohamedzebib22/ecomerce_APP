import 'package:dartz/dartz.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/get_product_wish_list.dart';
import 'package:ecomerce_app/domain/Repositories/wishList/crud_wish_list_repositories.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetItemWishListUseCase {
  final CrudWishListRepositories crudWishListRepositories;

  GetItemWishListUseCase({required this.crudWishListRepositories});

  Future<Either<Faliures, GetProductWishListResponseEntity>> invoke() {
    return crudWishListRepositories.getWishListItem();
  }
}
