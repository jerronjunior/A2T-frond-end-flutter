import 'package:flutter/material.dart';
import 'log_in.dart'; // Import the LoginPage

class LaunchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Automatically navigate to LoginPage after a delay (e.g., 3 seconds)
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade900, Colors.blue.shade500], // Updated gradient
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Title
            Text(
              'A2T',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            // Subtitle
            Text(
              'Action to Talk',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Bridge the Hearing Gap',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 40),
            // Hand Image
            Image.asset(
              'assets/hand_image.png', // Ensure this image is in your assets folder
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
