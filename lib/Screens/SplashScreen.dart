// ignore_for_file: avoid_unnecessary_containers


import 'package:flutter/material.dart';
import 'package:flutter_food_app/BottomnavBar.dart';
import 'package:flutter_food_app/Screens/HomeScreen.dart';
import 'package:flutter_food_app/theme_constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const BottomNavBar()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.appMainColor,
                 body: Container(child: Column(
                  children: [
                    Container( padding: const EdgeInsets.only(top: 280),
                        alignment: Alignment.center,
                       child:  Text( AppConstant.appName , style: const TextStyle(fontSize: 40, color: AppConstant.genColor,fontWeight: FontWeight.w900),),
                    ),
                    Container( padding: const EdgeInsets.only(top: 240),
                        alignment: Alignment.bottomLeft,
                       child: 
                        Image.asset("assets/images/spl i1.png"),
                        ),
                    
                 ],),), 
        
      
    );
  }
}
