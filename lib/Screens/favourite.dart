import 'package:flutter/material.dart';
import 'package:flutter_food_app/Screens/detailscreen.dart';
import 'package:flutter_food_app/Screens/provider_model.dart/provider_model.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favorites = Provider.of<ItemProvider>(context).favorite;

    return Scaffold(
      appBar: AppBar(

        title: Text('Favorites', style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: favorites.isEmpty
          ? Center(child: Text('No favorites added yet!'))
          : ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final item = favorites[index];
                return ListTile(
                  leading: Image.asset(item.imageUrl, width: 50, fit: BoxFit.cover),
                  title: Text(item.title),
                  subtitle: Text('\$${item.Price.toString()}'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(item: item),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
