import 'package:shared_preferences/shared_preferences.dart';

class Cache{
  static late SharedPreferences sharedPref;

  static Future<void> init() async{
    sharedPref = await SharedPreferences.getInstance();
  }

  static Future<void> setName(String value) async{ // Ahmed
    await sharedPref.setString("name", value);
  }

  static String? getName(){
    String? myName = sharedPref.getString("name");
    return myName;
  }

   static Future<void> setEmail(String value) async{ // abdo@gmail.com
    await sharedPref.setString("email", value);
  }

   static String? getEmail(){
    String? myEmail = sharedPref.getString("email");
    return myEmail;
  }

  static Future<void> setLoggedIn() async{
    await sharedPref.setBool("login", true);
  }

  static bool? getLoggedIn(){
    bool? value = sharedPref.getBool("login");
    return value;
  }

  static void delete(String key){
    sharedPref.remove(key);
  }

  static void deleteAll(){
    sharedPref.clear();
  }
}
