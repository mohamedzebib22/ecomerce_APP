import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key, required this.onTap});

  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap:onTap ,
      child: Container(
        margin: EdgeInsets.only(right: width*0.04),
        width:width*0.20 ,
        height: height*0.03,
        decoration: BoxDecoration(
          color: Color(0xff004182),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(child: Text('Add to Cart' ,style: TextStyle(color: Colors.white,fontSize: 10),),),
      ),
    );
  }
}