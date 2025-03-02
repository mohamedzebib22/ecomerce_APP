import 'package:ecomerce_app/Features/login_page/views/cubit/login_cubit/login_cubit.dart';
import 'package:ecomerce_app/Features/login_page/views/cubit/login_cubit/login_state.dart';
import 'package:ecomerce_app/Features/register_page/views/register_page.dart';
import 'package:ecomerce_app/core/di/di.dart';
import 'package:ecomerce_app/core/errors/faliures.dart';
import 'package:ecomerce_app/core/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPageBody extends StatefulWidget {
  const LoginPageBody({
    super.key,
  });

  @override
  State<LoginPageBody> createState() => _LoginPageBodyState();
}

class _LoginPageBodyState extends State<LoginPageBody> {
  LoginCubit viewModel = getIt<LoginCubit>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BlocConsumer<LoginCubit, LoginState>(
      bloc: viewModel,
      listener: (context, state) {
        if (state is LoginFaliure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.faliures.errMessage),
            ),
          );
          print('=========${state.faliures.errMessage}==========');
        } else if (state is LoginSucsess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('LoginSucseefuly'),
            ),
          );
          print('=========LoginSucseefuly==========');
        }
      },
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 237,
              height: 71.1,
            ),
            SizedBox(
              height: height * .04,
            ),
            const ListTile(
              title: Text(
                'Welcome Back To Route',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              subtitle: Text('Please sign in with your mail',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
            SizedBox(
              height: height * .04,
            ),
            const Text('Email',
                style: TextStyle(color: Colors.white, fontSize: 18)),
            CustomTextFeild(
              controller: viewModel.email,
              hintText: 'Enter You Email',
              isFilled: true,
              filledColor: Colors.white,
            ),
            SizedBox(
              height: height * .04,
            ),
            const Text('Password',
                style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(
              height: height * .04,
            ),
            CustomTextFeild(
              controller: viewModel.password,
              hintText: 'Enter You Password',
              isFilled: true,
              filledColor: Colors.white,
            ),
            SizedBox(
              height: height * .04,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'ForgetPassword',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: height * .04,
            ),
            SizedBox(
                height: height * 0.08,
                child: state is LoginLoading
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : ElevatedButton(
                        onPressed: () {
                          viewModel.login(context);
                        },
                        child:const Center(
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      )),

              Row(children: [
                Text('Don’t have an account?' ,style: TextStyle(color: Colors.white,fontSize: 18),),
                 TextButton(onPressed: (){
                  Navigator.pushReplacementNamed(context, RegisterPage.id);
                 }, child: Text(' Create Account' ,style: TextStyle(color: Colors.white,fontSize: 18),))
              ],)
          ],
        );
      },
    );
  }
}
