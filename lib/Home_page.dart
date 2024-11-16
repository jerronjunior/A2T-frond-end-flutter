import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            // Add functionality for menu button if needed
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout, color: Colors.white),
            onPressed: () {
              // Add functionality for logout button if needed
            },
          ),
        ],
      ),
      backgroundColor: Color(0xFF1F2029), // Background color
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36.0, // Increased font size
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Welcome Back!',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20.0, // Slightly larger subtitle
              ),
            ),
            SizedBox(height: 40.0),
            Expanded(
              child: ListView(
                children: [
                  // First Button
                  GestureDetector(
                    onTap: () {
                      // Navigate to Real-Time Detection page
                    },
                    child: Container(
                      height: 150.0, // Increased button height
                      padding: EdgeInsets.all(16.0),
                      margin: EdgeInsets.only(bottom: 24.0),
                      decoration: BoxDecoration(
                        color: Color(0xFF44D4C0),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.access_time, color: Colors.black, size: 60.0), // Larger icon
                          SizedBox(width: 16.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Real-Time Sign Language Detection',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0, // Larger title text
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  'from A to Y',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16.0, // Increased font size for subtitle
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Second Button
                  GestureDetector(
                    onTap: () {
                      // Navigate to Text to Voice Sign Language page
                    },
                    child: Container(
                      height: 150.0, // Increased button height
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Color(0xFFB18AE0),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.mic, color: Colors.black, size: 60.0), // Larger icon
                          SizedBox(width: 16.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Text to Voice Sign Language',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0, // Larger title text
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  'Add letters and convert it to speech',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16.0, // Increased font size for subtitle
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
