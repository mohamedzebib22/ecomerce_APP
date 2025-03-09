import 'package:ecomerce_app/Features/home_tap/views/widgets/sections/ads_section.dart';
import 'package:ecomerce_app/Features/product_deatils_page/views/product_details_page.dart';
import 'package:ecomerce_app/Features/product_tap/cubit/get_product_cubit.dart';
import 'package:ecomerce_app/Features/product_tap/cubit/get_product_state.dart';
import 'package:ecomerce_app/Features/product_tap/views/widgets/custom_product.dart';
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
            CustomeSearchAndCart(
              titleController: viewModel.filterTitle,
              onChanged: (title) {
                GetProductCubit.get(context).searchProduct(title);
              },
            ),
            BlocBuilder<GetProductCubit, GetProductState>(
              bloc: GetProductCubit.get(context)..getProduct(),
              builder: (context, state) {
                
                if (state is GetProductSucsess) {
                  var productList =state.getProductEntity.data;
                var filterList = productList!.where((item) {
                  bool filterTitle = item.title!
                          .toLowerCase()
                          .contains(viewModel.filterTitle.text.toLowerCase()) ??
                      false;
                  return filterTitle;
                }).toList();
                  return Expanded(
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 2 / 3.2.h,
                        ),
                        itemCount: filterList.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, ProductDetailsPage.id,
                                  arguments: viewModel.productList[index]);
                            },
                            child: CustomProduct(
                              product: filterList[index],
                            ),
                          );
                        }),
                  );
                }else if(state is GetProductLoading){
                  return Center(child: CircularProgressIndicator(),);
                }else{
                  return Center(child: Text(state.toString()),);
                }
              },
            ),
          ],
        ),
      ),
    ));
  }
}
