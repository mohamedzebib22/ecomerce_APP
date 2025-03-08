import 'package:ecomerce_app/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomPrice extends StatelessWidget {
  const CustomPrice({
    super.key, required this.price,
  });
  final num price;
  
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        CustomText(title: '$price'),
       
        SizedBox(width: width*0.02,),
        Text(
          '$price',
          style: TextStyle(fontSize: 10 ,decoration:TextDecoration.lineThrough,color: Colors.grey ),
        )
      ],
    );
  }
}