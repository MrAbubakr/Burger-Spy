import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_food_app/BottomnavBar.dart';
import 'package:flutter_food_app/Screens/HomeScreen.dart';
import 'package:flutter_food_app/Screens/provider_model.dart/provider_model.dart';
import 'package:flutter_food_app/common/boxbutton.dart';
import 'package:flutter_food_app/common/customBox.dart';
import 'package:flutter_food_app/theme_constant.dart';
import 'package:provider/provider.dart';

import '../common/custom_Row.dart';

class OrderSummery extends StatefulWidget {
  
  const OrderSummery({super.key, });

  @override
  State<OrderSummery> createState() => _OrderSummeryState();
}

class _OrderSummeryState extends State<OrderSummery> {
  @override
  Widget build(BuildContext context) {
     int _selectedIndex = -1;
  //final favorites = Provider.of<ItemProvider>(context).favorite;
      final itemsProvider = Provider.of<ItemProvider>(context);
    return Scaffold(appBar: AppBar(
      title: const Text("Order Summery",  style: TextStyle(fontWeight: FontWeight.bold),
       ), centerTitle: true,
    ),
    body: Container( padding: const EdgeInsets.all(25),
      child:  SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child:  Column(children: [
        const  CustomRow(text1: "Price", text2: "130", fontWeight: null, color: Color.fromARGB(124, 124, 124, 128),  size: 22.0,),
        const  SizedBox(height: 5,),
         const CustomRow(text1: "Taxes", text2: "5.0",fontWeight: null,color: Color.fromARGB(129, 129, 129, 148), size: 22.0,),
        const  SizedBox(height: 5,),
        const  CustomRow(text1: "Delivery Fee", text2: "20",fontWeight: null,color:Color.fromARGB(124, 124, 124, 128), size: 22.0,),
        const  SizedBox(height: 5,),
           const  Divider(
                        color: Color.fromARGB(124, 124, 124, 128),
                        height: 80,
                        indent: 0,
                      ),
        
        const  CustomRow(text1: "Total",  text2: "155.0",fontWeight: FontWeight.bold,color: Colors.black54, size: 22.0,),
        const  SizedBox(height: 5,),
        const  CustomRow(text1: "Eastimated Delivery Time", text2: '', fontWeight: null, color: Colors.black,size: 20.0, ),
        const  SizedBox(height: 50,),
        const Text('Payment Methods', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,),),
        const  SizedBox(height: 15,),
          CustomBox(title: "Debit Card", imgUrl: "assets/images/cash 4.png", acNumber: "5267 **** 3642 ****", color: Colors.cyanAccent,),
        const  SizedBox(height: 15,),
        CustomBox(title: "EasyPaisa", imgUrl: "assets/images/cash 2.png", acNumber: "0318******6" ,color: AppConstant.genColor,),
        const  SizedBox(height: 15,),
        CustomBox(title: "JazzCash", imgUrl: "assets/images/cash 1.png", acNumber: "0318******6",color: Colors.amberAccent,),
        const  SizedBox(height: 15,),
        CustomBox(title: "Cash On Delivery", imgUrl: "assets/images/cash 3.png", acNumber: "Address: Samundri",color: Colors.lime,),
        const  SizedBox(height: 40,),
        Boxbutton( 
          text: "Place Order", textsize: 18.0, isSelected: true,
           onPressed: ()=> showDialog(
            
            context: context,
            builder: (BuildContext context) => AlertDialog(
              elevation: 10,
              icon: const Icon(Icons.done, size: 50,color: AppConstant.appMainColor,),
          title:  const Center(child: Text('Success!', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: AppConstant.appMainColor), )),
          
          content: const Text('Your Order is placed successfully, A receipt for this purchase has been sent to your email.'),
          actions: <Widget>[
            Center(
              child: Boxbutton(text: "Go Back", isSelected: true, onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const BottomNavBar()));
              }, textsize: 18.0),
            )
          ],
        ), 
            ))
        ],),
      ),
    ),
    );
  }
}