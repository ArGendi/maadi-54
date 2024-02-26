import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          '404 Not found',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}