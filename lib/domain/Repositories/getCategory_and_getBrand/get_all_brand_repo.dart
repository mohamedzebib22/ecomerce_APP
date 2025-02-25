import 'package:dartz/dartz.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/category_and_brand_response.dart';

abstract class GetAllBrandRepo {
  Future<Either<Faliures,CategoryAndBrandResponseEntity>> getAllBrands();
}