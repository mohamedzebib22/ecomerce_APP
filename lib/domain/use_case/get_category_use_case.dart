import 'package:dartz/dartz.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/category_and_brand_response.dart';
import 'package:ecomerce_app/domain/Repositories/getCategory_and_getBrand/get_all_category.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategoryUseCase {
  final GetAllCategoryRepositories getAllCategoryRepositories ;

  GetCategoryUseCase({required this.getAllCategoryRepositories});

  Future<Either<Faliures,CategoryAndBrandResponseEntity >> invoke(){
   return getAllCategoryRepositories.getAllGategory();
  }
}