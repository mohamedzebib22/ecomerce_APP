import 'package:ecomerce_app/core/widgets/custom_text_feild.dart';
import 'package:ecomerce_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTap extends StatelessWidget {
  const HomeTap({super.key});
  static String id ='HomeTap';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width*0.02,vertical: height*0.02),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomTextFeild(hintText: 'what do you search for?',borderColor: Color(0xff004182),radius: 28,prefix: Icon(Icons.search,color: Colors.blue,),),
                
                SizedBox(height: height*0.02,),
                ImageSlideshow(
                   width: double.infinity,
                   height: 190.h,
                   initialPage: 0,
                   autoPlayInterval: 3000,
                   isLoop: true,
                  children:[
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
                  ] ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('Categories' ,style: TextStyle(fontSize: 16,color:  Color.fromARGB(255, 16, 42, 65)),),
                  Text('view all',style: TextStyle(fontSize: 14,color:  Color.fromARGB(255, 16, 42, 65))),
                ],),
                 SizedBox(height: height*0.02,),
                SizedBox(
                  height: height*0.30,
                  child: GridView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 20,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    scrollDirection: Axis.horizontal,
                   itemBuilder: (context,index){
                    return Column(
                      children: [
                        ClipOval(child: Image.asset('assets/images/imageads1.png',fit: BoxFit.fill,width: 100,height: 100,),),
                        Text('data')
                      ],
                    );
                  }),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('Brands' ,style: TextStyle(fontSize: 16,color:  Color.fromARGB(255, 16, 42, 65)),),
                  Text('view all',style: TextStyle(fontSize: 14,color:  Color.fromARGB(255, 16, 42, 65))),
                ],),
                SizedBox(height: height*0.02,),
                SizedBox(
                  height: height*0.30,
                  child: GridView.builder( 
                    itemCount: 20,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    scrollDirection: Axis.horizontal,
                   itemBuilder: (context,index){
                    return Column(
                      children: [
                        ClipOval(child: Image.asset('assets/images/imageads1.png',fit: BoxFit.fill,width: 100,height: 100,),),
                        Text('data')
                      ],
                    );
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}