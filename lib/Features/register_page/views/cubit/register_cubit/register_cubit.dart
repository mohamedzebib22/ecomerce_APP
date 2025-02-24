import 'package:bloc/bloc.dart';
import 'package:ecomerce_app/Features/register_page/views/cubit/register_cubit/register_state.dart';
import 'package:ecomerce_app/domain/use_case/register_use_case.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.registerUseCase) : super(RegisterInitial());

  final RegisterUseCase registerUseCase;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController rePassword = TextEditingController();
  TextEditingController phone = TextEditingController();
  register() async {
    emit(RegisterLoading());
    var either = await registerUseCase.invoke(
        name: name.text,
        email: email.text,
        password: password.text,
        rePassword: rePassword.text,
        phone: phone.text);
    either.fold((error) {
      emit(RegisterFaliure(errMessage: error));
    }, (response) {
      emit(RegisterSucsess(responseEntity: response));
    });
  }
}
