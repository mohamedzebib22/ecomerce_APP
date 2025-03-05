import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecomerce_app/core/api/api_end_point.dart';
import 'package:ecomerce_app/core/api/api_manager.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/core/helper/cach_helper.dart';
import 'package:ecomerce_app/data/models/get_product/get_product_dm.dart';
import 'package:ecomerce_app/data/models/post_cart/get_cart_item_dm.dart';
import 'package:ecomerce_app/data/models/post_cart/post_cart_dm.dart';
import 'package:ecomerce_app/domain/Repositories/data_source/remote_data_source/get_product_remote_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: GetProductRemoteDataSource)
class GetProductRemoteImpl extends GetProductRemoteDataSource {
  final ApiManager apiManager;

  GetProductRemoteImpl({required this.apiManager});
  @override
  Future<Either<Faliures, GetProductDm>> getProduct() async {
    try {
      final Response response =
          await apiManager.getData(endPoint: ApiEndPoint.getProducts);
      GetProductDm getProductDm = GetProductDm.fromJson(response.data);
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        return Right(getProductDm);
      } else {
        return Left(ServerError(errMessage: getProductDm.message!));
      }
    } catch (e) {
      return Left(ServerError(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Faliures, PostCartResponseDm>> postProduct(
      {required String id}) async {
    try {
      var token = CachHelper().getData(key: 'token');
      final Response response = await apiManager.postData(
          endPoint: ApiEndPoint.postProduct,
          data: {'productId': id},
          headers: {'token': token});
      PostCartResponseDm postProduct = PostCartResponseDm.fromJson(response.data);
      if(response.statusCode! >=200 && response.statusCode! <300){
        print('****/**$token**********\n*******$id*********');
        return Right(postProduct);

      }else{
        return Left(ServerError(errMessage: postProduct.message ?? ''));
      }
    } catch (e) {
      return Left(ServerError(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Faliures, GetCartItemResponseDm>> getCartProduct()async {
    try{
      var token = CachHelper().getData(key: 'token');
      final Response response =await apiManager.getData(endPoint: ApiEndPoint.getCartProduct,
      headers: {
        'token' : token
      }
      );
      GetCartItemResponseDm getCartItem= GetCartItemResponseDm.fromJson(response.data);
      if(response.statusCode! >=200 && response.statusCode! < 300){
        return Right(getCartItem);
      }else{
        return Left(ServerError(errMessage: getCartItem.message!));
      }
    }catch (e){
      return Left(ServerError(errMessage: e.toString()));
    }
  }
}
