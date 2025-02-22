import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdsSection extends StatelessWidget {
  const AdsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
        width: double.infinity,
        height: 190.h,
        initialPage: 0,
        autoPlayInterval: 3000,
        isLoop: true,
        children: [
          Image.asset(
            'assets/images/imageads1.png',
            fit: BoxFit.fill,
          ),
          Image.asset(
            'assets/images/iamgeads2.png',
            fit: BoxFit.fill,
          ),
          Image.asset(
            'assets/images/imageads3.png',
            fit: BoxFit.fill,
          ),
        ]);
  }
}
