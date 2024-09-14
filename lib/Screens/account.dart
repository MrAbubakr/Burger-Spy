import 'package:flutter/material.dart';
import 'package:flutter_food_app/common/boxbutton.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool isEditing = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
    void initState() {
    super.initState();
    
    nameController.text = "";
    emailController.text = "";
    passwordController.text = "";
  }

  void toggleEdit() {
    setState(() {
      isEditing = !isEditing;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("My Account", style: TextStyle(fontWeight: FontWeight.bold),),centerTitle: true,),
    body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(children: [
                    Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/images/cash 3.png") // Use actual image asset or network image
                  ),
                  
                ],
              ),
              SizedBox(height: 20),
      
              
              TextField(
                controller: nameController,
                enabled: isEditing,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
      
            
              TextField(
                controller: emailController,
                enabled: isEditing,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
      
              
              TextField(
                controller: passwordController,
                enabled: isEditing,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40),
      
              
             
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 90),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Boxbutton(text: isEditing ? 'Save Profile' : 'Edit Profile', isSelected: true, onPressed: toggleEdit, textsize: 18.0),
                  Boxbutton(text: "LogOut", isSelected: false, onPressed: (){}, textsize: 18.0),
                ],),
              )
      ],),
    ),
    );
  }
}