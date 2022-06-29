import 'dart:convert';

import 'package:lesson_6_3/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Prefs{


  //for user
   static storeUser(User user)async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    String stringUser=jsonEncode(user);
    prefs.setString('user', stringUser);
   }

   static Future<User?>loadUser()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    String? stringUser=prefs.getString("user");
    if(stringUser==null){
      return null;
    }
    Map<String,dynamic>map=jsonDecode(stringUser);
    return User.fromJson(map);
   }

   static Future<bool>removeUser()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.remove('user');
   }
}