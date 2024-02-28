import 'package:flutter/material.dart';
import 'package:flutter_application_17/local/cache.dart';
import 'package:flutter_application_17/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: screenSize.width * 0.75,
          child: ElevatedButton(
            onPressed: (){
              Cache.setLoggedIn();
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
            }, 
            child: Text("Login"),
          ),
        ),
      ),
    );
  }
}