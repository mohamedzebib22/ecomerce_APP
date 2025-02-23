import 'package:ecomerce_app/Features/login_page/views/widgets/login_page_body.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static String id = 'LoginPage';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff004182),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.02, vertical: height * 0.02),
        child: SingleChildScrollView(
          child: LoginPageBody(onTap: () {  },)
        ),
      ),
    );
  }
}
