import 'package:flutter/material.dart';
import 'detect.dart';

class Select extends StatelessWidget {
  const Select({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Center(
            child: Image.asset(
              'assets/images/name.png',
              width: 200,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white, // Ensure the background color is white
      body: Center(
        child: _buildFlexItem(
          context,
          'assets/images/b_tomato.png', // Path to your custom image
          '',
              () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Detect(),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildFlexItem(
      BuildContext context,
      String imagePath, // Use imagePath instead of icon
      String label,
      VoidCallback onPressed,
      ) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 4.0,
        color: Colors.white, // Card background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0), // Rounded corners
        ),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(12.0), // Rounded corners for InkWell
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imagePath, // Use your custom image
                  width: 200, // Adjust width as needed
                  height: 200, // Adjust height as needed
                ),
                SizedBox(height: 8.0),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.green[600], // Text color
                    fontWeight: FontWeight.bold, // Bold text
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
