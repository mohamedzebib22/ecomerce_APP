import 'package:flutter/material.dart';

typedef MyValidator = String? Function(String?)?;

class CustomTextFeild extends StatelessWidget {
  CustomTextFeild(
      {super.key,
      required this.hintText,
      this.prefix,
      this.initialValue,
      this.sufix,
      this.borderColor = Colors.blue,
      this.maxLines = 1,
      this.onChanged,
      this.controller,
      this.radius =16,
      this.isFilled = false,
      this.security = false,
      this.filledColor = Colors.transparent,
      this.validator});

  MyValidator? validator;
  String hintText;
  String? initialValue;
  Widget? prefix;
  Widget? sufix;
  double radius;
  bool isFilled;
  Color filledColor;
  TextEditingController? controller;
  
  Color? borderColor;
  int maxLines;
  bool security;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.black,),
      obscureText: security,
      initialValue: initialValue,
      controller: controller,
      onChanged: onChanged,
      validator: validator,
      maxLines: maxLines,
      decoration: InputDecoration(
        filled:isFilled ,
        fillColor: filledColor,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey,fontSize: 14),
        prefixIcon: prefix,
        suffixIcon: sufix,
        disabledBorder: makeAllBorder(color: Colors.grey, radius: radius),
        enabledBorder: makeAllBorder(color: borderColor!, radius: radius),
        focusedBorder:
            makeAllBorder(color: Color(0xff004182), radius: 20),
        focusedErrorBorder:
            makeAllBorder(color: Colors.red, radius: radius),
        errorBorder: makeAllBorder(color: Colors.red, radius: radius),
      ),
      
    );
  }

  OutlineInputBorder makeAllBorder(
      {required Color color, required double radius}) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color),
        borderRadius: BorderRadius.circular(radius));
  }
}