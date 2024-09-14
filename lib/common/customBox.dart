
import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final String title;
  final String acNumber;
  final imgUrl;
  final color;
 // final imgsize;
   CustomBox({super.key,
    required this.title,
    required this.imgUrl,
    required this.acNumber,
    required this.color,
   // required this.imgsize,

   });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: 95,
        
        decoration:  BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
              BoxShadow(
                  color: Colors.black54,
                  blurRadius: 3.0,
                  offset: Offset(0.0, 1.0)
              )
            ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Image.asset(imgUrl, height: 80, width: 80,), 
            
            Padding(
              padding: const  EdgeInsets.only(left: 23, top: 8),
              child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(title,style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(acNumber,style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              ],),
            )
          ],),
        ),
      ),
    );
  }
}