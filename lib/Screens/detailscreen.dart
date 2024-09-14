import 'package:flutter/material.dart';
import 'package:flutter_food_app/Screens/order_summery.dart';
import 'package:flutter_food_app/Screens/provider_model.dart/provider_model.dart';
import 'package:flutter_food_app/common/boxbutton.dart';
import 'package:flutter_food_app/theme_constant.dart';
 

class DetailScreen extends StatefulWidget {
  final Item item;

  DetailScreen({required this.item});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  double _value = 10.0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text(widget.item.title), centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(widget.item.imageUrl),
            const  SizedBox(height: 20),
              Text(
                widget.item.title,
                style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            const  SizedBox(height: 10),
              Text(
                widget.item.desc.toString(),
                style: const TextStyle(fontSize: 15),
              ),
             const SizedBox(height: 10),
              Center(
                child: Container( 
                  width: 280,
                  child: Column( 
                    children: [
                      Slider(
                            min: 0.0,
                            max: 100.0,
                            divisions: 50,
                            
                            activeColor: AppConstant.appMainColor,
                            thumbColor: AppConstant.appsecondColor,
                            value: _value, onChanged: (double value){
                            setState(() {
                              _value = value;
                            });
                          }),
                        const  Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text("Mild", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 18),),
                          Text("Spicy", style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 18),)
                          ],)
                    ],
                  ),
                ),
              ),
             
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 50),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Container( 
                     child: Text(widget.item.Price.toString()),),
                
                Boxbutton(text: "Order Now", isSelected: true, textsize: 18.0, onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderSummery()));
                }),
                ],),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
