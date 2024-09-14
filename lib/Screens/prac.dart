import 'package:flutter/material.dart';

class PracScreen extends StatefulWidget {
  const PracScreen({super.key});

  @override
  State<PracScreen> createState() => _PracScreenState();
}

class _PracScreenState extends State<PracScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: ListView.builder(
      itemCount: 5,
      padding: EdgeInsets.all(10),
      itemBuilder: (context, index){
     // return const CustomTextField(Text: "Search Here", color: AppConstant.genColor, icon: Icon(Icons.search));
              
    })



    );
  }
}




// GridTile(
                      
//                        child:  Padding(
//                       padding: const EdgeInsets.all(13.0),
//                       child: Image.asset(item.imageUrl, fit:  BoxFit.contain,  ),
                    
//                     ),
                    
//                   footer: GridTileBar(
//                     backgroundColor: AppConstant.genColor,
//                     title: Text(item.title, style: TextStyle(color: Colors.black),),
//                     subtitle: Text(item.Price.toString(), style: TextStyle(color: Colors.black),),
//                     trailing: IconButton(onPressed: (){
//                       setState(() {
//                         itemsProvider.toggleFavorite(item);
//                       });
//                     },
//                      icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border,
//                     color: isFavorite ? AppConstant.appMainColor : Colors.black,)
//                     ),
//                   ),
//                   ),


// import 'package:flutter/material.dart';

// class CustomBox extends StatelessWidget {
//   const CustomBox({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 95,
      
//       decoration:  BoxDecoration(
//         color: Colors.cyanAccent,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(children: [
//           Image.asset("assets/images/cash 4.png"),
          
//          const Padding(
//             padding: const EdgeInsets.only(left: 25, top: 8),
//             child: Column( crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//               Text("Debit Card", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
//               Text("5267 **** 3642 ****",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
//             ],),
//           )
//         ],),
//       ),
//     );
//   }
// }    return TextButton(
     
      
// import 'package:flutter/material.dart';

// class MyAccountPage extends StatefulWidget {
//   @override
//   _MyAccountPageState createState() => _MyAccountPageState();
// }

// class _MyAccountPageState extends State<MyAccountPage> {
//   bool isEditing = false;
//   TextEditingController nameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     // Initialize with some default values
//     nameController.text = "John Doe";
//     emailController.text = "john.doe@example.com";
//     passwordController.text = "password123";
//   }

//   void toggleEdit() {
//     setState(() {
//       isEditing = !isEditing;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Account'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             // Editable picture
//             Stack(
//               children: [
//                 CircleAvatar(
//                   radius: 50,
//                   backgroundImage: AssetImage('assets/profile_placeholder.png'), // Use actual image asset or network image
//                 ),
//                 Positioned(
//                   bottom: 0,
//                   right: 0,
//                   child: IconButton(
//                     icon: Icon(Icons.edit),
//                     onPressed: () {
//                       // Implement picture change logic
//                     },
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(height: 20),

//             // Editable Name
//             TextField(
//               controller: nameController,
//               enabled: isEditing,
//               decoration: InputDecoration(
//                 labelText: 'Name',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 20),

//             // Editable Email
//             TextField(
//               controller: emailController,
//               enabled: isEditing,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 20),

//             // Editable Password
//             TextField(
//               controller: passwordController,
//               enabled: isEditing,
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 40),

//             // Edit Profile Button
//             ElevatedButton(
//               onPressed: toggleEdit,
//               child: Text(isEditing ? 'Save Profile' : 'Edit Profile'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
