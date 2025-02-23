import 'package:ecomerce_app/core/widgets/const.dart';
import 'package:flutter/material.dart';

class AddToCartAndCheckOut extends StatelessWidget {
  const AddToCartAndCheckOut({
    super.key, required this.imageIcon, this.onTap,
   
  });
  final String imageIcon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Row(
      children: [
       Expanded(child: ListTile(title:Text('Total price',style: TextStyle(color: Colors.grey,fontSize: 14),) ,subtitle:Text('EGP 3700',style: TextStyle(fontSize: 16),) ,)),
        Expanded(
          child: InkWell(
            onTap: onTap,
            child: Container(
              width: width*0.02,
              height: height*.04,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imageIcon))
              ),
            ),
          ),
        ),
      ],
    );
  }
}