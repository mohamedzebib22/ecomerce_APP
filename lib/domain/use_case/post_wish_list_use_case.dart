import 'package:dartz/dartz.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/post_and_delete_wish_list.dart';
import 'package:ecomerce_app/domain/Repositories/wishList/crud_wish_list_repositories.dart';
import 'package:injectable/injectable.dart';

@injectable
class PostWishListUseCase {
  final CrudWishListRepositories crudWishListRepositories;

  PostWishListUseCase({required this.crudWishListRepositories});

 Future<Either<Faliures, PostAndDeleteWishListResponseEntity>> invoke({required String id}){
   return crudWishListRepositories.postWishList(id: id);
  }
}