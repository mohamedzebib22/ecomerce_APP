import 'package:dio/dio.dart';
import 'package:ecomerce_app/core/api/api_constant.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiManager {
  final dio = Dio();

  Future<Response> getData({required String endPoint,Map<String, dynamic>? queryParameters,dynamic data,Options? options,Map<String, dynamic>? headers,})async{
   var response = await dio.get(ApiConstant.baseUrl+endPoint,queryParameters: queryParameters,options: Options(
    validateStatus: (status) => true,headers: headers
   ),data: data);
   return response;
  }
  Future<Response> postData({required String endPoint,Map<String, dynamic>? queryParameters,dynamic data,Options? options,Map<String, dynamic>? headers,}) async{
   
  var response = await  dio.post(ApiConstant.baseUrl+endPoint,queryParameters: queryParameters,options: Options(
    validateStatus: (status) => true,headers: headers
  ),data: data);
  return response;
  }
  Future<Response> deleteData({required String endPoint,Map<String, dynamic>? queryParameters,dynamic data,Options? options,Map<String, dynamic>? headers,}) async{
   
  var response = await  dio.delete(ApiConstant.baseUrl+endPoint,queryParameters: queryParameters,options: Options(
    validateStatus: (status) => true,headers: headers
  ),data: data);
  return response;
  }

  Future<Response> updateData({required String endPoint,Map<String, dynamic>? queryParameters,dynamic data,Options? options,Map<String, dynamic>? headers,}) async{
  var response = await  dio.put(ApiConstant.baseUrl+endPoint,queryParameters: queryParameters,options: Options(
    validateStatus: (status) => true,headers: headers
  ),data: data);
  return response;
  }
}
