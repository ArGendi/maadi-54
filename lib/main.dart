// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_17/local/cache.dart';
import 'package:flutter_application_17/routes.dart';
import 'package:flutter_application_17/screens/home_screen.dart';
import 'package:flutter_application_17/screens/login_screen.dart';
import 'package:flutter_application_17/screens/not_found_screen.dart';
import 'package:flutter_application_17/screens/profile_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Cache.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cache.getLoggedIn() == null?  LoginScreen() : HomeScreen(),
      // onGenerateRoute: MyRoutes.generate,
    );
  }
}
