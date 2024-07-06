import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            // Image widget
            Image.asset(
              'assets/Images/logo.jpg', // Replace with your image asset path
              height: 40, // Adjust the height as needed
            ),
            SizedBox(width: 10), // Add some space between the image and text
            // App name
            Text('Your App Name'),
          ],
        ),
      ),
      body: Center(
        child: Text('Hello, World!'),
      ),
    );
  }
}
