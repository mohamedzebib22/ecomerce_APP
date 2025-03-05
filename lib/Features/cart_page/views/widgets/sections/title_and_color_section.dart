import 'package:ecomerce_app/Features/product_tap/views/widgets/custom_price.dart';
import 'package:ecomerce_app/Features/product_tap/views/widgets/custom_product.dart';
import 'package:ecomerce_app/core/widgets/counter_widget.dart';
import 'package:flutter/material.dart';

class TitleAndColorSection extends StatelessWidget {
  const TitleAndColorSection({
    super.key, required this.title, required this.price, required this.countItem,
    
  });

 
  final String title;
  final num price;
  final num countItem;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,style: TextStyle(fontSize: 8,overflow:TextOverflow.ellipsis ),),
              Icon(Icons.delete_outlined,size: 24,color: Colors.black,)
            ],
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Text('Black color'),
          SizedBox(
            height: height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [CustomPrice(price: price,), CounterWidget(countItem: countItem,)],
          ),
         
        ],
        
      ),
    );
  }
}