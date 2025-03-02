import 'package:flutter/material.dart';

class CustomPrice extends StatelessWidget {
  const CustomPrice({
    super.key, required this.price,
  });
  final num price;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$price'),
        Text(
          '$price',
          style: TextStyle(fontSize: 12 ,decoration:TextDecoration.lineThrough ),
        )
      ],
    );
  }
}