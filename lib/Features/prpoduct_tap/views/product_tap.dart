import 'package:ecomerce_app/Features/home_tap/views/widgets/sections/ads_section.dart';
import 'package:ecomerce_app/Features/product_deatils_page/views/product_details_page.dart';
import 'package:ecomerce_app/Features/prpoduct_tap/cubit/get_product_cubit.dart';
import 'package:ecomerce_app/Features/prpoduct_tap/cubit/get_product_state.dart';
import 'package:ecomerce_app/Features/prpoduct_tap/views/widgets/custom_product.dart';
import 'package:ecomerce_app/core/di/di.dart';
import 'package:ecomerce_app/core/widgets/custom_text_feild.dart';
import 'package:ecomerce_app/core/widgets/custome_search_and_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductTap extends StatelessWidget {
  ProductTap({super.key});
  static String id = 'ProductTap';
  GetProductCubit viewModel = getIt<GetProductCubit>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.02, vertical: height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomeSearchAndCart(),
            BlocBuilder<GetProductCubit, GetProductState>(
              bloc: viewModel..getProduct(),
              builder: (context, state) {
                return viewModel.productList.isEmpty ? Center(child: CircularProgressIndicator(),) :
                Expanded(
                  
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2 /3.2.h,
                      ),
                      itemCount: viewModel.productList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, ProductDetailsPage.id,arguments: viewModel.productList[index]);
                          },
                          child: CustomProduct(
                            product: viewModel.productList[index],
                          ),
                        );
                      }),
                );
              },
            ),
          ],
        ),
      ),
    ));
  }
}
