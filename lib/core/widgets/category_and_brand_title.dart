import 'package:flutter/material.dart';

class GategoryAndBrandTitle extends StatelessWidget {
  const GategoryAndBrandTitle({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(title ,style: const TextStyle(fontSize: 16,color:  Color.fromARGB(255, 16, 42, 65)),),
     const Text('view all',style:  TextStyle(fontSize: 14,color:  Color.fromARGB(255, 16, 42, 65))),
    ],);
  }
}