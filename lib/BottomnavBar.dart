import 'package:flutter/material.dart';
import 'package:flutter_food_app/Screens/HomeScreen.dart';
import 'package:flutter_food_app/Screens/account.dart';
import 'package:flutter_food_app/Screens/favourite.dart';
import 'package:flutter_food_app/theme_constant.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int seletedIndex = 0;
  List<Widget> Screens = [
    
    HomeScreen(),
  FavoriteScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens.elementAt(seletedIndex),
       appBar: null,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppConstant.appMainColor,
        iconSize: 28,
        onTap: (index){
           setState(() {
             seletedIndex= index;
           });
            
          },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: "."),
           BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "."), 
           BottomNavigationBarItem(icon: Icon(Icons.person),label: "."),
        
            ],
            currentIndex: seletedIndex,
            showSelectedLabels: true,
            showUnselectedLabels: false,
           
        selectedItemColor: AppConstant.compoColor,
         unselectedItemColor: Colors.white,
        ),
    );
  }
}