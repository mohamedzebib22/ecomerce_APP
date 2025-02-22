import 'package:flutter/material.dart';

class BrandsSectionItems extends StatelessWidget {
  const BrandsSectionItems({
    super.key, required this.itemCount,
    
  });
  final int itemCount;


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height*0.30,
      child: GridView.builder( 
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        scrollDirection: Axis.horizontal,
       itemBuilder: (context,index){
        return Column(
          children: [
            ClipOval(child: Image.asset('assets/images/iamgeads2.png',fit: BoxFit.fill,width: 100,height: 100,),),
            Text('data')
          ],
        );
      }),
    );
  }
}