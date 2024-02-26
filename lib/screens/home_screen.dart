import 'package:flutter/material.dart';
import 'package:flutter_application_17/screens/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home screen"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home, size: 50,),
            TextButton(
              onPressed: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
                Navigator.pushNamed(context, "profile");
              }, 
              child: Text("Go to profile"),
            )
          ],
        ),
      ),
    );
  }
}