import 'package:flutter/material.dart';
class Item{
  final String title;
  final double Price;
  final String imageUrl;
  final String desc;

  Item({
    required this.title,
    required this.Price,
    required this.imageUrl,
    required this.desc,
  });
}

class ItemProvider with ChangeNotifier{
   List<Item> _items =  [ 
    Item(title: "Petty Burger" , Price: 130, imageUrl: "assets/images/B4.png" , desc: "The Petty Burger is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, it's topped with melted American cheese, crispy lettuce, ripe tomato, and crunchy pickles."),


    Item(title: "Cheese Burger", Price: 130, imageUrl: "assets/images/B1.png", desc: "The Petty Burger is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, it's topped with melted American cheese, crispy lettuce, ripe tomato, and crunchy pickles."),

    Item(title: "Zinger Burger", Price: 130, imageUrl: "assets/images/B2.png", desc: "The Petty Burger is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, it's topped with melted American cheese, crispy lettuce, ripe tomato, and crunchy pickles."),

    Item(title: "Chicken Burger", Price: 130, imageUrl: "assets/images/B3.png", desc: "The Petty Burger is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, it's topped with melted American cheese, crispy lettuce, ripe tomato, and crunchy pickles."),

  ];
  List<Item> _favorite = [];
  List<Item> get items => _items;
  List<Item> get favorite => _favorite;

  void toggleFavorite(Item item){
    if(_favorite.contains(item)){
      _favorite.remove(item);
    } else{
      _favorite.add(item);
    } notifyListeners();
  }
  Item getItemByIndex(int index){
   return _items[index];
  }
}