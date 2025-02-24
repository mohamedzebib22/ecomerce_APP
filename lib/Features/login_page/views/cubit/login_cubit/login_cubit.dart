import 'package:bloc/bloc.dart';
import 'package:ecomerce_app/Features/defult_page/views/defult_page.dart';
import 'package:ecomerce_app/Features/login_page/views/cubit/login_cubit/login_state.dart';
import 'package:ecomerce_app/Features/register_page/views/cubit/register_cubit/register_state.dart';
import 'package:ecomerce_app/domain/use_case/login_usecase.dart';
import 'package:ecomerce_app/domain/use_case/register_use_case.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginUsecase) : super(LoginInitial());

  final LoginUsecase loginUsecase;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  
  login (context)async{
    emit(LoginLoading());
    var either =await loginUsecase.invoke(email: email.text, password: password.text);
    either.fold((error){
      emit(LoginFaliure(faliures: error));
    }, (response){
      emit(LoginSucsess(responseEntity: response));
      Navigator.pushNamed(context, DefultPage.id);
    });
  }
}
