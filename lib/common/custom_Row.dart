import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String text1;
  final String text2;
  final fontWeight;
  final color;
  final double size;
  const CustomRow({super.key, required this.text1, required this.text2, required this.fontWeight,
  required this.size, required this.color});

  @override
  Widget build(BuildContext context) { 
    return Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(text1, style: TextStyle( fontSize: size, fontWeight: fontWeight, color: color),),
      Text(text2,style: TextStyle( fontSize: size, fontWeight: fontWeight, color: color, ), ),
    ],);
  }
}