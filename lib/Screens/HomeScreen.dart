
import 'package:flutter/material.dart';
import 'package:flutter_food_app/Screens/detailscreen.dart';
import 'package:flutter_food_app/Screens/provider_model.dart/provider_model.dart';
import 'package:flutter_food_app/common/boxbutton.dart';
import 'package:flutter_food_app/common/customtxtfeild.dart';
import 'package:flutter_food_app/theme_constant.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    final itemsProvider = Provider.of<ItemProvider>(context);
    return Scaffold(
      
      body:  Column( 
        children: [
          Container( padding: const EdgeInsets.all(15),
            child: 
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column( 
                    children: [
                      Text( AppConstant.appName , style: const TextStyle(fontSize: 30, color: AppConstant.appsecondColor,fontWeight: FontWeight.w900),),
                      const Text("Choose Your Favourite Burgers", ),
                     ],
                  ), 
                  Image.asset("assets/images/B1.png",width: 60, height: 60,),
                ],
              ),
              
              ),
              
              
             const Customtxtfeild(Text: "Search Here", color: Colors.white, icon: Icon(Icons.search_rounded)),
                
        Container( height: 60,
           padding: EdgeInsets.only(left: 25),
           child: 
             ListView( 
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              
              children: [
                Boxbutton(text: "All", isSelected: _selectedIndex == 0, textsize: 18.0,
                 onPressed: (){
                  setState(() {
                _selectedIndex = 0;
              });
                }),
                Boxbutton(text: "Combo", isSelected: _selectedIndex == 1, textsize: 18.0,
                 onPressed: (){
                  setState(() {
                _selectedIndex = 1;
              });
                }),Boxbutton(text: "Sliders", isSelected: _selectedIndex == 2, textsize: 18.0,
                 onPressed: (){
                  setState(() {
                _selectedIndex = 2;
              });
                }),
                Boxbutton(text: "Classic", isSelected: _selectedIndex == 3, textsize: 18.0,
                 onPressed: (){
                  setState(() {
                _selectedIndex = 3;
              });
                }),
               

             ],),),
          
          Expanded(child: 
           GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              
              ),
              
              itemCount: itemsProvider.items.length,
               itemBuilder: (context, index){
                final item = itemsProvider.getItemByIndex(index);
                final isFavorite = itemsProvider.favorite.contains(item);
              return  GestureDetector(
                  onTap: (){
                   Navigator.push(context,  MaterialPageRoute(builder: (context)=> DetailScreen(item: item,)));
                  },
                   child: 
                    GridTile(
                      
                       child:  Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Image.asset(item.imageUrl, fit:  BoxFit.contain,  ),
                    
                    ),
                    
                  footer: GridTileBar(
                    backgroundColor: AppConstant.genColor,
                    title: Text(item.title, style: TextStyle(color: Colors.black),),
                    subtitle: Text(item.Price.toString(), style: TextStyle(color: Colors.black),),
                    trailing: IconButton(onPressed: (){
                      setState(() {
                        itemsProvider.toggleFavorite(item);
                      });
                    },
                     icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? AppConstant.appMainColor : Colors.black,)
                    ),
                  ),
                  ),);
               })
          ),
           
          
        ],),
        
      
        
      
    );
  }
}