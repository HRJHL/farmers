import 'package:flutter/material.dart';

class Detect extends StatelessWidget {
  const Detect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detect1'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // TextView
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              '사진을 넣어주세요',
              style: TextStyle(
                fontFamily: 'suite', // Replace with your font asset name
                fontSize: 24, // Adjusted font size
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          // ImageView
          Container(
            width: 300, // Adjust width as needed
            height: 300, // Adjust height as needed
            child: Image.asset(
              'assets/images/pic_placeholder.png', // Replace with your image asset
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20),

          // Upload Button
          Container(
            width: 150, // Adjust button width
            height: 60, // Adjust button height
            child: ElevatedButton(
              onPressed: () {
                // Add your upload button functionality here
              },
              child: Image.asset(
                'assets/images/b_upload.png', // Replace with your image asset
                fit: BoxFit.cover,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Background color for the button
                padding: EdgeInsets.zero, // To remove default padding
              ),
            ),
          ),
          SizedBox(height: 20),

          // LinearLayout with Gallery and Camera Buttons
          Container(
            height: 120, // Adjust height to fit within the available space
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Gallery Button
                Container(
                  width: 150, // Adjust button width
                  height: 60, // Adjust button height
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your gallery button functionality here
                    },
                    child: Image.asset(
                      'assets/images/b_gallery.png', // Replace with your image asset
                      fit: BoxFit.cover,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Background color for the button
                      padding: EdgeInsets.zero, // To remove default padding
                    ),
                  ),
                ),
                SizedBox(width: 10), // Margin between gallery and camera buttons
                // Camera Button
                Container(
                  width: 150, // Adjust button width
                  height: 60, // Adjust button height
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your camera button functionality here
                    },
                    child: Image.asset(
                      'assets/images/b_camera.png', // Replace with your image asset
                      fit: BoxFit.cover,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Background color for the button
                      padding: EdgeInsets.zero, // To remove default padding
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
