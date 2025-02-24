import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecomerce_app/core/api/api_end_point.dart';
import 'package:ecomerce_app/core/api/api_manager.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/data/models/get_category_and_brand/get_category_and_brand.dart';
import 'package:ecomerce_app/domain/Entity/category_and_brand_response.dart';
import 'package:ecomerce_app/domain/Repositories/remote_data_source/get_gategory_remote_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: GetGategoryRemoteDataSource)
class GetAllCategoryRemoteDatasourceimpl implements GetGategoryRemoteDataSource{
  final ApiManager apiManager;

  GetAllCategoryRemoteDatasourceimpl({required this.apiManager});
  @override
  Future<Either<Faliures, CategoryAndBrandResponseDm>> getAllGategory()async {
   try{
     final Response response = await apiManager.getData(endPoint:ApiEndPoint.allGategory );
    CategoryAndBrandResponseDm  categoryAndBrandResponseDm = CategoryAndBrandResponseDm.fromJson(response.data);
    if(response.statusCode! >= 200 && response.statusCode! <300){
      return Right(categoryAndBrandResponseDm);
    }else{
      return Left(ServerError(errMessage: categoryAndBrandResponseDm.message!));
    }
   }catch (e){
    return Left(ServerError(errMessage: e.toString()));
   }
  }
}