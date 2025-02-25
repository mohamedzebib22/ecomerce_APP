import 'package:ecomerce_app/core/widgets/category_and_brand_title.dart';
import 'package:ecomerce_app/domain/Entity/category_and_brand_response.dart';
import 'package:flutter/material.dart';

class BrandsSectionItems extends StatelessWidget {
  const BrandsSectionItems({
    super.key,
    required this.itemCount,required this.getBrandList,
  });
  final int itemCount;
  final getBrandList;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const GategoryAndBrandTitle(
          title: 'Brands',
        ),
        SizedBox(
          height: height * 0.30,
          child: GridView.builder(
              itemCount: itemCount,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                CategoryAndBrandEntity brandList = getBrandList[index];
                return Column(
                  children: [
                    ClipOval(
                      child: Image.network(
                        brandList.image ?? 'https://cdn.pixabay.com/photo/2015/06/09/16/12/error-803716_640.png'
                        ,
                        fit: BoxFit.fill,
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Text(brandList.name ?? ''),
                  ],
                );
              }),
        ),
      ],
    );
  }
}
