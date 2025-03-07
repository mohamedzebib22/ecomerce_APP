import 'package:flutter/material.dart';

class ProductImageSection extends StatelessWidget {
  const ProductImageSection({
    super.key, required this.image,
  });

  final String image;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network(
          image,
          width: width * .27,
          height: height * 0.14,
          fit: BoxFit.fill,
        ));
  }
}
