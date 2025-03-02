import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageProductSection extends StatelessWidget {
  const ImageProductSection({
    super.key,required this.productImageList,
  }); 
 final List<String> productImageList; 

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
        width: double.infinity,
        height: 250.h,
        initialPage: 0,
        autoPlayInterval: 3000,
        isLoop: true,
        children: productImageList.map((url){
          return Image.network(url,fit: BoxFit.fill,width: double.infinity,);
        }).toList()
        );
  }
}
