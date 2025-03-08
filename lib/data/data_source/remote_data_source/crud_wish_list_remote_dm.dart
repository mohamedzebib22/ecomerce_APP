import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecomerce_app/core/api/api_end_point.dart';
import 'package:ecomerce_app/core/api/api_manager.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/core/helper/cach_helper.dart';
import 'package:ecomerce_app/data/models/wishList/getItem_wishList/get_product_wish_list.dart';
import 'package:ecomerce_app/data/models/wishList/post_and_delete_wish_list/post_and_delete_wish_list_dm.dart';
import 'package:ecomerce_app/domain/Entity/get_product_wish_list.dart';
import 'package:ecomerce_app/domain/Repositories/data_source/remote_data_source/crud_wish_list.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CrudWishListRemoteEntity)
class CrudWishListRemoteImpl extends CrudWishListRemoteEntity{
  final ApiManager apiManager;
  var token= CachHelper().getData(key: 'token');

  CrudWishListRemoteImpl({required this.apiManager});
  @override
  Future<Either<Faliures, PostAndDeleteWishListResponseDm>> postWishList({required String id}) async{
   try{
    final Response response = await apiManager.postData(endPoint: ApiEndPoint.postWishList , 
    headers: {
      'token':token
    },
    data: {
      'productId' : id
    }
    );
    PostAndDeleteWishListResponseDm postWishListResponse = PostAndDeleteWishListResponseDm.fromJson(response.data);
    if(response.statusCode! >= 200 && response.statusCode! < 300){
      return Right(postWishListResponse);
    }else{
      return Left(ServerError(errMessage: postWishListResponse.message!));
    }
   }catch(e){
    return Left(ServerError(errMessage: e.toString()));
   }
  }

  @override
  Future<Either<Faliures, GetProductWishListResponseDm>> getWishListItem()async {
    try{
      final Response response = await apiManager.getData(endPoint: ApiEndPoint.getWishListItems,headers: {
        'token' : token
      });
      GetProductWishListResponseDm productWishListItem = GetProductWishListResponseDm.fromJson(response.data);
      if(response.statusCode! >= 200 && response.statusCode! < 300){
        return Right(productWishListItem);
      }else{
        return Left(ServerError(errMessage: productWishListItem.message!));
      }
    }catch (e){
      return Left(ServerError(errMessage: e.toString()));
    }
  }
}