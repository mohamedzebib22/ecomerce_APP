import 'package:ecomerce_app/core/widgets/product_image_section.dart';
import 'package:ecomerce_app/core/widgets/add_to_cart_and_checkout.dart';
import 'package:ecomerce_app/Features/product_deatils_page/views/widgets/sections/count_product_section.dart';
import 'package:ecomerce_app/Features/product_deatils_page/views/widgets/sections/description_section.dart';
import 'package:ecomerce_app/Features/product_deatils_page/views/widgets/sections/product_images_section.dart';
import 'package:ecomerce_app/Features/product_deatils_page/views/widgets/sections/title_and_price_section.dart';
import 'package:ecomerce_app/core/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});
  static String id = 'ProductDetailsPage';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.shopping_cart_checkout)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.04, vertical: height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageProductSection(),
            SizedBox(height: height*0.02,),
            TitleAndPriceSection(),
            SizedBox(height: height*0.02,),
            CountProductSection(),
            SizedBox(height: height*0.02,),
            DescriptionSection(),
            SizedBox(height: height*0.02,),
            AddToCartAndCheckOut(imageIcon: addToCart,),
          ],
        ),
      ),
    );
  }
}
