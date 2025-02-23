import 'package:ecomerce_app/Features/favourite_tap/views/widgets/sections/product_details_section.dart';
import 'package:ecomerce_app/core/widgets/custome_search_and_cart.dart';
import 'package:flutter/material.dart';

class FavouriteTapBody extends StatelessWidget {
  const FavouriteTapBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/images/smalllogo.png'),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              CustomeSearchAndCart(),
              SizedBox(
                height: height * 0.02,
              ),
              ProductDetailsSection(),
            ],
          );
  }
}



