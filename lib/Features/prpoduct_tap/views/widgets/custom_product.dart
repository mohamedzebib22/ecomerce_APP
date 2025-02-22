import 'package:ecomerce_app/core/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';

class CustomProduct extends StatelessWidget {
  const CustomProduct({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.01),
      width: width * 0.44,
      height: height * 0.30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.blue, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: width * 0.44,
            height: height * 0.13,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/productimage.png'))),
          ),
          ListTile(
            title: Text(
              'Nike Air Jordon',
              style: TextStyle(fontSize: 12),
            ),
            subtitle: Text('Nike shoes flexible for wo..',
                style: TextStyle(fontSize: 10)),
          ),
          CustomPrice(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('Review'),
                  Text('(4.5)'),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                ],
              ),
              Image.asset('assets/images/addicon.png'),
            ],
          )
        ],
      ),
    );
  }
}

class CustomPrice extends StatelessWidget {
  const CustomPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('EGP 1,200 '),
        Text(
          '2000',
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
