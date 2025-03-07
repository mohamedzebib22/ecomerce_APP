import 'package:ecomerce_app/Features/cart_page/cubit/get_cart_product_cubit/get_cart_product_cubit.dart';
import 'package:ecomerce_app/Features/cart_page/views/cart_page.dart';
import 'package:ecomerce_app/Features/defult_page/views/defult_page.dart';
import 'package:ecomerce_app/Features/favourite_tap/views/favourite_tap.dart';
import 'package:ecomerce_app/Features/home_tap/views/home_tap.dart';
import 'package:ecomerce_app/Features/login_page/views/login_page.dart';
import 'package:ecomerce_app/Features/product_deatils_page/views/product_details_page.dart';
import 'package:ecomerce_app/Features/profile_tab/views/profile_tab.dart';
import 'package:ecomerce_app/Features/product_tap/cubit/get_product_cubit.dart';
import 'package:ecomerce_app/Features/product_tap/views/product_tap.dart';
import 'package:ecomerce_app/Features/register_page/views/register_page.dart';
import 'package:ecomerce_app/core/di/di.dart';
import 'package:ecomerce_app/core/helper/cach_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  String routeName;  
  await CachHelper().init();
  var token = CachHelper().getData(key: 'token');
  if(token == null ){
    routeName = LoginPage.id;
  }else{
    routeName = DefultPage.id;
  }
  configureDependencies();  
  runApp( MultiBlocProvider(
    providers: [
      BlocProvider(create:(context)  => getIt<GetProductCubit>()),
      BlocProvider(create:(context)  => getIt<GetCartProductCubit>())
    ],
    child: EcomerceApp(routeName: routeName,)));
}

class EcomerceApp extends StatelessWidget {
  const EcomerceApp({super.key, required this.routeName});
  final String routeName;
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
          initialRoute: routeName,
        );
      },
    );
  }
}
