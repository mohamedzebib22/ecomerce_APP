import 'package:ecomerce_app/core/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
  static String id = 'RegisterPage';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff004182),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.02, vertical: height * 0.02),
        child: SingleChildScrollView(
          child: Column(
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
                hintText: 'enter your password',
                isFilled: true,
                filledColor: Colors.white,
              ),
              SizedBox(
                height: height * .08,
              ),
              SizedBox(
                  height: height * 0.08,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Center(
                      child: Text(
                        'SignUP',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
