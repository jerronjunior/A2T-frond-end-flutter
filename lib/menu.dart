import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1F2029),
        elevation: 0,
        title: Text('Home'),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFF1F2029), // Matches the dark theme
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Header
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF282C35),
              ),
              accountName: Text(
                "test01@gmail.com",
                style: TextStyle(color: Colors.white),
              ),
              accountEmail: Row(
                children: [
                  Icon(Icons.call, color: Colors.white70),
                  SizedBox(width: 8.0),
                  Text(
                    "00:47",
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  size: 50.0,
                  color: Colors.black,
                ),
              ),
            ),
            // Menu Options
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _buildDrawerItem(
                    context,
                    icon: Icons.home,
                    text: "Home",
                    onTap: () {
                      Navigator.pop(context); // Close the drawer
                    },
                  ),
                  _buildDrawerItem(
                    context,
                    icon: Icons.language,
                    text: "All Sign Languages",
                    onTap: () {
                      // Add navigation logic here
                      Navigator.pop(context); // Example logic
                    },
                  ),
                  _buildDrawerItem(
                    context,
                    icon: Icons.translate,
                    text: "Translator",
                    onTap: () {
                      // Add navigation logic here
                      Navigator.pop(context); // Example logic
                    },
                  ),
                  _buildDrawerItem(
                    context,
                    icon: Icons.info,
                    text: "How to Use",
                    onTap: () {
                      // Add navigation logic here
                      Navigator.pop(context); // Example logic
                    },
                  ),
                  Divider(color: Colors.white24),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 8.0),
                    child: Text(
                      "Profile",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                  _buildDrawerItem(
                    context,
                    icon: Icons.person,
                    text: "Profile",
                    onTap: () {
                      // Navigate to Profile page
                      Navigator.pop(context); // Example logic
                    },
                  ),
                  _buildDrawerItem(
                    context,
                    icon: Icons.logout,
                    text: "Logout",
                    onTap: () {
                      // Handle logout functionality
                      Navigator.pop(context); // Example logic
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF1F2029), // Matches the dark theme
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome Back!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Select an option from the menu",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(
    BuildContext context, {
    required IconData icon,
    required String text,
    required Function() onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      onTap: onTap,
    );
  }
}
