import 'package:flutter/material.dart';
import 'package:flutter_food_app/theme_constant.dart';

class Boxbutton extends StatelessWidget {
  final String text;
  final bool isSelected ;
  final VoidCallback onPressed;
  final textsize;

   const Boxbutton({super.key,
   required this.text,
  required this.isSelected,
  required this.onPressed,
  required this.textsize,
  
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13),
      child: GestureDetector( 
        onTap: onPressed,
        child: Container( 
          height: 45,
          width: 120,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Colors.black54,
                  blurRadius: 3.0,
                  offset: Offset(0.0, 1.0)
              )
            ],
            color: isSelected? AppConstant.appMainColor : AppConstant.genColor,
            borderRadius: BorderRadius.circular(22)
          ),
          child: 
            Center(
              child: Text(text, style: TextStyle( fontSize: textsize, color: isSelected? Colors.white : Colors.blueGrey, fontWeight: FontWeight.bold),
              ),
            ),
          )),
    //   child: ElevatedButton(
    //     onPressed: onPressed,
    //   style:  ElevatedButton.styleFrom(
    //   backgroundColor: isSelected? AppConstant.appMainColor : AppConstant.genColor
    //   ),
    //    child: Padding(
    //      padding: const EdgeInsets.all(8.0),
    //      child: Text(text, style: TextStyle(color: isSelected? Colors.white : Colors.blueGrey),),
    //    ),  
      
    //   ),
    // );
    );
  }
}