import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecomerce_app/core/api/api_end_point.dart';
import 'package:ecomerce_app/core/api/api_manager.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/core/helper/cach_helper.dart';
import 'package:ecomerce_app/data/models/auth/auth_respose.dart';
import 'package:ecomerce_app/domain/Entity/auth_response.dart';
import 'package:ecomerce_app/domain/Repositories/data_source/remote_data_source/auth_remote_datasource.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRemoteDatasource)
class AuthRemoteDataSourceImpl implements AuthRemoteDatasource {
  final ApiManager apiManager;

  AuthRemoteDataSourceImpl({required this.apiManager});
  @override
  Future<Either<Faliures, AuthResponseDm>> register(
      {required String name,
      required String email,
      required String password,
      required String rePassword,
      required String phone}) async {
        
    try{
      final List<ConnectivityResult> connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult.contains(ConnectivityResult.wifi) || connectivityResult.contains(ConnectivityResult.mobile)){
    final Response response =
        await apiManager.postData(endPoint: ApiEndPoint.signUp, data: {
      "name": name,
      "email": email,
      "password": password,
      "rePassword": rePassword,
      "phone": phone
    });
    AuthResponseDm registerResponse = AuthResponseDm.fromJson(response.data);
    if(response.statusCode! >= 200 && response.statusCode! < 300){
      var token = CachHelper().saveData(key: 'token', value: registerResponse.token);
      return Right(registerResponse);
    }else{
      return Left(ServerError(errMessage: registerResponse.message!));
    }
  }else{
    return Left(NetWorkError(errMessage: 'No InterNet Connection'));
  }
    }catch (e){
      return Left(ServerError(errMessage: e.toString()));
    }
    
  }

  @override
  Future<Either<Faliures, AuthResponseDm>> login({required String email, required String password})async {
    try{
      final List<ConnectivityResult> connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult.contains(ConnectivityResult.wifi) || connectivityResult.contains(ConnectivityResult.mobile)){
    final Response response =await apiManager.postData(endPoint: ApiEndPoint.signIn,data: {
      'email' : email,
      'password' : password
    });
    AuthResponseDm loginResponse = AuthResponseDm.fromJson(response.data);
    if(response.statusCode! >= 200 && response.statusCode! < 300){
      var token = CachHelper().saveData(key: 'token', value: loginResponse.token);
      return Right(loginResponse);
    }else{
      return Left(ServerError(errMessage: loginResponse.message!));
    }
  }else{
    return Left(NetWorkError(errMessage: 'NetWork Not Connections'));
  }
    }catch (e){
      return Left(ServerError(errMessage: e.toString()));
    }
  }

  
}

