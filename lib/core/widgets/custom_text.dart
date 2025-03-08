import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) { 
    List<String> words = title.split(' ');
    String shortTitle = words.take(2).join(' ');
    return AutoSizeText(
        shortTitle,
        style:const TextStyle(fontSize: 8,color: Color(0xff06004F)),
        minFontSize: 18,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      );
  }
}