import 'package:flutter/material.dart';
import 'package:flutter_application_17/local/cache.dart';
import 'package:flutter_application_17/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            Text(
              "Good morning, ${Cache.getName()}",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Icon(Icons.home, size: 50,),
            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
                //Navigator.pushNamed(context, "pro");
              }, 
              child: Text("Go to profile"),
            )
          ],
        ),
      ),
    );
  }
}