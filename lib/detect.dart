import 'package:flutter/material.dart';

class Detect extends StatelessWidget {
  const Detect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detect1'),
        backgroundColor: Colors.green[600], // Fresh green color for AppBar
      ),
      backgroundColor: Colors.white, // White background for a clean look
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // TextView
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                '사진을 넣어주세요',
                style: TextStyle(
                  fontSize: 24, // Adjusted font size
                  color: Colors.black,
                  fontWeight: FontWeight.bold, // Bold font for emphasis
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // ImageView
            Container(
              width: 200, // Adjusted width to make image smaller
              height: 200, // Adjusted height to make image smaller
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0), // Rounded corners
                border: Border.all(color: Colors.grey[300]!), // Light border color
                color: Colors.grey[100], // Light background color for placeholder
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0), // Rounded corners
                child: Image.asset(
                  'assets/images/pic_placeholder.png', // Replace with your image asset
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Upload Button
            Container(
              width: double.infinity, // Make button width responsive
              height: 60, // Fixed height for button
              child: ElevatedButton(
                onPressed: () {
                  // Add your upload button functionality here
                },
                child: Image.asset(
                  'assets/images/b_upload.png', // Replace with your image asset
                  fit: BoxFit.cover,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[600], // Green background color
                  padding: EdgeInsets.zero, // Remove default padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0), // Rounded corners
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            // LinearLayout with Gallery and Camera Buttons
            Container(
              height: 120, // Fixed height for button row
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space buttons evenly
                children: [
                  // Gallery Button
                  Container(
                    width: 150, // Fixed width for button
                    height: 60, // Fixed height for button
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your gallery button functionality here
                      },
                      child: Image.asset(
                        'assets/images/b_gallery.png', // Replace with your image asset
                        fit: BoxFit.cover,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[600], // Green background color
                        padding: EdgeInsets.zero, // Remove default padding
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0), // Rounded corners
                        ),
                      ),
                    ),
                  ),
                  // Camera Button
                  Container(
                    width: 150, // Fixed width for button
                    height: 60, // Fixed height for button
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your camera button functionality here
                      },
                      child: Image.asset(
                        'assets/images/b_camera.png', // Replace with your image asset
                        fit: BoxFit.cover,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[600], // Green background color
                        padding: EdgeInsets.zero, // Remove default padding
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0), // Rounded corners
                        ),
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
