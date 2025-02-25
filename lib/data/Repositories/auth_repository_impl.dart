import 'package:dartz/dartz.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/data/models/auth/auth_respose.dart';
import 'package:ecomerce_app/domain/Entity/auth_response.dart';
import 'package:ecomerce_app/domain/Repositories/auth/auth_repositories.dart';
import 'package:ecomerce_app/domain/Repositories/data_source/remote_data_source/auth_remote_datasource.dart';
import 'package:injectable/injectable.dart';

@Injectable(as:AuthRepositories)
class AuthRepositoryImpl implements AuthRepositories {
  final AuthRemoteDatasource authRemoteDatasource;

  AuthRepositoryImpl({required this.authRemoteDatasource});
  @override
  Future<Either<Faliures, AuthResponseEntity>> register(
      {required String name,
      required String email,
      required String password,
      required String rePassword,
      required String phone}) async {
    var either = await authRemoteDatasource.register(
        name: name,
        email: email,
        password: password,
        rePassword: rePassword,
        phone: phone);
    return either.fold((error) => Left(error), (response) => Right(response));
  }
  
  @override
  Future<Either<Faliures, AuthResponseEntity>> login({required String email, required String password}) async{
    var either = await authRemoteDatasource.login(email: email, password: password);
    return either.fold((error) => Left(error), (response) => Right(response));
  }
}
