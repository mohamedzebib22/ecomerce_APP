import 'package:dartz/dartz.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/category_and_brand_response.dart';
import 'package:ecomerce_app/domain/Repositories/getCategory_and_getBrand/get_all_brand_repo.dart';

class GetBrandUseCase {
 final GetAllBrandRepo getAllBrandRepo;

  GetBrandUseCase({required this.getAllBrandRepo});
  Future<Either<Faliures,CategoryAndBrandResponseEntity>> invoke() {
   return getAllBrandRepo.getAllBrands();
  }
}