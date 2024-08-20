import 'package:flutter/material.dart';
import 'dart:io'; // Import for File handling on mobile
import 'package:image_picker/image_picker.dart'; // Import for image picking
import 'diary.dart'; // Import DiaryEntry

class Write extends StatefulWidget {
  const Write({super.key});

  @override
  _WriteState createState() => _WriteState();
}

class _WriteState extends State<Write> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  String _imagePath = '';

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imagePath = pickedFile.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Write New Entry'),
        backgroundColor: Colors.green[600], // Dark green for AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Container to hold the image preview or placeholder
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey[200], // Light grey for placeholder
                image: _imagePath.isNotEmpty
                    ? DecorationImage(
                  image: FileImage(File(_imagePath)),
                  fit: BoxFit.cover,
                )
                    : null,
              ),
              child: _imagePath.isEmpty
                  ? Center(child: Text('No image selected', textAlign: TextAlign.center))
                  : null,
            ),
            ElevatedButton(
              onPressed: _pickImage,
              child: Text('Pick Image'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[600], // Dark green for button
                foregroundColor: Colors.white, // White text color for button
                padding: EdgeInsets.symmetric(vertical: 14.0), // Adjust padding for better look
                textStyle: TextStyle(fontSize: 16.0), // Larger font size for readability
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0), // Padding inside the field
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _contentController,
              decoration: InputDecoration(
                labelText: 'Content',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0), // Padding inside the field
              ),
              maxLines: 6,
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                final title = _titleController.text;
                final content = _contentController.text;
                final date = DateTime.now().toString().split(' ')[0];
                Navigator.pop(
                  context,
                  DiaryEntry(
                    title: title,
                    date: date,
                    content: content,
                    imagePath: _imagePath.isEmpty ? null : _imagePath,
                  ),
                );
              },
              child: Text('Save'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[600], // Dark green for button
                foregroundColor: Colors.white, // White text color for button
                padding: EdgeInsets.symmetric(vertical: 14.0), // Adjust padding for better look
                textStyle: TextStyle(fontSize: 16.0), // Larger font size for readability
              ),
            ),
          ],
        ),
      ),
    );
  }
}
