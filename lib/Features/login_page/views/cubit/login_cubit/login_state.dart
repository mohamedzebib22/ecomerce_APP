

import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/auth_response.dart';
import 'package:ecomerce_app/domain/Repositories/auth/auth_repositories.dart';

abstract class LoginState {}

 class LoginInitial extends LoginState {}
 class LoginLoading extends LoginState {}
 class LoginSucsess extends LoginState {
 final AuthResponseEntity responseEntity;

  LoginSucsess({required this.responseEntity});
 }
 class LoginFaliure extends LoginState {
   Faliures faliures;

  LoginFaliure({required this.faliures});
 }
