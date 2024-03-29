import 'package:flutter/material.dart';
import 'package:flutter_application_17/screens/home_screen.dart';
import 'package:flutter_application_17/screens/login_screen.dart';
import 'package:flutter_application_17/screens/not_found_screen.dart';
import 'package:flutter_application_17/screens/profile_screen.dart';

class MyRoutes{
  static Route? generate(RouteSettings settings){
    switch(settings.name){
      case "home": return MaterialPageRoute(builder: (context) => HomeScreen());
      case "/": return MaterialPageRoute(builder: (context) => LoginScreen());
      case "pro": return MaterialPageRoute(builder: (context) => ProfileScreen());
      default: return MaterialPageRoute(builder: (context) => NotFoundScreen());
    }
  }
}