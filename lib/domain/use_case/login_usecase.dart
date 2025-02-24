import 'package:dartz/dartz.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/auth_response.dart';
import 'package:ecomerce_app/domain/Repositories/auth/auth_repositories.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUsecase {
 final AuthRepositories authRepositories;

  LoginUsecase({required this.authRepositories});

  Future<Either<Faliures , AuthResponseEntity>> invoke({required String email,required String password}){
    return authRepositories.login(email: email, password: password);
  }
}