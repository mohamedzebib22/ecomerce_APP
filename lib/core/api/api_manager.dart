import 'package:dio/dio.dart';
import 'package:ecomerce_app/core/api/api_constant.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiManager {
  final dio = Dio();

  Future<Response> getData({required String endPoint,Map<String, dynamic>? queryParameters,dynamic data,Options? options,}){
   return dio.get(ApiConstant.baseUrl+endPoint,queryParameters: queryParameters,options: options,data: data);
  }
  Future<Response> postData({required String endPoint,Map<String, dynamic>? queryParameters,dynamic data,Options? options,}) async{
   
  var response = await  dio.post(ApiConstant.baseUrl+endPoint,queryParameters: queryParameters,options: Options(
    validateStatus: (status) => true
  ),data: data);
  return response;
  }
}
