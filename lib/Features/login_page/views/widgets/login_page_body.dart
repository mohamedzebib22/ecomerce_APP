import 'package:ecomerce_app/core/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
            child: ElevatedButton(
              onPressed: () {},
              child: Center(
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ))
      ],
    );
  }
}
