import 'package:ecomerce_app/Features/register_page/views/cubit/register_cubit/register_cubit.dart';
import 'package:ecomerce_app/Features/register_page/views/cubit/register_cubit/register_state.dart';
import 'package:ecomerce_app/core/di/di.dart';
import 'package:ecomerce_app/core/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

class RegisterPageBody extends StatefulWidget {
  const RegisterPageBody({super.key});

  @override
  State<RegisterPageBody> createState() => _RegisterPageBodyState();
}

class _RegisterPageBodyState extends State<RegisterPageBody> {
  RegisterCubit viewModel = getIt<RegisterCubit>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BlocConsumer<RegisterCubit, RegisterState>(
      bloc:viewModel ,
      listener: (BuildContext context, RegisterState state) {
        if (state is RegisterFaliure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errMessage.errMessage),
            ),
          );
          print('=========${state.errMessage.errMessage}==========');
        }else if (state is RegisterSucsess){
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('SignUp Sucsess'),
            ),
          );
          print('========SignUp Sucsess==========');
        }
      },
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: height * 0.08,
            ),
            Image.asset(
              'assets/images/logo.png',
              width: 237,
              height: 71.1,
            ),
            SizedBox(
              height: height * 0.04,
            ),
            const Text('Full Name',
                style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(
              height: height * 0.02,
            ),
            CustomTextFeild(
              controller: viewModel.name,
              hintText: 'enter your full name',
              isFilled: true,
              filledColor: Colors.white,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const Text('Mobile Number',
                style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(
              height: height * 0.02,
            ),
            CustomTextFeild(
              controller: viewModel.phone,
              hintText: 'enter your mobile no.',
              isFilled: true,
              filledColor: Colors.white,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const Text('E-mail address',
                style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(
              height: height * 0.02,
            ),
            CustomTextFeild(
              controller: viewModel.email,
              hintText: 'enter your email address',
              isFilled: true,
              filledColor: Colors.white,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const Text('Password',
                style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(
              height: height * 0.02,
            ),
            CustomTextFeild(
              controller: viewModel.password,
              hintText: 'enter your password',
              isFilled: true,
              filledColor: Colors.white,
            ),
            SizedBox(
              height: height * .08,
            ),
            const Text('rePassword',
                style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(
              height: height * 0.02,
            ),
            CustomTextFeild(
              controller: viewModel.rePassword,
              hintText: 'enter your password',
              isFilled: true,
              filledColor: Colors.white,
            ),
            SizedBox(
              height: height * .08,
            ),
            SizedBox(
                height: height * 0.08,
                child: state is RegisterLoading
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : ElevatedButton(
                        onPressed: () {
                          viewModel.register();
                        },
                        child: const Center(
                          child: Text(
                            'SignUP',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ))
          ],
        );
      },
    );
  }
}
