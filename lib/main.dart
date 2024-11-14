import 'package:flutter/material.dart';
import 'launch.dart'; // Ensure this import points to your `launch.dart` file

void main() {
  runApp(SignLanguageRecognitionApp());
}

class SignLanguageRecognitionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sign Language Recognition',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LaunchPage(),
    );
  }
}
