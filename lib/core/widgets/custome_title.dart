import 'package:flutter/material.dart';

class CustomeTitleOfTextFeild extends StatelessWidget {
  const CustomeTitleOfTextFeild({super.key, required this.title,  this.textColor=Colors.white});

  final String title;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Text(title,
            style: TextStyle(color: textColor, fontSize: 18));
  }
}