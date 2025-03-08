import 'package:ecomerce_app/Features/cart_page/cubit/get_cart_product_cubit/get_cart_product_cubit.dart';
import 'package:ecomerce_app/core/widgets/const.dart';
import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {
   CounterWidget({
    super.key, required this.countItem, required this.id,  
  });
  final num countItem;
  final String id;
  
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.02),
        width: width * 0.20,
        height: height * 0.03,
        decoration: BoxDecoration(
          color: Color(0xff004182),
          borderRadius: BorderRadius.circular(15),
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap:(){
                int countUpdate = countItem.toInt();
                countUpdate--;
                GetCartProductCubit.get(context).updateItemCount(id: id, count: countUpdate);
              } ,
              child: ImageIcon(
                AssetImage(minceIcon),
                color: Colors.white,
              ),
            ),
            Text(
              '$countItem',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            InkWell(
              onTap: (){
                int countUpdate = countItem.toInt();
                countUpdate++;
                GetCartProductCubit.get(context).updateItemCount(id: id, count: countUpdate);
              },
              child: ImageIcon(
                AssetImage(plusIcon),
                color: Colors.white,
              ),
            ),
          ],
        ));
  }
}
