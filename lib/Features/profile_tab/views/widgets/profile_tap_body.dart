import 'package:ecomerce_app/core/widgets/custom_text_feild.dart';
import 'package:ecomerce_app/core/widgets/custome_title.dart';
import 'package:flutter/material.dart';

class ProfileTapBody extends StatelessWidget {
  const ProfileTapBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/smalllogo.png',
              width: width * 0.15,
              height: height * 0.02,
            ),
          ],
        ),
        SizedBox(
          height: height * 0.02,
        ),
        const ListTile(
          title: Text(
            'Welcome, Mohamed',
            style: TextStyle(fontSize: 16),
          ),
          subtitle: Text('mohamed.N@gmail.com',
              style: TextStyle(fontSize: 14, color: Colors.grey)),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        const CustomeTitleOfTextFeild(
          title: 'Your Full Name',
          textColor: Colors.black,
        ),
        SizedBox(
          height: height * 0.02,
        ),
        CustomTextFeild(
          hintText: 'enter your full name',
          isFilled: true,
          filledColor: Colors.white,
          sufix: Icon(Icons.border_color),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        const CustomeTitleOfTextFeild(
          title: 'Your E-mail',
          textColor: Colors.black,
        ),
        SizedBox(
          height: height * 0.02,
        ),
        CustomTextFeild(
          hintText: 'enter your full name',
          isFilled: true,
          filledColor: Colors.white,
          sufix: Icon(Icons.border_color),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        const CustomeTitleOfTextFeild(
          title: 'Your password',
          textColor: Colors.black,
        ),
        SizedBox(
          height: height * 0.02,
        ),
        CustomTextFeild(
          hintText: 'enter your full name',
          isFilled: true,
          filledColor: Colors.white,
          sufix: Icon(Icons.border_color),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        const CustomeTitleOfTextFeild(
          title: 'Your mobile number',
          textColor: Colors.black,
        ),
        SizedBox(
          height: height * 0.02,
        ),
        CustomTextFeild(
          hintText: 'enter your full name',
          isFilled: true,
          filledColor: Colors.white,
          sufix: Icon(Icons.border_color),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        const CustomeTitleOfTextFeild(
          title: 'Your Address',
          textColor: Colors.black,
        ),
        SizedBox(
          height: height * 0.02,
        ),
        CustomTextFeild(
          hintText: 'enter your full name',
          isFilled: true,
          filledColor: Colors.white,
          sufix: Icon(Icons.border_color),
        ),
      ],
    );
  }
}
