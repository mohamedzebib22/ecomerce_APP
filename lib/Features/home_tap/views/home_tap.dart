import 'package:ecomerce_app/Features/home_tap/cubits/cubit/category_cubit.dart';
import 'package:ecomerce_app/Features/home_tap/cubits/cubit/category_state.dart';
import 'package:ecomerce_app/Features/home_tap/views/widgets/sections/ads_section.dart';
import 'package:ecomerce_app/Features/home_tap/views/widgets/sections/brands_section_item.dart';
import 'package:ecomerce_app/Features/home_tap/views/widgets/sections/category_section_item.dart';
import 'package:ecomerce_app/core/di/di.dart';
import 'package:ecomerce_app/core/widgets/category_and_brand_title.dart';
import 'package:ecomerce_app/core/widgets/custom_text.dart';
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
  CategoryAndBrandCubit viewModel = getIt<CategoryAndBrandCubit>();
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
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               CustomeSearchAndCart(),
              SizedBox(
                height: height * 0.02,
              ),
              BlocBuilder<CategoryAndBrandCubit, CategoryAndBrandState>(
                bloc: viewModel..getAllCategory(),
                builder: (context, state) {
                  return viewModel.gategoryList.isEmpty
                      ?const Center(
                          child: CircularProgressIndicator(),
                        )
                      : CategoriesItemsSection(
                          itemCount: viewModel.gategoryList.length,
                          getCategoryList: viewModel.gategoryList);
                },
              ),
              SizedBox(
                height: height * 0.02,
              ),
              BlocBuilder<CategoryAndBrandCubit, CategoryAndBrandState>(
                  bloc: viewModel..getAllBrands(),
                  builder: (context, state) {
                    return viewModel.brandList.isEmpty
                        ?const Center(
                            child: CustomText(title: 'Loading'),
                          )
                        : BrandsSectionItems(
                            itemCount: viewModel.brandList.length,
                            getBrandList: viewModel.brandList);
                  })
            ],
          )),
        ),
      ),
    );
  }
}
