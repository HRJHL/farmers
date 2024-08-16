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
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (_imagePath.isNotEmpty)
              Image.file(
                File(_imagePath),
                height: 200,
                fit: BoxFit.cover,
              ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _pickImage,
              child: Text('Pick Image'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent, // Use backgroundColor instead of primary
              ),
            ),
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: _contentController,
              decoration: InputDecoration(labelText: 'Content'),
              maxLines: 6,
            ),
            SizedBox(height: 16.0),
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
                backgroundColor: Colors.blueAccent, // Use backgroundColor instead of primary
              ),
            ),
          ],
        ),
      ),
    );
  }
}
