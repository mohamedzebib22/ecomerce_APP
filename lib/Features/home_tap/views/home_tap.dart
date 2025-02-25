import 'package:ecomerce_app/Features/home_tap/cubits/cubit/category_cubit.dart';
import 'package:ecomerce_app/Features/home_tap/cubits/cubit/category_state.dart';
import 'package:ecomerce_app/Features/home_tap/views/widgets/sections/ads_section.dart';
import 'package:ecomerce_app/Features/home_tap/views/widgets/sections/brands_section_item.dart';
import 'package:ecomerce_app/Features/home_tap/views/widgets/sections/category_section_item.dart';
import 'package:ecomerce_app/core/di/di.dart';
import 'package:ecomerce_app/core/widgets/category_and_brand_title.dart';
import 'package:ecomerce_app/core/widgets/custome_search_and_cart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTap extends StatefulWidget {
  const HomeTap({super.key});
  static String id = 'HomeTap';

  @override
  State<HomeTap> createState() => _HomeTapState();
}

class _HomeTapState extends State<HomeTap> {
  CategoryCubit viewModel = getIt<CategoryCubit>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.02, vertical: height * 0.02),
          child: SingleChildScrollView(
            child: BlocBuilder<CategoryCubit, CategoryState>(
              bloc:viewModel..getAllCategory() ,
              builder: (context, state) {
                if (state is CategoryLoading){
                 return Center(child: CircularProgressIndicator(),);
                }else if (state is CategorySucsess){
                  return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const CustomeSearchAndCart(),
                    SizedBox(
                      height: height * 0.02,
                    ),
                     CategoriesItemsSection(
                      itemCount:state.categoryAndBrandEntity.data!.length, 
                      getCategoryList: state.categoryAndBrandEntity.data,  
                    ),
  
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const BrandsSectionItems(
                      itemCount: 20,
                    )
                  ],
                );
                }else if(state is CategoryFaluire){
                  Center(child: Text(state.errMessage.errMessage),);
                }
                return Container(child: Center(child: Text('Invalid'),),);
                
              },
            ),
          ),
        ),
      ),
    );
  }
}
