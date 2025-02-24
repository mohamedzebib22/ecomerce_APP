import 'package:dartz/dartz.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/data/models/auth/auth_respose.dart';
import 'package:ecomerce_app/domain/Entity/auth_response.dart';
import 'package:ecomerce_app/domain/Repositories/auth/auth_repositories.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterUseCase {
 final AuthRepositories authRepositories;

  RegisterUseCase({required this.authRepositories});
  Future<Either<Faliures,AuthResponseEntity>> invoke({
    required String name,
    required String email,
    required String password,
    required String rePassword,
    required String phone,
  }){
   return authRepositories.register(name: name, email: email, password: password, rePassword: rePassword, phone: phone);
  }
}