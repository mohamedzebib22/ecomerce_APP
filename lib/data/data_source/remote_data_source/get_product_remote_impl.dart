import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecomerce_app/core/api/api_end_point.dart';
import 'package:ecomerce_app/core/api/api_manager.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/data/models/get_product/get_product_dm.dart';
import 'package:ecomerce_app/domain/Repositories/get_product/get_product_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as:GetProductRepositories )
class GetProductRemoteImpl extends GetProductRepositories {
  final ApiManager apiManager;

  GetProductRemoteImpl({required this.apiManager});
  @override
  Future<Either<Faliures, GetProductDm>> getProduct()async {
    try{
      final Response response = await apiManager.getData(endPoint: ApiEndPoint.getProducts);
      GetProductDm getProductDm = GetProductDm.fromJson(response.data);
      if(response.statusCode! >=200 && response.statusCode! < 300){
        return Right(getProductDm);
      }else{
        return Left(ServerError(errMessage: getProductDm.message!));
      }
    }catch (e){
      return Left(ServerError(errMessage: e.toString()));
    }
  }

}