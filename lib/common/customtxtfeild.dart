import 'package:flutter/material.dart';
import 'package:flutter_food_app/theme_constant.dart';

class Customtxtfeild extends StatelessWidget {
  final String Text;
  final Color color;
  final Icon icon;
  const Customtxtfeild({super.key,
  required this.Text,
  required this.color,
  required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(25),
        child: TextField(
           decoration: InputDecoration(
            hintText: Text,
            prefixIcon: icon,
            filled: true,
            fillColor: color,
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(color: AppConstant.genColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(color: AppConstant.appMainColor),
            ),
            
          ),
        ),
      ),
    );
  }
}