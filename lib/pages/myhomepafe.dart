import 'package:flutter/material.dart';
import 'package:lesson_6_3/pages/new_page.dart';


class MyHomePage extends StatefulWidget {
  static const id = "id_home";

  Home createState() => Home();
}

class Home extends State<MyHomePage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final _key = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 80, 25, 55),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // #body
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // #app_logo
                    Container(
                      child: Image.asset("assets/images/rasm.webp",fit: BoxFit.cover,),
                      decoration: BoxDecoration(
                      ),
                    ),

                    // #segment_control
                    Container(
                      padding: const EdgeInsets.all(5),
                      height: 90.5,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.5),

                      ),
                      child:
                          Center(
                              child: Column(
                                children:const [
                                  Text("Welcom Back!",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25),),
                                  Text("Log ino your xsistance account All Rokuten",style: TextStyle(color: Colors.grey),),
                                ],
                              ),

                            ),

                    ),
                    const SizedBox(
                      height: 30,
                    ),


                    const SizedBox(
                      height: 5,
                    ),
                     TextFormField(
                        controller: emailController,
                        style: const TextStyle(
                            fontFamily: "Inter",
                            fontSize: 13,
                        ),
                       decoration: InputDecoration(
                         hintText: "Email",
                         prefixIcon: Icon(Icons.group),
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


                    const SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                        obscureText: true,
                        controller: passwordController,
                        style: const TextStyle(
                            fontFamily: "Inter",
                            fontSize: 13,
                           ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline,size: 16,),
                        hintText: "Password",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            borderSide: BorderSide(color: Colors.blue)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            borderSide: BorderSide(color: Colors.red)),

                      ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Invalid password";
                          } else {
                            return null;
                          }
                        },
                      ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:const [
                         Text(
                          "Forgot password",
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,

                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),

                    Center(
                      child: SizedBox(
                        height: 50,
                        width: 230,
                        child: ElevatedButton(
                          child: const Text(
                            "Log in ",
                            style: TextStyle(
                                fontWeight: FontWeight.w600),
                          ),
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.indigo,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "or connect user",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 17,),
                    Expanded(
                      child: Center(
                        child: SizedBox(
                          height: 40,
                          width: 150,
                          child: ElevatedButton(
                            child: const Text(
                              "FaceBook",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600),
                            ),
                            onPressed: () {
                              if (_key.currentState!.validate()) {
                                _key.currentState!.save();
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blueAccent.shade700,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: SizedBox(
                          height: 40,
                          width: 150,
                          child: ElevatedButton(
                            child: const Text(
                              "Google",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600),
                            ),
                            onPressed: () {
                              if (_key.currentState!.validate()) {
                                _key.currentState!.save();
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.redAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 17,),

                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                // #footer
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
                                "Do you have an account?",
                                   style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                     color: Colors.grey
                                   ),
                              ),
                           GestureDetector(
                             onTap: (){
                               Navigator.pushNamed(context, SecondPage.id);

                             },
                             child: Text(
                                  "Sign up",
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
            ),
          ),
        ),
      ),
    );
  }
}
