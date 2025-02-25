import 'package:dartz/dartz.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/category_and_brand_response.dart';

abstract class GetGategoryRemoteDataSource {
   Future<Either<Faliures,CategoryAndBrandResponseEntity>> getAllGategory();
}

