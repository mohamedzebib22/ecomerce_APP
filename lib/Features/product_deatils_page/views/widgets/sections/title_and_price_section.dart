import 'package:flutter/material.dart';

class TitleAndPriceSection extends StatelessWidget {
  const TitleAndPriceSection({
    super.key, required this.title, required this.price,
  });
  final String title;
  final num price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SingleChildScrollView(child: Text(title ,maxLines: 1,)),
        Text('EGP ${price}'),
      ],
    );
  }
}
