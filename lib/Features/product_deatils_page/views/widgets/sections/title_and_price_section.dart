import 'package:flutter/material.dart';

class TitleAndPriceSection extends StatelessWidget {
  const TitleAndPriceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Nike Air Jordon'),
        Text('EGP 3,500'),
      ],
    );
  }
}
