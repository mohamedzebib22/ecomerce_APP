import 'package:ecomerce_app/Features/cart_page/views/cart_page.dart';
import 'package:ecomerce_app/Features/defult_page/views/defult_page.dart';
import 'package:ecomerce_app/Features/favourite_tap/views/favourite_tap.dart';
import 'package:ecomerce_app/Features/home_tap/views/home_tap.dart';
import 'package:ecomerce_app/Features/login_page/views/login_page.dart';
import 'package:ecomerce_app/Features/product_deatils_page/views/product_details_page.dart';
import 'package:ecomerce_app/Features/profile_tab/views/profile_tab.dart';
import 'package:ecomerce_app/Features/prpoduct_tap/views/product_tap.dart';
import 'package:ecomerce_app/Features/register_page/views/register_page.dart';
import 'package:ecomerce_app/core/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  configureDependencies();  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            HomeTap.id: (context) => HomeTap(),
            LoginPage.id : (context) => LoginPage(),
            RegisterPage.id : (context) => RegisterPage(),
            ProductTap.id : (context) => ProductTap(),
            FavouriteTap.id : (context) => FavouriteTap(),
            ProfileTab.id : (context) => ProfileTab(),
           DefultPage.id : (context) => DefultPage(),
           ProductDetailsPage.id : (context) => ProductDetailsPage(),
           CartPage.id : (context) => CartPage(),
          },
          initialRoute: DefultPage.id,
        );
      },
    );
  }
}
