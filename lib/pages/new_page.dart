import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/user.dart';

class SecondPage extends StatefulWidget {
  static const id="second";
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  void _doLigin() {
    String name = nameController.text.toString().trim();
    String email = emailController.text.toString().trim();
    String phone = phoneController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    String Cpassword = ConfirmpasswordController.text.toString().trim();
    User user=User(email: email, name: name, password: password, phone: phone, Confirmpassword: Cpassword);
    print(user.toString());

  }


  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final ConfirmpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       padding: EdgeInsets.only(left: 25, right: 25,top: 50),
       child: Column(
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Icon(CupertinoIcons.arrow_left),
             ],
           ),
           SizedBox(height: 40,),
           Center(
             child: Column(
               children:const [
                 Text("Let's Get Started!",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25),),
                 Text("Log ino your xsistance account All Rokuten",style: TextStyle(color: Colors.grey),),
               ],
             ),
           ),
           SizedBox(height: 35,),
           Column(
             children: [
               TextFormField(
                 controller: nameController,
                 style: const TextStyle(
                   fontFamily: "Inter",
                   fontSize: 13,
                 ),
                 decoration: InputDecoration(
                   hintText: "Name",
                   prefixIcon: Icon(Icons.person),
                   focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(30.0)),
                       borderSide: BorderSide(color: Colors.blue)),
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(30.0)),
                       borderSide: BorderSide(color: Colors.red)),

                 ),
                 validator: (value) {
                   if (value!.isEmpty) {
                     return "Invalid email";
                   } else {
                     return null;
                   }
                 },
               ),
               SizedBox(height: 35,),
               TextFormField(
                 controller: emailController,
                 style: const TextStyle(
                   fontFamily: "Inter",
                   fontSize: 13,
                 ),
                 decoration: InputDecoration(
                   hintText: "Email",
                   prefixIcon: Icon(Icons.email),
                   focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(30.0)),
                       borderSide: BorderSide(color: Colors.blue)),
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(30.0)),
                       borderSide: BorderSide(color: Colors.red)),

                 ),
                 validator: (value) {
                   if (value!.isEmpty) {
                     return "Invalid email";
                   } else {
                     return null;
                   }
                 },
               ),
               SizedBox(height: 35,),
               TextFormField(
                 controller: phoneController,
                 style: const TextStyle(
                   fontFamily: "Inter",
                   fontSize: 13,
                 ),
                 decoration: InputDecoration(
                   hintText: "Phone",
                   prefixIcon: Icon(Icons.phone),
                   focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(30.0)),
                       borderSide: BorderSide(color: Colors.blue)),
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(30.0)),
                       borderSide: BorderSide(color: Colors.red)),

                 ),
                 validator: (value) {
                   if (value!.isEmpty) {
                     return "Invalid email";
                   } else {
                     return null;
                   }
                 },
               ),
               SizedBox(height: 35,),
               TextFormField(
                 controller: passwordController,
                 style: const TextStyle(
                   fontFamily: "Inter",
                   fontSize: 13,
                 ),
                 decoration: InputDecoration(
                   hintText: "Password",
                   prefixIcon: Icon(Icons.password),
                   focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(30.0)),
                       borderSide: BorderSide(color: Colors.blue)),
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(30.0)),
                       borderSide: BorderSide(color: Colors.red)),

                 ),
                 validator: (value) {
                   if (value!.isEmpty) {
                     return "Invalid email";
                   } else {
                     return null;
                   }
                 },
               ),
               SizedBox(height: 35,),
               TextFormField(
                 controller: ConfirmpasswordController,
                 style: const TextStyle(
                   fontFamily: "Inter",
                   fontSize: 13,
                 ),
                 decoration: InputDecoration(
                   hintText: "ConfirmPassword",
                   prefixIcon: Icon(Icons.lock),
                   focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(30.0)),
                       borderSide: BorderSide(color: Colors.blue)),
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(30.0)),
                       borderSide: BorderSide(color: Colors.red)),

                 ),
                 validator: (value) {
                   if (value!.isEmpty) {
                     return "Invalid email";
                   } else {
                     return null;
                   }
                 },
               ),
               SizedBox(height: 45,),
               Center(
                 child: SizedBox(
                   height: 50,
                   width: 230,
                   child: ElevatedButton(
                     child: const Text(
                       "Create",
                       style: TextStyle(
                           fontWeight: FontWeight.w600),
                     ),
                     onPressed:_doLigin,
                     style: ElevatedButton.styleFrom(
                         primary: Colors.indigo,
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(30))),
                   ),
                 ),
               ),
               SizedBox(height: 105,),
               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   TextButton(
                     onPressed: () {},
                     child: Center(
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text(
                             "Alredy have an account?",
                             style: TextStyle(
                                 fontSize: 14,
                                 fontWeight: FontWeight.w500,
                                 color: Colors.grey
                             ),
                           ),
                           GestureDetector(
                             onTap: (){

                             },
                             child: Text(
                               "Log in here",
                               style: TextStyle(
                                   fontSize: 14,
                                   fontWeight: FontWeight.w500,
                                   color: Colors.blue
                               ),
                             ),
                           ),


                         ],
                       ),
                     ),
                   ),

                 ],
               ),

             ],
           )
         ],
       ),
     ),
    );
  }
}
