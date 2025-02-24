

import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/domain/Entity/auth_response.dart';
import 'package:ecomerce_app/domain/Repositories/auth/auth_repositories.dart';

abstract class RegisterState {}

 class RegisterInitial extends RegisterState {}
 class RegisterLoading extends RegisterState {}
 class RegisterSucsess extends RegisterState {
 final AuthResponseEntity responseEntity;

  RegisterSucsess({required this.responseEntity});
 }
 class RegisterFaliure extends RegisterState {
  final Faliures errMessage;

  RegisterFaliure({required this.errMessage});
 }
