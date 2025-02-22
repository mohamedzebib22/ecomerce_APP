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
            ImageSlideshow(
                width: double.infinity,
                height: 250.h,
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
                ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Nike Air Jordon'),
                Text('EGP 3,500'),
              ],
            ),
            Row(
              children: [
                Container(
                  width: width * 0.23,
                  height: height * 0.03,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.blue, width: 1),
                  ),
                  child: Center(
                    child: Text('3,230 Sold'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text('4.8'),
                    Text('(7500)'),
                    Container(
                        
                        padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                        width: width * 0.20,
                        height: height * 0.03,
                        decoration: BoxDecoration(
                          color: Color(0xff004182),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ImageIcon(
                              AssetImage(minceIcon),
                              color: Colors.white,
                            ),
                            Text(
                              '0',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            ImageIcon(
                              AssetImage(plusIcon),
                              color: Colors.white,
                            ),
                          ],
                        )),
                  ],
                )
              ],
            ),
            Text('Description'),
            Text('Nike is a multinational corporation that designs, develops, and sells athletic footwear ,apparel, and accessories.' ,maxLines: 3,overflow:TextOverflow.ellipsis ,style: TextStyle(color: Colors.grey,fontSize: 12),),
            Text('Size'),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(addToCart))
              ),
            ),
          ],
        ),
      ),
    );
  }
}
