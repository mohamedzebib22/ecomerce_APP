import 'package:dartz/dartz.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/auth_response.dart';

abstract class AuthRemoteDatasource {
  Future<Either<Faliures,AuthResponseEntity>> register({
    required String name,
    required String email,
    required String password,
    required String rePassword,
    required String phone,
  });
  Future<Either<Faliures,AuthResponseEntity>> login({
    required String email,
    required String password,
  });
}