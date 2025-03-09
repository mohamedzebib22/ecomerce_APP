import 'package:ecomerce_app/Features/favourite_tap/views/widgets/sections/product_details_section.dart';
import 'package:flutter/material.dart';

class ShowItemFavourite extends StatelessWidget {
  const ShowItemFavourite({
    super.key,required this.favouriteItemList, required this.itemCount,
  });

  final favouriteItemList ;
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount:itemCount,
        itemBuilder: (context, index) {
          return ProductDetailsSection(
              productItem:favouriteItemList[index]);
        }
      ),
    );
  }
}