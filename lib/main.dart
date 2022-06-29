import 'package:flutter/material.dart';
import 'package:lesson_6_3/pages/myhomepafe.dart';
import 'package:lesson_6_3/pages/new_page.dart';

void main(){
  runApp(Home());
}
 class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyHomePage(),
      routes: {
        SecondPage.id:(context)=>SecondPage(),
        MyHomePage.id:(context)=>MyHomePage(),
      },
    );
  }
 }