import 'package:ecomerce_app/Features/profile_tab/views/widgets/profile_tap_body.dart';
import 'package:ecomerce_app/core/widgets/custom_text_feild.dart';
import 'package:ecomerce_app/core/widgets/custome_title.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});
  static String id = 'ProfileTap';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.04, vertical: height * 0.02),
            child: SingleChildScrollView(child: ProfileTapBody()),
          ),
        ),
      ),
    );
  }
}

