import 'package:ecomerce_app/Features/home_tap/views/widgets/sections/ads_section.dart';
import 'package:ecomerce_app/Features/home_tap/views/widgets/sections/brands_section_item.dart';
import 'package:ecomerce_app/Features/home_tap/views/widgets/sections/category_section_item.dart';
import 'package:ecomerce_app/core/widgets/category_and_brand_title.dart';
import 'package:ecomerce_app/core/widgets/custome_search_and_cart.dart';
import 'package:flutter/material.dart';

class HomeTap extends StatelessWidget {
  const HomeTap({super.key});
  static String id = 'HomeTap';
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
                const CustomeSearchAndCart(),
                SizedBox(
                  height: height * 0.02,
                ),
                const AdsSection(),
                const GategoryAndBrandTitle(
                  title: 'Categories',
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                const CategoriesItemsSection(
                  itemCount: 20,
                ),
                const GategoryAndBrandTitle(
                  title: 'Brands',
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                const BrandsSectionItems(
                  itemCount: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
