import 'package:ecomerce_app/core/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';

class CustomeSearchAndCart extends StatelessWidget {
  const CustomeSearchAndCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextFeild(
            radius: 26,
            prefix: Icon(Icons.search),
            hintText: 'what do you search for?',
            isFilled: true,
            filledColor: Colors.white,
          ),
        ),
        IconButton(
            onPressed: () {}, icon: Icon(Icons.shopping_cart_checkout_outlined))
      ],
    );
  }
}
