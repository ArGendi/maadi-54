import 'package:flutter/material.dart';
import 'package:flutter_application_17/local/cache.dart';
import 'package:flutter_application_17/screens/login_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${Cache.getName()}"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: (){
              Cache.deleteAll();
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
            }, 
            icon: Icon(Icons.exit_to_app),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 50,),
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: Text("Back"),
            )
          ],
        ),
      ),
    );
  }
}