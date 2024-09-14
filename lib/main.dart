import 'package:flutter/material.dart';
import 'package:flutter_food_app/Screens/SplashScreen.dart';
import 'package:flutter_food_app/Screens/provider_model.dart/provider_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> ItemProvider()),
    ], child: MyApp() ,
    )
     );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}