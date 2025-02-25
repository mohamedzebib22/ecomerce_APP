

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecomerce_app/core/api/api_end_point.dart';
import 'package:ecomerce_app/core/api/api_manager.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/data/models/get_category_and_brand/get_category_and_brand.dart';
import 'package:ecomerce_app/domain/Entity/category_and_brand_response.dart';
import 'package:ecomerce_app/domain/Repositories/data_source/remote_data_source/get_brand_remote_datasource.dart';
import 'package:ecomerce_app/domain/Repositories/getCategory_and_getBrand/get_all_brand_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: GetAllBrandRemoteDatasource)
class GetAllBrandRemoteDataSourceImpl implements GetAllBrandRemoteDatasource{
  final ApiManager apiManager;

  GetAllBrandRemoteDataSourceImpl({required this.apiManager});
  @override
  Future<Either<Faliures, CategoryAndBrandResponseDm>> getAllBrands()async {
    try{
      final Response response = await apiManager.getData(endPoint: ApiEndPoint.allBrands);
      CategoryAndBrandResponseDm categoryAndBrandResponseDm =CategoryAndBrandResponseDm.fromJson(response.data);
      if(response.statusCode! >= 200 && response.statusCode! < 300){
        return Right(categoryAndBrandResponseDm);
      }else{
        return Left(ServerError(errMessage: categoryAndBrandResponseDm.message!));
      }
    }catch (e){
      return Left(ServerError(errMessage: e.toString()));
    }
  }

}